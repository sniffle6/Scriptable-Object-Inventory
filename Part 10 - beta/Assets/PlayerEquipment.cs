using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerEquipment : MonoBehaviour
{
    private InventoryObject _equipment;
    
    [Header("Equip Transforms")]
    [SerializeField]private Transform offhandWristTransform;
    [SerializeField]private Transform offhandHandTransform;
    [SerializeField]private Transform weaponTransform;
    
    private BoneCombiner _boneCombiner;
    private Transform _pants;
    private Transform _gloves;
    private Transform _boots;
    private Transform _chest;
    private Transform _helmet;
    private Transform _offhand;
    private Transform _sword;


    void Start()
    {
        _equipment = GetComponent<Player>().equipment;
        
        _boneCombiner = new BoneCombiner(gameObject);

        for (int i = 0; i < _equipment.GetSlots.Length; i++)
        {
            _equipment.GetSlots[i].onBeforeUpdated += OnRemoveItem;
            _equipment.GetSlots[i].onAfterUpdated += OnEquipItem;
        }
    }

    private void OnEquipItem(InventorySlot slot)
    {
        var itemObject = slot.GetItemObject();
        if (itemObject == null)
            return;
        switch (slot.parent.inventory.type)
        {
            case InterfaceType.Equipment:

                if (itemObject.characterDisplay != null)
                {
                    switch (slot.AllowedItems[0])
                    {
                        case ItemType.Gloves:
                            _gloves = _boneCombiner.AddLimb(itemObject.characterDisplay, itemObject.boneNames);
                            break;

                        case ItemType.Boots:
                            _boots = _boneCombiner.AddLimb(itemObject.characterDisplay, itemObject.boneNames);
                            break;

                        case ItemType.Chest:
                            _chest = _boneCombiner.AddLimb(itemObject.characterDisplay, itemObject.boneNames);
                            break;

                        case ItemType.Pants:
                            _pants = _boneCombiner.AddLimb(itemObject.characterDisplay, itemObject.boneNames);
                            break;

                        case ItemType.Helmet:
                            _helmet = _boneCombiner.AddLimb(itemObject.characterDisplay, itemObject.boneNames);
                            break;

                        case ItemType.shield:
                            switch (itemObject.type)
                            {
                                case ItemType.shield:
                                    _offhand = Instantiate(itemObject.characterDisplay, offhandWristTransform)
                                        .transform;
                                    break;
                                case ItemType.Sword:
                                    _offhand = Instantiate(itemObject.characterDisplay, offhandHandTransform)
                                        .transform;
                                    break;
                            }

                            break;

                        case ItemType.Sword:
                            _sword = Instantiate(itemObject.characterDisplay, weaponTransform).transform;

                            break;
                    }
                }

                break;
        }
    }

    private void OnRemoveItem(InventorySlot slot)
    {
        if (slot.GetItemObject() == null)
            return;
        switch (slot.parent.inventory.type)
        {
            case InterfaceType.Equipment:
                if (slot.GetItemObject().characterDisplay != null)
                {
                    switch (slot.AllowedItems[0])
                    {
                        case ItemType.Gloves:
                            Destroy(_gloves.gameObject);
                            break;
                        
                        case ItemType.Boots:
                            Destroy(_boots.gameObject);
                            break;
                        
                        case ItemType.Chest:
                            Destroy(_chest.gameObject);
                            break;
                        
                        case ItemType.Pants:
                            Destroy(_pants.gameObject);
                            break;
                        
                        case ItemType.Helmet:
                            Destroy(_helmet.gameObject);
                            break;
                        
                        case ItemType.shield:
                            Destroy(_offhand.gameObject);
                            break;
                        
                        case ItemType.Sword:
                            Destroy(_sword.gameObject);
                            break;
                    }
                }

                break;
        }
    }
}