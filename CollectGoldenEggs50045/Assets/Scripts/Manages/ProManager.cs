using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UnityEngine;
public class ProManager: BaseManager<ProManager>
{
    private Dictionary<string, Sprite> proSpriteDictionary = new Dictionary<string, Sprite>();
    // 加载 Resources 文件夹内指定路径下的卡牌 sprite 资源
    public Dictionary<string, Sprite> LoadProSprites(string proResourcesPath)
    {
        Sprite[] proSprites = Resources.LoadAll<Sprite>(proResourcesPath);

        foreach (Sprite sprite in proSprites)
        {
            // 使用 sprite 的名称作为键，将 sprite 添加到字典中
            proSpriteDictionary[sprite.name] = sprite;
        }
        return proSpriteDictionary;
    }
    // 通过名称获取卡牌 sprite
    public Sprite GetProSpriteByName(string proName, Dictionary<string, Sprite> cardSpriteDictionary)
    {
        if (proSpriteDictionary.ContainsKey(proName))
        {
            return proSpriteDictionary[proName];
        }
        else
        {
            Debug.LogError("Card sprite with name " + proName + " not found.");
            return null;
        }
    }
    public Dictionary<string, Sprite> SortDictionary(Dictionary<string, Sprite> originalDictionary)
    {
        // 使用 LINQ 按照键的字母顺序对原始字典进行排序
/*        var sortedDictionary = originalDictionary.OrderBy(entry => entry.Key)
                                               .ToDictionary(entry => entry.Key, entry => entry.Value);*/
        // 使用 LINQ 按照键的数字大小进行排序
        var sortedDictionary = originalDictionary.OrderBy(entry => int.Parse(entry.Key))
                                               .ToDictionary(entry => entry.Key, entry => entry.Value);

        return sortedDictionary;
        return sortedDictionary;
    }
}
