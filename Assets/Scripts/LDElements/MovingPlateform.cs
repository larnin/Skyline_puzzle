using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPlateform : MonoBehaviour {

    public Vector3[] MovementList;
    Vector3 StartPosition;
    Vector3 MyPos;
    Vector3 NewPos;
    int i = 0;
    float journeyLength;
    float distCovered;
    float fracJourney;
    float StartTime;
    public float MoveSpeed;
    public bool ShouldBacktrack;

    // Use this for initialization
    void Start () {
        StartPosition = transform.position;
        NewPos = StartPosition;
        MyPos = transform.position;
        StartCoroutine(Move());
    }
	
	// Update is called once per frame
	void Update () {
       /* if (NewPos == StartPosition)
        {
            MyPos = transform.position;
            StartCoro*/
	}

    IEnumerator Move()
    {
        NewPos = MyPos + MovementList[i];
        StartTime = Time.time;
        journeyLength = Vector3.Distance(transform.position, NewPos);
        while (transform.position != NewPos)
        {
            distCovered = (Time.time - StartTime) * MoveSpeed;
            fracJourney = distCovered / journeyLength;
            transform.position = Vector3.Lerp(MyPos, NewPos, fracJourney);
            yield return new WaitForEndOfFrame();
        }
        MyPos = transform.position;
        if (i == MovementList.Length -1)
        {
            if (ShouldBacktrack)
            {
                Debug.Log("hein");
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
        StartTime = Time.time;
        journeyLength = Vector3.Distance(transform.position, NewPos);
        while (transform.position != NewPos)
        {
            distCovered = (Time.time - StartTime) * MoveSpeed;
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
