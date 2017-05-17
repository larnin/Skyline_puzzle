using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameUI : MonoBehaviour
{
    Text _countdown;

	void Start ()
    {
        var txtObj = transform.FindChild("Countdown");
        if (txtObj != null)
            _countdown = txtObj.GetComponent<Text>();
	}
	
    IEnumerator execCountdown()
    {
        yield return null; //todo !
    }
	
}
