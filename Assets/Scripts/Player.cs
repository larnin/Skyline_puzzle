using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{

    Rigidbody rigidbody;

    public float AcceleratorDrag = 1f;
    public float DecceleratorDrag = 6f;
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
