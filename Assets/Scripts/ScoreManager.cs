using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour 
{
    [SerializeField]
    private Text scoreText;
    private static int score;

    void Start()
    {
        GameObject theObstacle = GameObject.Find("Bumper");
        
    }

	void Update () 
    {
        scoreText.text = "Score: " + score;
        score = Obstacle.objScore;
        //if collision with 
	}
}
