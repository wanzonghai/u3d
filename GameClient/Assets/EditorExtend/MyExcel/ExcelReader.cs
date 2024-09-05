#if UNITY_EDITOR
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

public class ExcelReader
{
    private string _fileType = "F:" + ExcelUtils.LanguageType;
    private string _path;
    private ExcelWorksheets _sheets;
    private List<ReadExcelNode> _nodes1 = new List<ReadExcelNode>();
    private List<ReadExcelNode> _nodes2 = new List<ReadExcelNode>();

    private ExcelPackage _package;

    /// <summary>
    /// ��ȡexcel����
    /// </summary>
    /// <param name="path">��Ҫ��ȡ��Ŀ¼</param>
    /// <param name="showMS">�Ƿ���Ҫ��ӡʱ��</param>
    /// <param name="containCN">�Ƿ���Ҫ��������</param>
	public ExcelReader(string path, bool showMS = false, bool containCN = false)
    {
        _path = path;

        if (showMS) UnityEngine.Debug.Log("StartReaderExcel: " + path);
        Stopwatch sw = new Stopwatch();
        sw.Start();
        FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
        _package = new ExcelPackage(fs);
        try
        {
            _sheets = _package.Workbook.Worksheets;
        }
        catch (Exception exc)
        {
            UnityEngine.Debug.LogError("��������쳣 Paht:" + path + "  Exception:" + exc.Message);
        }
        sw.Stop();
        if (showMS) UnityEngine.Debug.Log(path + string.Format(" total: {0} ms", sw.ElapsedMilliseconds));
        fs.Dispose();

        foreach (var sheet in _sheets)
        {
            var put = false;
            var obj = sheet.GetValue(ExcelUtils.NameRow - 1, ExcelUtils.NameColumn);
            if (obj == null) put = true;
            else
            {
                string name = obj.ToString();
                if (string.IsNullOrEmpty(name) || _fileType == name) put = true;
            }
            if (put)
            {
                var obj1 = sheet.GetValue(ExcelUtils.NameRow, ExcelUtils.NameColumn);
                if (obj1 != null)
                {
                    string name1 = obj1.ToString();
                    if (!string.IsNullOrEmpty(name1))
                    {
                        _nodes1.Add(new ReadExcelNode(path, name1, sheet, true, containCN));
                    }
                }
                var obj2 = sheet.GetValue(ExcelUtils.NameRow + 1, ExcelUtils.NameColumn);
                if (obj2 != null)
                {
                    string name2 = obj2.ToString();
                    if (!string.IsNullOrEmpty(name2))
                    {
                        _nodes2.Add(new ReadExcelNode(path, name2, sheet, false, containCN));
                    }
                }
            }
        }
    }

    //��ȡ����sheet
    public ReadExcelNode SheetNode1(string name)
    {
        foreach (var node in _nodes1)
        {
            if (node.Name == name) return node;
        }
        throw new Exception("�ļ�" + _path + "�����ڱ� " + name);
    }

    //��ȡһ��sheet
    public List<ReadExcelNode> SheetNodes1(string name)
    {
        List<ReadExcelNode> nodes = new List<ReadExcelNode>();
        foreach (var node in _nodes1)
        {
            if (node.Name == name) nodes.Add(node);
        }
        return nodes;
    }

    public void Save()
    {
        _package.Save();
    }

    public void SaveAs(string path)
    {
        FileInfo fs = new FileInfo(path);
        _package.SaveAs(fs);
    }

    public List<ReadExcelNode> Nodes1 { get { return _nodes1; } }
    public List<ReadExcelNode> Nodes2 { get { return _nodes2; } }
    public string Path { get { return _path; } }

    public void Destroy() { if (_package != null) _package.Dispose(); }
}

public class ReadExcelNode
{
    /// <summary>
    /// ��¼����id����
    /// </summary> 
    /// <typeparam name="string">ID</typeparam>
    /// <typeparam name="int">ID���ڵ�����</typeparam>
    private Dictionary<string, int> _id = new Dictionary<string, int>();

    /// <summary>
    /// ��¼tabel����
    /// </summary>
    /// <typeparam name="string">���ֶ���</typeparam>
    /// <typeparam name="int">���ֶ������ڵ���</typeparam>
    private Dictionary<string, int> _tabel = new Dictionary<string, int>();

    /// <summary>
    /// ��¼����tabel������
    /// </summary> 
    /// <typeparam name="string">���ֶ���</typeparam>
    /// <typeparam name="string[]">ÿһ�ж�Ӧ������(֧�ֶ������)</typeparam>
    private Dictionary<string, string[]> _type = new Dictionary<string, string[]>();

    /// <summary>
    /// �����е�����
    /// </summary>
    /// <typeparam name="string">���ֶ���</typeparam>
    /// <typeparam name="string">ÿһ�ж�Ӧ�������ı�����ʵ�����ã�</typeparam>
    private Dictionary<string, string> _desc = new Dictionary<string, string>();

