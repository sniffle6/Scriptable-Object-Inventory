using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CreateAssetMenu(fileName = "New Item Database", menuName = "Inventory System/Items/Database")]
public class ItemDatabaseObject : ScriptableObject
{
    public ItemObject[] ItemObjects;

    public void OnValidate()
    {
        for (int i = 0; i < ItemObjects.Length; i++)
        {
            ItemObjects[i].data.Id = i;
        }
    }

}
