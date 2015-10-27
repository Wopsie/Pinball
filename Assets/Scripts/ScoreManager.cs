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

    void OnCollisionExit(Collision col)
    {
        switch(col.gameObject.tag)
        {
            case "Bumper":
                score += 25;
                break;
            case "FarLine":
                score += 100;
                break;
            case "MediumLine":
                score += 50;
                break;
            case "CloseLine":
                score += 30;
                break;
            case "DoorSwitch":
                score += 100;
                break;
        }
    }
}
