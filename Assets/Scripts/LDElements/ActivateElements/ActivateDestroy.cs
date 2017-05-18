using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateDestroy : ActivatedElement {
    public override void Activate()
    {
        Destroy(gameObject);
    }
}
