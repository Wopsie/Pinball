using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour 
{
    //GameObjects
    private GameObject scoreText;
    //GameObjects

    //Int
    public static int score;
    //Int


    void Awake()
    {
        scoreText = GameObject.Find("ScoreCanvas");
    }

	void Update () 
    {
        scoreText.gameObject.GetComponent<Text>().text = "Score: " + score;
	}
    
    void OnCollisionExit(Collision col)
    {
        switch(col.gameObject.tag)
        {
            case "Bumper":
                score += 25;
                break;
            case "DoorSwitch":
                score += 100;
                break;
            case "LeftFlipper":
                score += 10;
                break;
            case "RightFlipper":
                score += 10;
                break;
        }
    }

    void OnTriggerEnter(Collider col)
    {
        switch (col.gameObject.tag)
        {
            case "FarLine":
                score += 100;
                break;
            case "MediumLine":
                score += 50;
                break;
            case "CloseLine":
                score += 25;
                break;
            case "ExtraBall":
                score += 50;
                break;
            case "OneUp":
                score += 50;
                break;
            case "SecretBonus":
                Destroy(col.gameObject);
                score += 100;
                break;

        }
    }
}
