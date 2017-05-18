using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndMenu : MonoBehaviour
{
    void Start()
    {
        G.Sys.paused = true;
        if(G.Sys.gameManager.index >= G.Sys.gameManager.levelsName.Count-1)
        {
            var item = transform.FindChild("Next");
            if (item != null)
                item.gameObject.SetActive(false);
        }
    }

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
