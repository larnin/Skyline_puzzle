using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public sealed class G
{
    private static volatile G _instance;
    private Player _player;

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
}
