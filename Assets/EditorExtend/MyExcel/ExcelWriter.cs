#if UNITY_EDITOR
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.IO;

public class ExcelWriter
{
    //private string _path;
    private ExcelPackage _package;
    private Dictionary<string, WriteExcelNode> _nodes = new Dictionary<string, WriteExcelNode>();

    public ExcelWriter(string path)
    {
        //_path = path;
        FileInfo info = new FileInfo(path);
        if (info.Exists)
        {
            info.Delete();
            info = new FileInfo(path);
        }
        _package = new ExcelPackage(info);
    }

    public WriteExcelNode SheetNode(string c_name, string s_name)
    {
        if (!_nodes.ContainsKey(c_name)) _nodes.Add(c_name, new WriteExcelNode(c_name, s_name, _package.Workbook.Worksheets.Add(c_name)));
        return _nodes[c_name];
    }

    public void Save()
    {
        _package.Save();
    }
}

public class WriteExcelNode
{
    private Dictionary<string, int> _id = new Dictionary<string, int>();                //记录所有id的行
    private Dictionary<string, int> _tabel1 = new Dictionary<string, int>();            //记录tabel的列
    private Dictionary<string, int> _tabel2 = new Dictionary<string, int>();            //记录tabel的列
    private ExcelWorksheet _sheet;
    private string _c_name;
    private string _s_name;

    public WriteExcelNode(string c_name, string s_name, ExcelWorksheet sheet)
    {
        _sheet = sheet;
        _c_name = c_name;
        _s_name = s_name;

        sheet.SetValue(ExcelUtils.NameRow, ExcelUtils.NameColumn, _c_name);
        sheet.SetValue(ExcelUtils.NameRow + 1, ExcelUtils.NameColumn, _s_name);
    }

    public void WriteTabel(string c_name, string s_name, string type, string explain = "")
    {
        if (_tabel1.ContainsKey(c_name)) throw new Exception("表" + _c_name + "tabel重复：" + c_name);
        var column = ExcelUtils.TabelColumn + _tabel1.Count;
        _sheet.SetValue(ExcelUtils.TabelRow, column, c_name);
        _sheet.SetValue(ExcelUtils.TabelRow + 1, column, s_name);
        _sheet.SetValue(ExcelUtils.TabelRow + 2, column, type);
        _sheet.SetValue(ExcelUtils.TabelRow - 1, column, explain);

        if (!string.IsNullOrEmpty(c_name)) _tabel1.Add(c_name, column);
        if (!string.IsNullOrEmpty(s_name)) _tabel2.Add(s_name, column);
    }

    public void SetValue1(string id, string tabel, string value)
    {
        if (!_tabel1.ContainsKey(tabel)) throw new Exception("表" + _c_name + "tabel不存在：" + tabel);
        int row = ExcelUtils.ValueRow + _id.Count;
        if (_id.ContainsKey(id)) row = _id[id];
        else
        {
            _sheet.SetValue(row, ExcelUtils.ValueColumn, id);
            _id.Add(id, row);
        }
        _sheet.SetValue(row, _tabel1[tabel], value);
    }

    public void SetValue2(string id, string tabel, string value)
    {
        if (!_tabel2.ContainsKey(tabel)) throw new Exception("表" + _c_name + "tabel不存在：" + tabel);
        int row = ExcelUtils.ValueRow + _id.Count;
        if (_id.ContainsKey(id)) row = _id[id];
        else
        {
            _sheet.SetValue(row, ExcelUtils.ValueColumn, id);
            _id.Add(id, row);
        }
        _sheet.SetValue(row, _tabel2[tabel], value);
    }
}
#endif