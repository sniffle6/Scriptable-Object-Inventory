using System;
using System.Collections.Generic;
using UnityEngine;

public delegate void ModifiedEvent();
[Serializable]
public class ModifiableInt
{
    [SerializeField]
    int baseValue;
    public int BaseValue { get { return baseValue; } set { baseValue = value; UpdateModifiedValue(); } }
    public int ModifiedValue { get; private set; }
    public event ModifiedEvent ValueModified;
    public ModifiableInt(ModifiedEvent method = null)
    {
        ModifiedValue = baseValue;
        if (method != null)
            ValueModified += method;
    }

    public List<IModifiers> modifiers = new List<IModifiers>();
    public void RegisterModEvent(ModifiedEvent method)
    {
        ValueModified += method;
    }
    public void UnregisterModEvent(ModifiedEvent method)
    {
        ValueModified -= method;
    }
    public void UpdateModifiedValue()
    {
        var valueToAdd = 0;
        for (int i = 0; i < modifiers.Count; i++)
        {
            modifiers[i].AddValue(ref valueToAdd);
        }
        ModifiedValue = baseValue + valueToAdd;
        if (ValueModified != null)
        {
            ValueModified.Invoke();
        }
    }

    public void AddModifier(IModifiers modifier)
    {
        modifiers.Add(modifier);
        UpdateModifiedValue();
    }
    public void RemoveModifier(IModifiers modifier)
    {
        modifiers.Remove(modifier);
        UpdateModifiedValue();
    }
}