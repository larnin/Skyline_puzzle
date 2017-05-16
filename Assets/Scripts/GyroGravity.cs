using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GyroGravity : MonoBehaviour
{
    public float multiplier = 1;

    void Start()
    {
        Input.gyro.enabled = true;
    }


    void Update ()
    {
        var g = (Input.gyro.gravity + new Vector3(Input.GetAxisRaw("Horizontal"), Input.GetAxisRaw("Vertical"), 0)) * multiplier;
        Physics.gravity = g;
        Physics2D.gravity = new Vector2(g.x, g.y);
	}
}
