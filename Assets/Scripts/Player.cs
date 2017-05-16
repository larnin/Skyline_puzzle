using System.Collections;
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
            case "SizeUp":
                if (size == 1)
                {
                    transform.localScale = new Vector3(2, 2, 1);
                    size = 2;
                }
                else if (size == 0)
                {
                    transform.localScale = new Vector3(1, 1, 1);
                    size = 1;
                }
                break;

            case "SizeLess":
                if (size == 1)
                {
                    transform.localScale = new Vector3(0.4f, 0.4f, 1);
                    size = 0;
                }
                else if (size == 2)
                {
                    transform.localScale = new Vector3(1, 1, 1);
                    size = 1;
                }

                break;


            default:

                break;
        }
    }
}
