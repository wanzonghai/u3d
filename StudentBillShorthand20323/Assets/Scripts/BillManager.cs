using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BillManager : MonoBehaviour
{
    public GameObject PopLoad;
    public GameObject PopTips;
    public Text TipsText;
    public InputField titleInput;
    public InputField amountInput;
    public InputField categoryInput;

    public GameObject billItemPrefab;
    public Transform itemListParent;

    private List<Bill> bills = new List<Bill>();

    private void Start()
    {
        // 在应用启动时加载账单数据
        LoadBills();
        PopLoad.SetActive(true);
        StartCoroutine(ClosePop());
    }
    private IEnumerator ClosePop()
    {
        yield return new WaitForSeconds(2.0f);
        if (PopLoad.activeSelf)
        {
            PopLoad.SetActive(false);
        }
        if (PopTips.activeSelf)
        {
          
            PopTips.SetActive(false);
        }

    }
    public void AddBill()
    {
        string title = titleInput.text.Trim();
        string amountText = amountInput.text.Trim();
        string category = categoryInput.text.Trim();

        // 检查输入框是否为空
        if (string.IsNullOrEmpty(title) || string.IsNullOrEmpty(amountText) || string.IsNullOrEmpty(category))
        {
            UpdateTips("Please enter full billing information");
            return;
        }

        float amount;
        if (!float.TryParse(amountText, out amount))
        {
            UpdateTips("Invalid amount format");
            
            return;
        }

        DateTime date = DateTime.Now;

        Bill newBill = new Bill(title, amount, category, date);
        bills.Add(newBill);

        ClearInputField();

        CreateBillItem(newBill);
        // 保存账单数据到本地
        SaveBills();

    }
    void ClearInputField()
    {
        // 清空输入框
        titleInput.text = "";
        amountInput.text = "";
        categoryInput.text = "";
    }
    void CreateBillItem(Bill bill)
    {
        // 实例化一个新的账单项预制体
        GameObject billItem = Instantiate(billItemPrefab, itemListParent);

        // 获取账单项的 Text 组件
        Text billItemText = billItem.GetComponent<Text>();

        // 将账单信息以中文形式显示
        billItemText.text = $"billing：{bill.title} - amount：{bill.amount} - category：{bill.category}";

        // 获取账单项的删除按钮，并为其添加点击事件
        Button deleteButton = billItem.GetComponentInChildren<Button>();
        deleteButton.onClick.AddListener(() => DeleteBill(bill));

    }

    public void DeleteBill(Bill bill)
    {
        bills.Remove(bill);
        UpdateDisplay();
    }

    void UpdateDisplay()
    {
        // 清空显示列表
        foreach (Transform child in itemListParent)
        {
            Destroy(child.gameObject);
        }

        // 重新生成显示列表
        foreach (Bill bill in bills)
        {
            CreateBillItem(bill);
        }
    }

    void UpdateTips(string tipsMessges)
    {
        ClearInputField();
        PopTips.SetActive(true);
        TipsText.text = tipsMessges;
        StartCoroutine(ClosePop());
    }

    void LoadBills()
    {
        // 从本地加载账单数据
        string json = PlayerPrefs.GetString("bills", "");

        if (!string.IsNullOrEmpty(json))
        {
            bills = JsonUtility.FromJson<List<Bill>>(json);
        }
    }
    void SaveBills()
    {
        // 将账单数据转换为 JSON 格式并保存到本地
        string json = JsonUtility.ToJson(bills);
        PlayerPrefs.SetString("bills", json);
        PlayerPrefs.Save();
    }
}
