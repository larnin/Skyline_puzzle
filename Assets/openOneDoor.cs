using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class openOneDoor : ActivatedElement
{

    public GameObject door;

    public override void Activate()
    {
        door.SetActive(false);
    }

}