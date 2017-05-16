using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    SubscriberList _subscriberList = new SubscriberList();

    void Awake()
    {
        G.Sys.gameManager = this;

        _subscriberList.Add(new Event<PlayerDieEvent>.Subscriber(onPlayerDie));
        _subscriberList.Add(new Event<EndLevelEvent>.Subscriber(onPlayerFinish));
        _subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

    public void LoadScene(string scene, Action action, LoadSceneMode mode = LoadSceneMode.Single)
    {
        LoadSceneCoroutine(scene, action, mode);
    }

    IEnumerable LoadSceneCoroutine(string scene, Action action, LoadSceneMode mode)
    {
        var task = SceneManager.LoadSceneAsync(scene, mode);
        while (!task.isDone)
            yield return new WaitForEndOfFrame();
        if (action != null)
            action.Invoke();
    }

    public void LoadLevel(string level)
    {
        LoadScene(level, null);
    }

    void onPlayerDie(PlayerDieEvent e)
    {

    }

    void onPlayerFinish(EndLevelEvent e)
    {

    }
}
