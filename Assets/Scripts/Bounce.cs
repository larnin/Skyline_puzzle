using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bounce : MonoBehaviour {

    public float bounceStrenght;

    void OnCollisionEnter(Collision _hit)
    {
        if (_hit.gameObject.tag.Contains("Player"))
        {
            ContactPoint contact = _hit.contacts[0];
            _hit.rigidbody.AddForce(contact.normal * -1 * bounceStrenght * _hit.relativeVelocity.magnitude);
        }
    }
}
