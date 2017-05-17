using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public GameObject dieMenuPrefab;
    public GameObject endMenuPrefab;
    public GameObject pauseMenuPrefab;
    public List<string> levelsName;
    public string mainMenuScene;
    public string levelSelectScene;

    [HideInInspector]
    public int index = 0;

    SubscriberList _subscriberList = new SubscriberList();

    void Awake()
    {
        DontDestroyOnLoad(gameObject);

        G.Sys.gameManager = this;

        _subscriberList.Add(new Event<PlayerDieEvent>.Subscriber(onPlayerDie));
        _subscriberList.Add(new Event<EndLevelEvent>.Subscriber(onPlayerFinish));
        _subscriberList.Add(new Event<GoToMenuEvent>.Subscriber(onGoToMain));
        _subscriberList.Add(new Event<LoadLevelEvent>.Subscriber(onLoadLevel));
        _subscriberList.Add(new Event<PauseEvent>.Subscriber(onPause));
        _subscriberList.Subscribe();
    }

    void Start()
    {
        LoadScene(mainMenuScene);
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

    public void LoadScene(string scene, Action action = null, LoadSceneMode mode = LoadSceneMode.Single)
    {
        StartCoroutine(LoadSceneCoroutine(scene, action, mode));
    }

    IEnumerator LoadSceneCoroutine(string scene, Action action, LoadSceneMode mode)
    {
        var task = SceneManager.LoadSceneAsync(scene, mode);
        task.allowSceneActivation = true;
        while (!task.isDone)
            yield return new WaitForEndOfFrame();
        if (action != null)
            action.Invoke();
    }

    public void LoadLevel(int _index)
    {
        if (index < 0 || index >= levelsName.Count)
        {
            DebugConsole.Log("Level index invalid");
            return;
        }
        index = _index;
        G.Sys.paused = true;
        LoadScene(levelsName[index], startLevel);
    }

    void onPlayerDie(PlayerDieEvent e)
    {
        Instantiate(dieMenuPrefab);
    }

    void onPlayerFinish(EndLevelEvent e)
    {
        Instantiate(endMenuPrefab);
    }

    void onLoadLevel(LoadLevelEvent e)
    {
        LoadLevel(e.index);
    }

    void onGoToMain(GoToMenuEvent e)
    {
        LoadScene(mainMenuScene);
    }
    
    void onPause(PauseEvent e)
    {
        Debug.Log("Pause");
        G.Sys.paused = e.pausing;
        if (e.pausing)
            Instantiate(pauseMenuPrefab);
    }

    void startLevel()
    {
        G.Sys.paused = true;
        Event<StartCountdownEvent>.Broadcast(new StartCountdownEvent());
    }
}
