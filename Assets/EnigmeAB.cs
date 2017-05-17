using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnigmeAB : ActivatedElement {

    GameObject[] lesA;
    GameObject[] lesB;

    bool turned = true;


    // Use this for initialization
    void Start () {
        lesA = GameObject.FindGameObjectsWithTag("A");
        lesB = GameObject.FindGameObjectsWithTag("B");


        foreach(GameObject e in lesB)
        {
            e.SetActive(false);
        }
    }

    public override void Activate()
    {

        foreach (GameObject e in lesB)
        {
            e.SetActive(turned);
        }

        foreach (GameObject e in lesA)
        {
            e.SetActive(!turned);
        }

        turned = !turned;
        
    }

}
