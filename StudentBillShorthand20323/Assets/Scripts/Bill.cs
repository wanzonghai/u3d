using System;

[System.Serializable]
public class Bill
{
    public string title;
    public float amount;
    public string category;
    public DateTime date;

    public Bill(string title, float amount, string category, DateTime date)
    {
        this.title = title;
        this.amount = amount;
        this.category = category;
        this.date = date;
    }
}
