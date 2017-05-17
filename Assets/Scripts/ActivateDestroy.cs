using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateDestroy : ActivatedElement {
    public override void Activate()
    {
        Destroy(gameObject);
    }

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
