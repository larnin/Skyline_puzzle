using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelSelectMenu : MonoBehaviour
{
    public GameObject levelPrefab;

    float buttonOffsetX = 110;
    float buttonOffsetY = 100;
    float buttonVerticalOffset = 0;
    int buttonLineCount = 1;
    int buttonColumnCount = 1;
    int currentPage = 0;

    List<GameObject> buttons = new List<GameObject>();
    GameObject nextButton;
    GameObject previousButton;

    void Start ()
    {
        for(int i = 1; i < 100; i++)
        {
            if (i > PlayerData.competenceNames.Count)
                break;
            var b = transform.Find("C" + i.ToString());
            if (b == null)
                break;
            if (!G.Sys.playerData.IsEnabled(PlayerData.competenceNames[i-1]))
                b.gameObject.SetActive(false);
        }

        var bArrow = transform.Find("Next");
        if (bArrow != null)
            nextButton = bArrow.gameObject;
        bArrow = transform.Find("Previous");
        if (bArrow != null)
            previousButton = bArrow.gameObject;

        CreateButtons();
	}

    void CreateButtons()
    {
        foreach (var b in buttons)
            Destroy(b);
        buttons.Clear();

        for (int i = 0; i < buttonLineCount * buttonLineCount; i++)
        {
            int current = i + buttonLineCount * buttonLineCount * currentPage;
            if (current >= G.Sys.gameManager.levelsName.Count)
                break;

            var b = Instantiate(levelPrefab);
            b.transform.SetParent(transform);
            b.transform.localScale = new Vector3(1, 1, 1);
            b.transform.localPosition = new Vector3(buttonOffsetX * (i % buttonLineCount - ((float)buttonLineCount - 1) / 2), -buttonOffsetY * (i / 3) + buttonVerticalOffset, 0);
            var child = b.transform.Find("Text");
            var child2 = b.transform.Find("Text Back");
            if (child != null)
            {
                var text = child.GetComponent<Text>();
                if (text != null)
                    text.text = "Level " + (current + 1);
            }
            if (child2 != null)
            {
                var text = child2.GetComponent<Text>();
                if (text != null)
                    text.text = "Level " + (current + 1);
            }
            var button = b.GetComponent<Button>();
            int j = current;
            if (button != null)
                button.onClick.AddListener(delegate { onLevelButtonClick(j); });
            buttons.Add(b);
        }

        nextButton.SetActive((currentPage + 1) * buttonLineCount * buttonLineCount < G.Sys.gameManager.levelsName.Count);
        previousButton.SetActive(currentPage > 0);
    }

    public void onLevelButtonClick(int value)
    {
        G.Sys.gameManager.LoadLevel(value);
    }

    public void onCompetenceSelect(int index)
    {
        G.Sys.playerData.CurrentCompetence = PlayerData.competenceNames[index];
    }

    public void onNextClick()
    {
        currentPage++;
        CreateButtons();
    }

    public void onPreviousClick()
    {
        currentPage--;
        CreateButtons();
    }

    public void onReturnMenuClick()
    {
        G.Sys.gameManager.LoadScene(G.Sys.gameManager.mainMenuScene);
    }
}
