using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenu : MonoBehaviour
{
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
