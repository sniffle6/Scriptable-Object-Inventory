using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Chest : MonoBehaviour
{
    public bool generated = false;
    public bool open;
    public ItemObject[] itemsInChest;
    public List<Item> generatedItems = new List<Item>();
    public InventoryObject chestData;
    public DynamicInterface chestUi;

    private void OnTriggerEnter(Collider other)
    {
        var newArray = new InventorySlot[itemsInChest.Length];
       // chestData.GetSlots = newArray;
        StartCoroutine(WaitOneFrame());
    }
    IEnumerator WaitOneFrame()
    {
        yield return new WaitForSeconds(0.2f);

        open = true;
        UpdateChestData();
        chestUi.gameObject.SetActive(true);
    }
    private void OnTriggerExit(Collider other)
    {
        open = false;
        chestUi.slotsOnInterface.Clear();
        chestData.Clear();
        foreach (Transform child in chestUi.transform)
        {
            GameObject.Destroy(child.gameObject);
        }
        chestUi.gameObject.SetActive(false);
    }
    private void UpdateChestData()
    {
        // Debug.Log(chestData.Container.Items.Length);
        if (generated)
        {
            for (int i = 0; i < generatedItems.Count; i++)
            {
                chestData.AddItem(generatedItems[i], 1);
            }
            return;
        }
        for (int i = 0; i < itemsInChest.Length; i++)
        {
            Item item = new Item(itemsInChest[i]);
            chestData.AddItem(item, 1);
            generatedItems.Add(item);
        }
        generated = true;
    }
    private void Update()
    {
        if (!chestUi.isActiveAndEnabled || !open)
            return;
        for (int i = 0; i < generatedItems.Count; i++)
        {
            bool found = false;
            for (int j = 0; j < chestData.GetSlots.Length; j++)
            {
                if(generatedItems[i] == chestData.GetSlots[j].item)
                {
                    found = true;
                }
            }
            if(found == false)
            {
                generatedItems.Remove(generatedItems[i]);
            }
        }
       
    }
    private void OnApplicationQuit()
    {
        chestData.Clear();
    }
}