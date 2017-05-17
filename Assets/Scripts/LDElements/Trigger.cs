using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger : MonoBehaviour {

    public GameObject ActivatedElement;


    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("WormholeIn"))
        {
            transform.position = other.gameObject.GetComponent<WormholeIn>().WormholeOut.transform.position;
        }
    }
}
