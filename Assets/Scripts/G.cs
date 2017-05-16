using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public sealed class G
{
    private static volatile G _instance;
    private Player _player;
    private GameManager _gameManager;
    private bool _paused = false;

    public static G Sys
    {
        get
        {
            if (G._instance == null)
                G._instance = new G();
            return G._instance;
        }
    }

    public Player player
    {
        get { return _player; }
        set
        {
            if (_player != null)
                DebugConsole.Log("2 Players instanciated !");
            _player = value;
        }
    }

    public GameManager gameManager
    {
        get { return _gameManager; }
        set
        {
            if (_gameManager != null)
                DebugConsole.Log("2 Gamemanager instanciated !");
            _gameManager = value;
        }
    }

    public bool paused
    {
        get { return _paused; }
        set { _paused = value; }
    }
}
