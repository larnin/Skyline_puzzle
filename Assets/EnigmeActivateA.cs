using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnigmeActivateA : ActivatedElement
{

    GameObject[] lesA;
    private bool turned = false;


    // Update is called once per frame
    void Start () {
        lesA = GameObject.FindGameObjectsWithTag("A");
    }




    public override void Activate()
    {

        foreach (GameObject e in lesA)
        {
            e.SetActive(turned);
        }



        turned = !turned;

    }

}
