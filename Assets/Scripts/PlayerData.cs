using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;


public class PlayerData
{
    public static readonly List<String> competenceNames = CompetenceList();
    List<bool> _competenceEnabled = new List<bool>();
    string _currentCompetence;
    int _money;

    public PlayerData()
    {
        SetDefault();
        ValidateSave();
        Load();
    }

    public string CurrentCompetence
    {
        get { return _currentCompetence; }
        set
        {
            if (!competenceNames.Contains(value))
                DebugConsole.Log("Competence set to an unknow state !");
            else if (!_competenceEnabled[competenceNames.IndexOf(value)])
                DebugConsole.Log("Competence set to a locked state !");
            _currentCompetence = value;
            Save();
        }
    }

    public int Money
    {
        get { return _money; }
        set
        {
            _money = value;
            Save();
        }
    }

    private static List<String> CompetenceList()
    {
        List<String> competences = new List<string>();
        competences.Add("Normal");
        competences.Add("Bouncy");
        competences.Add("Faster");
        competences.Add("Slower");
        //competences.Add("One life");

        return competences;
    }

    public bool IsEnabled(string competenceName)
    {
        int index = competenceNames.IndexOf(competenceName);
        if (index < 0 || index >= competenceNames.Count)
            return false;
        return _competenceEnabled[index];
    }

    public void SetEnabled(string competenceName, bool value)
    {
        int index = competenceNames.IndexOf(competenceName);
        if (index < 0 || index >= competenceNames.Count)
            return;
        _competenceEnabled[index] = value;
        Save();
    }

    private void ValidateSave()
    {
        if(!PlayerPrefs.HasKey("Money"))
            PlayerPrefs.SetInt("Money", 0);
        if (!PlayerPrefs.HasKey("CurrentCompetence"))
            PlayerPrefs.SetString("CurrentCompetence", "");
        for(int i = 0; i < competenceNames.Count; i++)
        {
            if (!PlayerPrefs.HasKey(competenceNames[i]))
                PlayerPrefs.SetInt(competenceNames[i], _competenceEnabled[i] ? 1 : 0);
        }
    }

    private void Save()
    {
        PlayerPrefs.SetInt("Money", _money);
        PlayerPrefs.SetString("CurrentCompetence", _currentCompetence);
        for (int i = 0; i < competenceNames.Count; i++)
                PlayerPrefs.SetInt(competenceNames[i], _competenceEnabled[i] ? 1 : 0);
    }

    private void Load()
    {
        _money = PlayerPrefs.GetInt("Money", 0);
        _currentCompetence = PlayerPrefs.GetString("CurrentCompetence", "Normal");
        _competenceEnabled.Clear();
        foreach (var c in competenceNames)
            _competenceEnabled.Add(PlayerPrefs.GetInt(c, 0) != 0);
    }

    private void SetDefault()
    {
        _currentCompetence = "Normal";
        _money = 0;
        _competenceEnabled.Clear();
        foreach (var c in competenceNames)
            _competenceEnabled.Add(true);
    }
}