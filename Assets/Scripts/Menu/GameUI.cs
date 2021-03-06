﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameUI : MonoBehaviour
{
    Text _countdown;
    Button _pauseButton;
    SubscriberList _subscriberList = new SubscriberList();
    int _value = 0;
    Text _money;
    Text _moneyBack;

    void Awake()
    {
        _subscriberList.Add(new Event<StartCountdownEvent>.Subscriber(onCountdownStart));
        _subscriberList.Add(new Event<PauseEvent>.Subscriber(onPause));
        _subscriberList.Add(new Event<EndLevelEvent>.Subscriber(onPlayerFinish));
        _subscriberList.Add(new Event<CollectEvent>.Subscriber(onCollect));
        _subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

    void Start ()
    {
        var txtObj = transform.Find("Countdown");
        if (txtObj != null)
            _countdown = txtObj.GetComponent<Text>();
        if (_countdown != null)
            _countdown.gameObject.SetActive(false);
        var pauseObj = transform.Find("Pause");
        if (pauseObj != null)
            _pauseButton = pauseObj.GetComponent<Button>();
        if (_pauseButton != null)
            _pauseButton.gameObject.SetActive(false);

        var text = transform.Find("MoneyBack");
        if (text != null)
        {
            _money = text.GetComponent<Text>();
            _money.text = _value.ToString();
        }
        text = transform.Find("Money");
        if (text != null)
        {
            _moneyBack = text.GetComponent<Text>();
            _moneyBack.text = _value.ToString();
        }
    }
	
    IEnumerator execCountdown()
    {
        _pauseButton.gameObject.SetActive(false);
        _countdown.gameObject.SetActive(true);
        _countdown.text = "Ready ?";
        yield return new WaitForSeconds(1.5f);
        _countdown.text = "Go !";
        yield return new WaitForSeconds(0.75f);
        _countdown.gameObject.SetActive(false);
        _pauseButton.gameObject.SetActive(true);
        G.Sys.paused = false;
    }

    void onCountdownStart(StartCountdownEvent e)
    {
        StartCoroutine(execCountdown());
    }

    public void onPause()
    {
        Event<PauseEvent>.Broadcast(new PauseEvent(true));
    }

    void onPause(PauseEvent e)
    {
        _pauseButton.gameObject.SetActive(!e.pausing);
    }

    void onPlayerFinish(EndLevelEvent e)
    {
        _pauseButton.gameObject.SetActive(false);
    }

    void onCollect(CollectEvent e)
    {
        _value++;
        _money.text = _value.ToString();
        _moneyBack.text = _value.ToString();
    }
}
