using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class CardManager: BaseManager<CardManager>
{
    private Dictionary<string, Sprite> cardSpriteDictionary = new Dictionary<string, Sprite>();
    // 加载 Resources 文件夹内指定路径下的卡牌 sprite 资源
    public Dictionary<string, Sprite> LoadCardSprites(string cardResourcesPath)
    {
        Sprite[] cardSprites = Resources.LoadAll<Sprite>(cardResourcesPath);

        foreach (Sprite sprite in cardSprites)
        {
            // 使用 sprite 的名称作为键，将 sprite 添加到字典中
            cardSpriteDictionary[sprite.name] = sprite;
        }
        return cardSpriteDictionary;
    }
    // 通过名称获取卡牌 sprite
    public Sprite GetCardSpriteByName(string cardName, Dictionary<string, Sprite> cardSpriteDictionary)
    {
        if (cardSpriteDictionary.ContainsKey(cardName))
        {
            return cardSpriteDictionary[cardName];
        }
        else
        {
            Debug.LogError("Card sprite with name " + cardName + " not found.");
            return null;
        }
    }
}
