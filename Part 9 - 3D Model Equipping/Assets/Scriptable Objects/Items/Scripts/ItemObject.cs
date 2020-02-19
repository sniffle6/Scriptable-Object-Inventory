using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ItemType 
{
    Food,
    Helmet,
    Weapon,
    Shield,
    Boots,
    Chest,
    Default
}

public enum Attributes
{
    Agility,
    Intellect,
    Stamina,
    Strength
}
[CreateAssetMenu(fileName = "New Item", menuName = "Inventory System/Items/item")]
public class ItemObject : ScriptableObject
{

    public Sprite uiDisplay;
    public GameObject characterDisplay;
    public bool stackable;
    public ItemType type;
    [TextArea(15, 20)]
    public string description;
    public Item data = new Item();
    
    public List<string> boneNames = new List<string>();

    public Item CreateItem()
    {
        Item newItem = new Item(this);
        return newItem;
    }


    private void OnValidate()
    {
        boneNames.Clear();
        if(characterDisplay == null)
            return;
        if(!characterDisplay.GetComponent<SkinnedMeshRenderer>())
            return;

        var renderer = characterDisplay.GetComponent<SkinnedMeshRenderer>();
        var bones = renderer.bones;

        foreach (var t in bones)
        {
            boneNames.Add(t.name);
        }

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
            buffs[i] = new ItemBuff(item.data.buffs[i].min, item.data.buffs[i].max)
            {
                attribute = item.data.buffs[i].attribute
            };
        }
    }
}

[System.Serializable]
public class ItemBuff : IModifier
{
    public Attributes attribute;
    public int value;
    public int min;
    public int max;
    public ItemBuff(int _min, int _max)
    {
        min = _min;
        max = _max;
        GenerateValue();
    }

    public void AddValue(ref int baseValue)
    {
        baseValue += value;
    }

    public void GenerateValue()
    {
        value = UnityEngine.Random.Range(min, max);
    }
}