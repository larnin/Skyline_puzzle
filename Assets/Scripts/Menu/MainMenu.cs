using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MainMenu : MonoBehaviour
{
    public void Start()
    {
        var text = transform.Find("MoneyBack");
        if(text != null)
        {
            var value = text.GetComponent<Text>();
            if(value != null)
                value.text = G.Sys.playerData.Money.ToString();
        }
        text = transform.Find("Money");
        if (text != null)
        {
            var value = text.GetComponent<Text>();
            if(value != null)
                value.text = G.Sys.playerData.Money.ToString();
        }
    }

    public void onQuit()
    {
        Application.Quit();
    }

    public void onPlay()
    {
        G.Sys.gameManager.LoadScene(G.Sys.gameManager.levelSelectScene);
        Destroy(gameObject);
    }
}
