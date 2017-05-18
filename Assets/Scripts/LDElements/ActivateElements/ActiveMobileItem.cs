using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

class ActiveMobileItem : ActivatedElement
{
    bool activated = false;

    public override void Activate()
    {
        activated = !activated;
    }

    public Vector3[] MovementList;
    Vector3 StartPosition;
    Vector3 MyPos;
    Vector3 NewPos;
    int i = 0;
    float journeyLength;
    float distCovered;
    float fracJourney;
    float StartTime;
    float DeltaTime;
    public float MoveSpeed;
    public bool ShouldBacktrack;

    // Use this for initialization
    void Start()
    {
        StartPosition = transform.position;
        NewPos = StartPosition;
        MyPos = transform.position;
        StartCoroutine(Move());
    }

    IEnumerator Move()
    {
        NewPos = MyPos + MovementList[i];
        DeltaTime = 0;
        journeyLength = Vector3.Distance(transform.position, NewPos);
        while (transform.position != NewPos)
        {
            if (!activated)
            {
                yield return new WaitForEndOfFrame();
                continue;
            }
            DeltaTime += Time.deltaTime;
            distCovered = DeltaTime * MoveSpeed;
            fracJourney = distCovered / journeyLength;
            transform.position = Vector3.Lerp(MyPos, NewPos, fracJourney);
            yield return new WaitForEndOfFrame();
        }
        MyPos = transform.position;
        if (i == MovementList.Length - 1)
        {
            if (ShouldBacktrack)
            {
                StartCoroutine(MoveBack());
            }
            else
            {
                transform.position = StartPosition;
                MyPos = StartPosition;
                i = 0;
                StartCoroutine(Move());
            }
        }
        else
        {
            i++;
            StartCoroutine(Move());
        }
    }

    IEnumerator MoveBack()
    {
        NewPos = MyPos - MovementList[i];
        DeltaTime = 0;
        journeyLength = Vector3.Distance(transform.position, NewPos);
        while (transform.position != NewPos)
        {
            if (!activated)
            {
                yield return new WaitForEndOfFrame();
                continue;
            }
            DeltaTime += Time.deltaTime;
            distCovered = DeltaTime * MoveSpeed;
            fracJourney = distCovered / journeyLength;
            transform.position = Vector3.Lerp(MyPos, NewPos, fracJourney);
            yield return new WaitForEndOfFrame();
        }
        MyPos = transform.position;
        if (i == 0)
        {
            StartCoroutine(Move());
        }
        else
        {
            i--;
            StartCoroutine(MoveBack());
        }
    }
}
