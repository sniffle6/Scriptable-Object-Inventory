[System.Serializable]
public class Attribute
{
    [System.NonSerialized]
    public PlayerStats parent;
    public Attributes type;
    public ModifiableInt value;
    public void SetParent(PlayerStats _parent)
    {
        parent = _parent;
        value = new ModifiableInt(AttributeModified);
    }
    public void AttributeModified()
    {
        parent.AttributeModified(this);
    }
}