using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class BoneCombiner
{
    private readonly Dictionary<int, Transform> _rootBoneDictionary = new Dictionary<int, Transform>();
    private readonly Transform[] _boneTransforms = new Transform[67];
    private readonly Transform _transform;
    private const string ArmatureString = "armature";

    public BoneCombiner(GameObject rootObj)
    {
        _transform = rootObj.transform;
        TraverseHierarchy(_transform);
    }

    public Transform AddLimb(GameObject bonedObj, List<string> boneNames)
    {
        var limb = ProcessBonedObject(bonedObj.GetComponentInChildren<SkinnedMeshRenderer>(), boneNames);
        limb.SetParent(_transform);

        return limb;
    }


    private Transform ProcessBonedObject(SkinnedMeshRenderer renderer, List<string> boneNames)
    {
        /*      Create the SubObject        */
        var bonedObject = new GameObject().transform;


        /*      Add the renderer        */
        var meshRenderer = bonedObject.gameObject.AddComponent<SkinnedMeshRenderer>();


        /*      Assemble Bone Structure     */
        for (var i = 0; i < boneNames.Count; i++)
        {
            _boneTransforms[i] = _rootBoneDictionary[boneNames[i].GetHashCode()];
        }


        /*      Assemble Renderer       */
        meshRenderer.bones = _boneTransforms;
        meshRenderer.sharedMesh = renderer.sharedMesh;
        meshRenderer.materials = renderer.sharedMaterials;

        return bonedObject;
    }


    private void TraverseHierarchy(Transform root)
    {
        foreach (Transform child in root)
        {
            if (child.CompareTag(ArmatureString))
                _rootBoneDictionary.Add(child.name.GetHashCode(), child);
            TraverseHierarchy(child);
        }
    }
}


/*

    public Transform AddLimb(GameObject bonedObj)
    {
        var bonedObjects = bonedObj.GetComponentInChildren<SkinnedMeshRenderer>();

        //var limbTransform = new GameObject(bonedObj.name).transform;
        //limbTransform.SetParent(_transform);

        //foreach (var skinnedRenderer in bonedObjects)
        //{
            var limb = ProcessBonedObject(bonedObjects);
            limb.SetParent(_transform);
        //}

        return limb;
    }
*/