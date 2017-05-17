using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{
    public void OnResume()
    {
        Event<PauseEvent>.Broadcast(new PauseEvent(false));
        Destroy(gameObject);
    }

    public void OnRestart()
    {
        Event<PauseEvent>.Broadcast(new PauseEvent(false));
        Event<LoadLevelEvent>.Broadcast(new LoadLevelEvent(G.Sys.gameManager.index));
        Destroy(gameObject);
    }

    public void OnMenu()
    {
        Event<PauseEvent>.Broadcast(new PauseEvent(false));
        Event<GoToMenuEvent>.Broadcast(new GoToMenuEvent());
        Destroy(gameObject);
    }
}
