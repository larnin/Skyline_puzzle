﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    new Rigidbody rigidbody;

    public float AcceleratorDrag = 1f;
    public float DecceleratorDrag = 6f;
    int size = 1;
    float BaseDrag;

    void Awake()
    {
        G.Sys.player = this;
        rigidbody = GetComponent<Rigidbody>();
        BaseDrag = rigidbody.drag;
    }

	void Start ()
    {
		
	}
	
	void Update ()
    {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        
        switch (other.tag)
        {
            case "Accelerator":
                rigidbody.drag = AcceleratorDrag;
                break;
            case "Deccelerator":
                rigidbody.drag = DecceleratorDrag;
                break;
            case "AntiGravity":
                rigidbody.drag = 0f;
                rigidbody.useGravity = false;
                break;
            case "End":
                Event<EndLevelEvent>.Broadcast(new EndLevelEvent());
                break;
            case "KillGrid":
                Event<PlayerDieEvent>.Broadcast(new PlayerDieEvent());
                break;
            case "WormholeIn":
                transform.position = other.gameObject.GetComponent<WormholeIn>().WormholeOut.transform.position;
                break;
            case "SizeUp":
                transform.localScale = new Vector3(2, 2, 1);
                break;
            case "SizeLess":
                transform.localScale = new Vector3(0.4f, 0.4f, 1);
                break;
            case "SizeMiddle":
                transform.localScale = new Vector3(1, 1, 1);
                break;
            case "Trigger":
                other.gameObject.GetComponent<Trigger>().ActivatedElement.GetComponent<ActivatedElement>().Activate();
                break;
            default:
                break;
        }

    }

    private void OnTriggerExit(Collider other)
    {
        switch (other.tag)
        {
            case "Accelerator":
            case "Deccelerator":
            case "AntiGravity":
                rigidbody.drag = BaseDrag;
                rigidbody.useGravity = true; 
                break;
            

            default:

                break;
        }
    }
}
