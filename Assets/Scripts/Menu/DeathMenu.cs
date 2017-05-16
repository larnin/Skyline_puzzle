using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathMenu : MonoBehaviour
{
    public void OnRetryclick()
    {
        Event<LoadLevelEvent>.Broadcast(new LoadLevelEvent(G.Sys.gameManager.index));
        Destroy(gameObject);
    }

    public void OnMenuClick()
    {
        Event<GoToMenuEvent>.Broadcast(new GoToMenuEvent());
        Destroy(gameObject);
    }
}
