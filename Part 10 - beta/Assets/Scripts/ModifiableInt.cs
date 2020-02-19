using System;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class ModifiableInt
{
    [SerializeField]
    private int _baseValue;
    public int BaseValue
    {
        get => _baseValue;
        set
        {
            _baseValue = value;
            UpdateModifiedValue();
        }
    }
    
    [SerializeField]
    private int _modifiedValue;
    public int ModifiedValue
    {
        get => _modifiedValue;
        private set => _modifiedValue = value;
    }

    private event Action ValueModified;
    
    private List<IModifiers> _modifiers = new List<IModifiers>();

    public ModifiableInt(Action method = null)
    {
        ModifiedValue = _baseValue;
        if (method != null)
            ValueModified += method;
    }


    public void RegisterModEvent(Action method)
    {
        ValueModified += method;
    }

    public void UnregisterModEvent(Action method)
    {
        ValueModified -= method;
    }

    private void UpdateModifiedValue()
    {
        var valueToAdd = 0;
        for (int i = 0; i < _modifiers.Count; i++)
        {
            _modifiers[i].AddValue(ref valueToAdd);
        }
        ModifiedValue = _baseValue + valueToAdd;
        ValueModified?.Invoke();

    }

    public void AddModifier(IModifiers modifier)
    {
        _modifiers.Add(modifier);
        UpdateModifiedValue();
    }

    public void RemoveModifier(IModifiers modifier)
    {
        _modifiers.Remove(modifier);
        UpdateModifiedValue();
    }
}