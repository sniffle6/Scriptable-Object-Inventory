using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerStats : MonoBehaviour
{
    
    public Attribute[] attributes;
    public Attribute Agility => attributes[0];
    
    private InventoryObject _equipment;

    private void Start()
    {
        _equipment = GetComponent<Player>().equipment;
        
        for (int i = 0; i < attributes.Length; i++)
        {
            attributes[i].SetParent(this);
        }

        for (int i = 0; i < _equipment.GetSlots.Length; i++)
        {
            _equipment.GetSlots[i].onBeforeUpdated += OnRemoveItem;
            _equipment.GetSlots[i].onAfterUpdated += OnEquipItem;
        }
    }
    
    public void AttributeModified(Attribute attribute)
    {
        //Debug.Log(string.Concat(attribute.type, " was updated! Value is now ", attribute.value.ModifiedValue));
    }
    
     public void OnRemoveItem(InventorySlot slot)
    {
        if (slot.GetItemObject() == null)
            return;
        switch (slot.parent.inventory.type)
        {
            case InterfaceType.Inventory:
                print("Removed " + slot.GetItemObject() + " on: " + slot.parent.inventory.type + ", Allowed items: " +
                      string.Join(", ", slot.AllowedItems));
                break;
            
            case InterfaceType.Equipment:
             //    print("Removed " + slot.GetItemObject() + " on: " + slot.parent.inventory.type + ", Allowed items: " +
              //          string.Join(", ", slot.AllowedItems));
                for (int i = 0; i < slot.item.buffs.Length; i++)
                {
                    for (int j = 0; j < attributes.Length; j++)
                    {
                        if (attributes[j].type == slot.item.buffs[i].stat)
                            attributes[j].value.RemoveModifier(slot.item.buffs[i]);
                    }
                }
                break;
            
            case InterfaceType.Chest:
                print("Removed " + slot.GetItemObject() + " on: " + slot.parent.inventory.type + ", Allowed items: " +
                      string.Join(", ", slot.AllowedItems));
                break;
            default:
                break;
        }
    }

    public void OnEquipItem(InventorySlot slot)
    {
        if (slot.GetItemObject() == null)
            return;
        switch (slot.parent.inventory.type)
        {
            case InterfaceType.Inventory:
                print("Placed " + slot.GetItemObject() + " on: " + slot.parent.inventory.type + ", Allowed items: " +
                      string.Join(", ", slot.AllowedItems));
                break;
            
            case InterfaceType.Equipment:
                // print("Placed " + _slot.GetItemObject() + " on: " + _slot.parent.inventory.type + ", Allowed items: " +
                //      string.Join(", ", _slot.AllowedItems));
                for (int i = 0; i < slot.item.buffs.Length; i++)
                {
                    for (int j = 0; j < attributes.Length; j++)
                    {
                        if (attributes[j].type == slot.item.buffs[i].stat)
                            attributes[j].value.AddModifier(slot.item.buffs[i]);
                    }
                }
                break;
            
            case InterfaceType.Chest:
                print("Placed " + slot.GetItemObject() + " on: " + slot.parent.inventory.type + ", Allowed items: " +
                      string.Join(", ", slot.AllowedItems));
                break;
            
            default:
                break;
        }
    }
}
