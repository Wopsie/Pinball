using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour 
{
    [SerializeField]
    private Text scoreText;
    public static int score;

	void Update () 
    {
        scoreText.text = "Score: " + score;
	}
}
