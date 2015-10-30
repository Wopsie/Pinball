using UnityEngine;
using System.Collections;

public class OpenDoor : MonoBehaviour {


    //Int
    private int counterToOpenDoor;
    //Int

    //GameObjects
    private GameObject secretDoor;
    private GameObject trackRun;
    private GameObject turnLogoRed;
    private GameObject pillarOne;
    private GameObject pillarTwo;
    private GameObject pillarThree;
    //GameObjects
    


	void Start () 
    {
        counterToOpenDoor = 3;

        trackRun = GameObject.FindGameObjectWithTag("Track");
        trackRun.SetActive(false);

        secretDoor = GameObject.FindGameObjectWithTag("SecretDoor");

        turnLogoRed = GameObject.Find("HalloweenLogo");

        pillarOne = GameObject.Find("OpenDoor1");
        pillarTwo = GameObject.Find("OpenDoor2");
        pillarThree = GameObject.Find("OpenDoor3");
	}
	

	void Update () 
    {
        OpenTheDoor();
        CheckIfActive();
	}

    void CheckIfActive ()
    {
       if (pillarOne.activeSelf == false)
       {
           counterToOpenDoor = 2;
       }

       if (pillarTwo.activeSelf == false)
       {
           counterToOpenDoor = 1;
       }

       if (pillarThree.activeSelf == false)
       {
           counterToOpenDoor = 0;
       }
    }

    void TurnOnPillars()
    {
        if (counterToOpenDoor == 3)
        {
            pillarOne.SetActive(true);
            pillarTwo.SetActive(true);
            pillarThree.SetActive(true);
        }
    }

    void OpenTheDoor()
    {
        if (counterToOpenDoor <= 0)
        {
            trackRun.SetActive(true);
            secretDoor.SetActive(false);
            turnLogoRed.GetComponent<Renderer>().material.color = Color.red;
            counterToOpenDoor = 3;
            //TurnOnPillars();
        }
    }
}
