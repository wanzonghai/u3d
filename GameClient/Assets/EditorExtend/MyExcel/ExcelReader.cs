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
    /// 读取excel表构造
    /// </summary>
    /// <param name="path">需要读取的目录</param>
    /// <param name="showMS">是否需要打印时间</param>
    /// <param name="containCN">是否需要包含中文</param>
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
            UnityEngine.Debug.LogError("表格内容异常 Paht:" + path + "  Exception:" + exc.Message);
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

    //获取单个sheet
    public ReadExcelNode SheetNode1(string name)
    {
        foreach (var node in _nodes1)
        {
            if (node.Name == name) return node;
        }
        throw new Exception("文件" + _path + "不存在表 " + name);
    }

    //获取一组sheet
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
    /// 记录所有id的行
    /// </summary> 
    /// <typeparam name="string">ID</typeparam>
    /// <typeparam name="int">ID所在的行数</typeparam>
    private Dictionary<string, int> _id = new Dictionary<string, int>();

    /// <summary>
    /// 记录tabel的列
    /// </summary>
    /// <typeparam name="string">列字段名</typeparam>
    /// <typeparam name="int">列字段名所在的列</typeparam>
    private Dictionary<string, int> _tabel = new Dictionary<string, int>();

    /// <summary>
    /// 记录所有tabel的类型
    /// </summary> 
    /// <typeparam name="string">列字段名</typeparam>
    /// <typeparam name="string[]">每一列对应的类型(支持多个类型)</typeparam>
    private Dictionary<string, string[]> _type = new Dictionary<string, string[]>();

    /// <summary>
    /// 所有列的描述
    /// </summary>
    /// <typeparam name="string">列字段名</typeparam>
    /// <typeparam name="string">每一列对应的描述文本（无实际作用）</typeparam>
    private Dictionary<string, string> _desc = new Dictionary<string, string>();

    /// <summary>
    /// 所有的ID列表
    /// </summary>
    private string[] _idList;

    private ExcelWorksheet _sheet;

    /// <summary>
    ///表名
    /// </summary>
    private string _name;

    private string _fileType = "F:" + ExcelUtils.LanguageType;
    private string _fileCNType = "F:cn";
    private Dictionary<string, int> _tabelCN = new Dictionary<string, int>();           //记录CN地区tabel的列
    private Dictionary<string, string[]> _typeCN = new Dictionary<string, string[]>();  //记录所有tabel的类型

    /// <summary>
    /// 文件路径
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
            if (keyCount > 1)                                                //合并key
            {
                for (int j = 1; j < keyCount; j++)
                {
                    obj = _sheet.GetValue(i, ExcelUtils.ValueColumn + j);
                    if (obj == null) break;
                    id += ("|" + obj.ToString());
                }
            }
            if (string.IsNullOrEmpty(id)) break;
            else if (_id.ContainsKey(id)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的id " + id);
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
                        if (t == null) throw new Exception("表地址" + _path + " 表头" + _name + "缺少数据类型");
                        string[] types = t.ToString().Split('|');
                        var areaType = GetAreaType(types);
                        if (string.IsNullOrEmpty(areaType))
                        {
                            if (_tabel.ContainsKey(s1)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的tabel " + s1);
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
                                if (_tabel.ContainsKey(s1)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的tabel " + s1);
                                _type.Add(s1, types);
                                _tabel.Add(s1, i);

                                var desc = _sheet.GetValue(t1Row - 1, i);
                                if (desc != null)
                                    _desc.Add(s1, desc.ToString());
                            }
                            if (containCN && areaType == _fileCNType)
                            {
                                if (_tabelCN.ContainsKey(s1)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的tabel " + s1);
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
                        if (t == null) throw new Exception("表地址" + _path + " 表头" + _name + "缺少数据类型");
                        string[] types = t.ToString().Split('|');
                        var areaType = GetAreaType(types);
                        if (string.IsNullOrEmpty(areaType))
                        {
                            if (_tabel.ContainsKey(s2)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的tabel " + s2);
                            _type.Add(s2, types);
                            _tabel.Add(s2, i);
                        }
                        else
                        {
                            if (areaType == _fileType)
                            {
                                if (_tabel.ContainsKey(s2)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的tabel " + s2);
                                _type.Add(s2, types);
                                _tabel.Add(s2, i);
                            }
                            if (containCN && areaType == _fileCNType)
                            {
                                if (_tabelCN.ContainsKey(s2)) throw new Exception("表地址" + _path + " 表头" + _name + "存在相同的tabel " + s2);
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

    //1 CN地区 2当前地区
    private string GetAreaType(string[] types)
    {
        foreach (var type in types)
        {
            if (type.StartsWith("F:")) return type;
        }
        return null;
    }

    /// <summary>
    /// 通过ID和字段名读取对应的值
    /// </summary>
    public SheetValue GetValue(string id, string tabel)
    {
        if (!_tabel.ContainsKey(tabel))
        {
            throw new Exception("表地址" + _path + " 表头" + _name + "没有table " + tabel);
        }
        return new SheetValue(this, _sheet.GetValue(_id[id], _tabel[tabel]), _name, id, GetType(tabel), _id[id], _tabel[tabel]);
    }

    /// <summary>
    /// 通过ID和字段名读取对应的值（CN）
    /// </summary>
    public SheetValue GetValueCN(string id, string tabel)
    {
        if (!_tabelCN.ContainsKey(tabel))
        {
            throw new Exception("表地址" + _path + " 表头" + _name + "没有table " + tabel);
        }
        return new SheetValue(this, _sheet.GetValue(_id[id], _tabelCN[tabel]), _name, id, GetType(tabel), _id[id], _tabelCN[tabel]);
    }

    /// <summary>
    /// 通过ID和字段名返回对应的值(找不到的时候返回无值状态的SheetValue)
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
    /// 获取字段的数据类型
    /// </summary>
    public string[] GetType(string tabel)
    {
        return _type[tabel];
    }

    /// <summary>
    /// 表格ID是否包含id
    /// </summary>
    public bool ContainsId(string id)
    {
        if (_id.ContainsKey(id)) return true;
        else return false;
    }

    /// <summary>
    /// 表格是否包含字段名table
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
    /// 构造函数
    /// </summary>
    /// <param name="node">工作表sheet的实例</param>
    /// <param name="value">对应行列格子的值</param>
    /// <param name="name">表名</param>
    /// <param name="id">ID</param>
    /// <param name="type">格子对应列的类型</param>
    /// <param name="row">行</param>
    /// <param name="column">列</param>
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