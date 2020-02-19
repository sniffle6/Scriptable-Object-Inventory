using System;
using UnityEngine;

[System.Serializable]
public class InventorySlot
{
    public ItemType[] AllowedItems = new ItemType[0];
    
    [System.NonSerialized]
    public UserInterface parent;
    [System.NonSerialized]
    public GameObject slotDisplay;

    
    [System.NonSerialized]
    public Action<InventorySlot> onAfterUpdated;
    [System.NonSerialized]
    public Action<InventorySlot> onBeforeUpdated;
    
    public Item item;
    public int amount;

    public ItemObject GetItemObject()
    {
        return item.Id >= 0 ? parent.inventory.database.ItemObjects[item.Id] : null;
    }

    public InventorySlot() => UpdateSlot(new Item(), 0);

    public InventorySlot(Item item, int amount) => UpdateSlot(item, amount);

    public void RemoveItem() => UpdateSlot(new Item(), 0);

    public void AddAmount(int value) => UpdateSlot(item, amount += value);


    public void UpdateSlot(Item itemValue, int amountValue)
    {
        onBeforeUpdated?.Invoke(this);
        item = itemValue;
        amount = amountValue;
        onAfterUpdated?.Invoke(this);
    }

    public bool CanPlaceInSlot(ItemObject itemObject)
    {
        if (AllowedItems.Length <= 0 || itemObject == null || itemObject.data.Id < 0)
            return true;
        for (int i = 0; i < AllowedItems.Length; i++)
        {
            if (itemObject.type == AllowedItems[i])
                return true;
        }
        return false;
    }

}
