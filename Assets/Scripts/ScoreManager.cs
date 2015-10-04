using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour 
{
    [SerializeField]
    private Text scoreText;
    private int score;


	void Update () 
    {
        scoreText.text = "Score: " + score;
        score++;
        //if collision with 
	}
}
