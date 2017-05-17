using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelSelectMenu : MonoBehaviour
{
    public GameObject levelPrefab;

    float buttonOffset = 110;
    float buttonVerticalOffset = 150;
    int buttonLineCount = 3;

	void Start ()
    {
		for(int i = 0; i < G.Sys.gameManager.levelsName.Count; i++)
        {
            var b = Instantiate(levelPrefab);
            b.transform.SetParent(transform);
            b.transform.localPosition = new Vector3(buttonOffset * (i % buttonLineCount - ((float)buttonLineCount - 1)/2), - buttonOffset * (i / 3) + buttonVerticalOffset, 0);
            var child = b.transform.FindChild("Text");
            if(child != null)
            {
                var text = child.GetComponent<Text>();
                if (text != null)
                    text.text = "Level " + (i + 1);
            }
            var button = b.GetComponent<Button>();
            int j = i;
            if(button != null)
                button.onClick.AddListener(delegate { onLevelButtonClick(j); });
        }
        
        for(int i = 1; i < 100; i++)
        {
            if (i > PlayerData.competenceNames.Count)
                break;
            var b = transform.FindChild("C" + i.ToString());
            if (b == null)
                break;
            if (!G.Sys.playerData.IsEnabled(PlayerData.competenceNames[i-1]))
                b.gameObject.SetActive(false);
        }
	}

    public void onLevelButtonClick(int value)
    {
        G.Sys.gameManager.LoadLevel(value);
    }

    public void onCompetenceSelect(int index)
    {
        G.Sys.playerData.CurrentCompetence = PlayerData.competenceNames[index];
    }
}
