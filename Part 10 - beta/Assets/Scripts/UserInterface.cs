using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using System.Linq;
using System;

[RequireComponent(typeof(EventTrigger))]
public abstract class UserInterface : MonoBehaviour
{
    public InventoryObject inventory;
    private InventoryObject _previousInventory;
    public Dictionary<GameObject, InventorySlot> slotsOnInterface = new Dictionary<GameObject, InventorySlot>();

    public void OnEnable()
    {
        CreateSlots();
        for (int i = 0; i < inventory.GetSlots.Length; i++)
        {
            inventory.GetSlots[i].parent = this;
            inventory.GetSlots[i].onAfterUpdated += OnSlotUpdate;
        }
        AddEvent(gameObject, EventTriggerType.PointerEnter, delegate { OnEnterInterface(gameObject); });
        AddEvent(gameObject, EventTriggerType.PointerExit, delegate { OnExitInterface(gameObject); });
    }

    public abstract void CreateSlots();

    public void UpdateInventoryLinks()
    {
        int i = 0;
        foreach (var key in slotsOnInterface.Keys.ToList())
        {
            slotsOnInterface[key] = inventory.GetSlots[i];
            i++;
        }
    }

    public void OnSlotUpdate(InventorySlot slot)
    {
        if (slot.item.Id <= -1)
        {
            slot.slotDisplay.transform.GetChild(0).GetComponent<Image>().sprite = null;
            slot.slotDisplay.transform.GetChild(0).GetComponent<Image>().color = new Color(1, 1, 1, 0);
            slot.slotDisplay.GetComponentInChildren<TextMeshProUGUI>().text = string.Empty;
        }
        else
        {
            slot.slotDisplay.transform.GetChild(0).GetComponent<Image>().sprite = slot.GetItemObject().uiDisplay;
            slot.slotDisplay.transform.GetChild(0).GetComponent<Image>().color = new Color(1, 1, 1, 1);
            slot.slotDisplay.GetComponentInChildren<TextMeshProUGUI>().text = slot.amount == 1 ? string.Empty : slot.amount.ToString("n0");
        }
    }
    public void Update()
    {
        if (_previousInventory != inventory)
        {
            UpdateInventoryLinks();
        }
        _previousInventory = inventory;

    }
    protected void AddEvent(GameObject obj, EventTriggerType type, UnityAction<BaseEventData> action)
    {
        EventTrigger trigger = obj.GetComponent<EventTrigger>();
        if (!trigger) { Debug.LogWarning("No EventTrigger component found!"); return; }
        var eventTrigger = new EventTrigger.Entry {eventID = type};
        eventTrigger.callback.AddListener(action);
        trigger.triggers.Add(eventTrigger);
    }

    public void OnEnter(GameObject obj)
    {
        MouseData.slotHoveredOver = obj;
    }
    public void OnEnterInterface(GameObject obj)
    {
        MouseData.interfaceMouseIsOver = obj.GetComponent<UserInterface>();
    }
    public void OnExitInterface(GameObject obj)
    {
        MouseData.interfaceMouseIsOver = null;
    }

    public void OnExit(GameObject obj)
    {
        MouseData.slotHoveredOver = null;
    }

    public void OnDragStart(GameObject obj)
    {
        MouseData.tempItemBeingDragged = CreateTempItem(obj);
    }
    private GameObject CreateTempItem(GameObject obj)
    {
        GameObject tempItem = null;
        if (slotsOnInterface[obj].item.Id >= 0)
        {
            tempItem = new GameObject();
            var rt = tempItem.AddComponent<RectTransform>();
            rt.sizeDelta = new Vector2(50, 50);
            tempItem.transform.SetParent(transform.parent.parent);
            var img = tempItem.AddComponent<Image>();
            img.sprite = slotsOnInterface[obj].GetItemObject().uiDisplay;
            img.raycastTarget = false;
        }
        return tempItem;
    }
    public void OnDragEnd(GameObject obj)
    {

        Destroy(MouseData.tempItemBeingDragged);

        if (MouseData.interfaceMouseIsOver == null)
        {
            slotsOnInterface[obj].RemoveItem();
            return;
        }
        if (MouseData.slotHoveredOver)
        {
            InventorySlot mouseHoverSlotData = MouseData.interfaceMouseIsOver.slotsOnInterface[MouseData.slotHoveredOver];
            inventory.SwapItems(slotsOnInterface[obj], mouseHoverSlotData);
        }
    }

    public void OnDrag(GameObject obj)
    {
        if (MouseData.tempItemBeingDragged != null)
            MouseData.tempItemBeingDragged.GetComponent<RectTransform>().position = Input.mousePosition;
    }
}
