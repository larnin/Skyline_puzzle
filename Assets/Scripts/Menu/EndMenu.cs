using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndMenu : MonoBehaviour
{
    public void OnRetryClick()
    {
        Event<LoadLevelEvent>.Broadcast(new LoadLevelEvent(G.Sys.gameManager.index));
        Destroy(gameObject);
    }

    public void OnNextClick()
    {
        Event<LoadLevelEvent>.Broadcast(new LoadLevelEvent(G.Sys.gameManager.index+1));
        Destroy(gameObject);
    }

    public void OnMenuClick()
    {
        Event<GoToMenuEvent>.Broadcast(new GoToMenuEvent());
        Destroy(gameObject);
    }
}
