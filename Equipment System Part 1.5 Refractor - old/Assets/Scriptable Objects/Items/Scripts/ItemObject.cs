using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ItemType
{
    Food,
    Helmet,
    Chest,
    Boots,
    Sword,
    Shield,
    Default
}

public enum Attributes
{
    Agility,
    Intellect,
    Stamina,
    Strength
}

[CreateAssetMenu(fileName = "New Item", menuName = "Inventory System/Items/New Item")]
public class ItemObject : ScriptableObject
{
    public Sprite uiDisplay;
    public bool stackable;
    public ItemType type;
    [TextArea(15, 20)]
    public string description;
    public Item data = new Item();

    public Item CreateItem()
    {
        Item newItem = new Item(this);
        return newItem;
    }
}

[System.Serializable]
public class Item
{
    public string Name;
    public int Id = -1;
    public ItemBuff[] buffs;
    public Item()
    {
        Name = "";
        Id = -1;
    }
    public Item(ItemObject item)
    {
        Name = item.name;
        Id = item.data.Id;
        buffs = new ItemBuff[item.data.buffs.Length];
        for (int i = 0; i < buffs.Length; i++)
        {
            buffs[i] = new ItemBuff(item.data.buffs[i].min, item.data.buffs[i].max);
        }
    }
}

[Serializable]
public class ItemBuff : IModifiers
{
    public Attributes stat;
    public int value;
    public int min;   //buff min value roll
    public int max;   //buff max value roll
    public ItemBuff(int _min, int _max)
    {
        min = _min;
        max = _max;
        GenerateField();
    }

    public void AddValue(ref int v)
    {
        v += value;
    }

    public void GenerateField()
    {
        value = UnityEngine.Random.Range(min, max);
    }
}