    /// <summary>
    /// ���е�ID�б�
    /// </summary>
    private string[] _idList;

    private ExcelWorksheet _sheet;

    /// <summary>
    ///����
    /// </summary>
    private string _name;

    private string _fileType = "F:" + ExcelUtils.LanguageType;
    private string _fileCNType = "F:cn";
    private Dictionary<string, int> _tabelCN = new Dictionary<string, int>();           //��¼CN����tabel����
    private Dictionary<string, string[]> _typeCN = new Dictionary<string, string[]>();  //��¼����tabel������

    /// <summary>
    /// �ļ�·��
    /// </summary>
    private string _path;
    public ReadExcelNode(string path, string name, ExcelWorksheet sheet, bool tabel1, bool containCN = false)
    {
        _path = path;
        _sheet = sheet;
        _name = name;
        var keyCount = KeyCount;
        for (int i = ExcelUtils.ValueRow; ; i++)
        {
            var obj = _sheet.GetValue(i, ExcelUtils.ValueColumn);
            if (obj == null) break;
            string id = obj.ToString();
            if (keyCount > 1)                                                //�ϲ�key
            {
                for (int j = 1; j < keyCount; j++)
                {
                    obj = _sheet.GetValue(i, ExcelUtils.ValueColumn + j);
                    if (obj == null) break;
                    id += ("|" + obj.ToString());
                }
            }
            if (string.IsNullOrEmpty(id)) break;
            else if (_id.ContainsKey(id)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��id " + id);
            else _id.Add(id, i);
        }
        var t1Row = ExcelUtils.TabelRow;
        var t2Row = ExcelUtils.TabelRow + 1;
        for (int i = ExcelUtils.TabelColumn; ; i++)
        {
            bool pass = false;
            var t1 = _sheet.GetValue(t1Row, i);
            if (t1 != null)
            {
                string s1 = t1.ToString();
                if (!string.IsNullOrEmpty(s1))
                {
                    if (tabel1)
                    {
                        var t = _sheet.GetValue(ExcelUtils.TypeRow, i);
                        if (t == null) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "ȱ����������");
                        string[] types = t.ToString().Split('|');
                        var areaType = GetAreaType(types);
                        if (string.IsNullOrEmpty(areaType))
                        {
                            if (_tabel.ContainsKey(s1)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��tabel " + s1);
                            _type.Add(s1, types);
                            _tabel.Add(s1, i);

                            var desc = _sheet.GetValue(t1Row - 1, i);
                            if (desc != null)
                                _desc.Add(s1, desc.ToString());
                        }
                        else
                        {
                            if (areaType == _fileType)
                            {
                                if (_tabel.ContainsKey(s1)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��tabel " + s1);
                                _type.Add(s1, types);
                                _tabel.Add(s1, i);

                                var desc = _sheet.GetValue(t1Row - 1, i);
                                if (desc != null)
                                    _desc.Add(s1, desc.ToString());
                            }
                            if (containCN && areaType == _fileCNType)
                            {
                                if (_tabelCN.ContainsKey(s1)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��tabel " + s1);
                                _typeCN.Add(s1, types);
                                _tabelCN.Add(s1, i);
                            }
                        }
                    }
                    pass = true;
                }
            }
            var t2 = _sheet.GetValue(t2Row, i);
            if (t2 != null)
            {
                string s2 = t2.ToString();
                if (!string.IsNullOrEmpty(s2))
                {
                    if (!tabel1)
                    {
                        var t = _sheet.GetValue(ExcelUtils.TypeRow, i);
                        if (t == null) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "ȱ����������");
                        string[] types = t.ToString().Split('|');
                        var areaType = GetAreaType(types);
                        if (string.IsNullOrEmpty(areaType))
                        {
                            if (_tabel.ContainsKey(s2)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��tabel " + s2);
                            _type.Add(s2, types);
                            _tabel.Add(s2, i);
                        }
                        else
                        {
                            if (areaType == _fileType)
                            {
                                if (_tabel.ContainsKey(s2)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��tabel " + s2);
                                _type.Add(s2, types);
                                _tabel.Add(s2, i);
                            }
                            if (containCN && areaType == _fileCNType)
                            {
                                if (_tabelCN.ContainsKey(s2)) throw new Exception("���ַ" + _path + " ��ͷ" + _name + "������ͬ��tabel " + s2);
                                _typeCN.Add(s2, types);
                                _tabelCN.Add(s2, i);
                            }
                        }
                    }
                    pass = true;
                }
            }
            var t3 = _sheet.GetValue(ExcelUtils.TypeRow, i);
            if (t3 != null)
            {
                if (!string.IsNullOrEmpty(t3.ToString())) pass = true;
            }
            if (!pass) break;
        }
    }

    public int KeyCount
    {
        get
        {
            int result = 1;
            var obj = _sheet.GetValue(ExcelUtils.KeyRow, ExcelUtils.KeyColumn);
            if (obj == null) return result;
            int.TryParse(obj.ToString(), out result);
            return result;
        }
        set { _sheet.SetValue(ExcelUtils.KeyRow, ExcelUtils.KeyColumn, "1"); }
    }

    //1 CN���� 2��ǰ����
    private string GetAreaType(string[] types)
    {
        foreach (var type in types)
        {
            if (type.StartsWith("F:")) return type;
        }
        return null;
    }

    /// <summary>
    /// ͨ��ID���ֶ�����ȡ��Ӧ��ֵ
    /// </summary>
    public SheetValue GetValue(string id, string tabel)
    {
        if (!_tabel.ContainsKey(tabel))
        {
            throw new Exception("���ַ" + _path + " ��ͷ" + _name + "û��table " + tabel);
        }
        return new SheetValue(this, _sheet.GetValue(_id[id], _tabel[tabel]), _name, id, GetType(tabel), _id[id], _tabel[tabel]);
    }

    /// <summary>
    /// ͨ��ID���ֶ�����ȡ��Ӧ��ֵ��CN��
    /// </summary>
    public SheetValue GetValueCN(string id, string tabel)
    {
        if (!_tabelCN.ContainsKey(tabel))
        {
            throw new Exception("���ַ" + _path + " ��ͷ" + _name + "û��table " + tabel);
        }
        return new SheetValue(this, _sheet.GetValue(_id[id], _tabelCN[tabel]), _name, id, GetType(tabel), _id[id], _tabelCN[tabel]);
    }

    /// <summary>
    /// ͨ��ID���ֶ������ض�Ӧ��ֵ(�Ҳ�����ʱ�򷵻���ֵ״̬��SheetValue)
    /// </summary>
    public SheetValue GetTryValue(string id, string tabel)
    {
        if (!_tabel.ContainsKey(tabel))
        {
            return new SheetValue(this, null, _name, id, new string[] { "str" }, 0, 0);
        }
        return new SheetValue(this, _sheet.GetValue(_id[id], _tabel[tabel]), _name, id, GetType(tabel), _id[id], _tabel[tabel]);
    }

    /// <summary>
    /// ��ȡ�ֶε���������
    /// </summary>
    public string[] GetType(string tabel)
    {
        return _type[tabel];
    }

    /// <summary>
    /// ���ID�Ƿ����id
    /// </summary>
    public bool ContainsId(string id)
    {
        if (_id.ContainsKey(id)) return true;
        else return false;
    }

    /// <summary>
    /// ����Ƿ�����ֶ���table
    /// </summary>
    public bool ContainsTable(string table)
    {
        if (_tabel.ContainsKey(table)) return true;
        else return false;
    }

    public string[] Ids
    {
        get
        {
            if (_idList == null)
            {
                List<string> list = new List<string>();
                foreach (var i in _id.Keys)
                {
                    list.Add(i);
                }
                _idList = list.ToArray();
            }
            return _idList;
        }
    }

    public string[] Tables
    {
        get
        {
            List<string> list = new List<string>();
            foreach (var i in _tabel.Keys)
            {
                list.Add(i);
            }
            return list.ToArray();
        }
    }
    public Dictionary<string, int> DictTable
    {
        get { return this._tabel; }
    }
    public Dictionary<string, int> DictIds
    {
        get { return this._id; }
    }
    public Dictionary<string, string> DictDesc
    {
        get { return this._desc; }
    }
    public string Name { get { return _name; } }
    public string Path { get { return _path; } }
    public ExcelWorksheet Sheet { get { return _sheet; } }
}

public class SheetValue
{
    public ReadExcelNode Node;
    public string Value;
    public string Name;
    public string Id;
    public int Row;
    public int Column;
    public string[] Type;

    /// <summary>
    /// ���캯��
    /// </summary>
    /// <param name="node">������sheet��ʵ��</param>
    /// <param name="value">��Ӧ���и��ӵ�ֵ</param>
    /// <param name="name">����</param>
    /// <param name="id">ID</param>
    /// <param name="type">���Ӷ�Ӧ�е�����</param>
    /// <param name="row">��</param>
    /// <param name="column">��</param>
    public SheetValue(ReadExcelNode node, object value, string name, string id, string[] type, int row, int column)
    {
        Node = node;
        Id = id;
        if (value == null) Value = "";
        else Value = value.ToString();

        Type = type;
        Name = name;
        Row = row;
        Column = column;
    }

    public void SetValue(string value)
    {
        Node.Sheet.SetValue(Row, Column, value);
    }

    public void Clear()
    {
        Node.Sheet.Cells[Row, Column].Clear();
    }
}
#endif