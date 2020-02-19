using System;
using UnityEngine;

[Serializable]
public class ItemBuff : IModifiers
{
    public Attributes stat;
    public int value;
    [SerializeField]
    private int min;   //buff min value roll
    public int Min => min;
    [SerializeField]
    private int max;   //buff max value roll
    public int Max => max;
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
