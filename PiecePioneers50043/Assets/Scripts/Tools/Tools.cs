using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class Tools:BaseManager<Tools>
{
    public string GetRandom(string[] arr)
    {
        Random ran = new Random();
        int n = ran.Next(arr.Length - 1);
        return arr[n];
    }

    public int GetRandomInt(int minNum, int maxNum )
    {
        Random ran = new Random();
        return ran.Next(minNum, maxNum);
    }

    //
    public IList<IList<int>> MergeSimilarItems(int[][] items1, int[][] items2)
    {
        IDictionary<int, int> dictionary = new Dictionary<int, int>();
        foreach (int[] v in items1)
        {
            dictionary.TryAdd(v[0], 0);
            dictionary[v[0]] += v[1];
        }
        foreach (int[] v in items2)
        {
            dictionary.TryAdd(v[0], 0);
            dictionary[v[0]] += v[1];
        }

        IList<IList<int>> res = new List<IList<int>>();
        foreach (KeyValuePair<int, int> kv in dictionary)
        {
            int k = kv.Key, v = kv.Value;
            res.Add(new List<int> { k, v });
        }
        ((List<IList<int>>)res).Sort((a, b) => a[0] - b[0]);
        return res;
    }

    public static List<int> GenerateRandomUniqueData(int minValue, int maxValue, int count)
    {
        if (count > (maxValue - minValue + 1) || count <= 0)
        {
            throw new ArgumentException("Invalid count or range");
        }

        List<int> data = Enumerable.Range(minValue, maxValue - minValue + 1).ToList();
        List<int> randomData = new List<int>();

        Random random = new Random();

        for (int i = 0; i < count; i++)
        {
            int index = random.Next(data.Count);
            randomData.Add(data[index]);
            data.RemoveAt(index);
        }

        return randomData;
    }
}