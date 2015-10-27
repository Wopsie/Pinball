using UnityEngine;
using System.Collections;

public class OpenDoor : MonoBehaviour {


    //Int
    private int counterToOpenDoor = 3;
    //Int

    //GameObjects
    private GameObject secretDoor;
    private GameObject turnLogoRed;
    private GameObject pillarOne;
    private GameObject pillarTwo;
    private GameObject pillarThree;
    //GameObjects
    


	void Start () 
    {

      //  counterToOpenDoor = 3;

        secretDoor = GameObject.FindGameObjectWithTag("SecretDoor");
        turnLogoRed = GameObject.Find("HalloweenLogo");
        pillarOne = GameObject.Find("OpenDoor1");
        pillarTwo = GameObject.Find("OpenDoor2");
        pillarThree = GameObject.Find("OpenDoor3");
	}
	

	void Update () 
    {
        Debug.Log(pillarOne.activeSelf);
        Debug.Log(counterToOpenDoor);
        OpenTheDoor();
	}

    void CheckIfActive ()
    {
        if (!pillarOne.activeInHierarchy)
        {
            counterToOpenDoor = 2;
        }
    }

    void OpenTheDoor()
    {
        if (counterToOpenDoor <= 2)
        {
            secretDoor.SetActive(false);
           // this.gameObject.SetActive(true);
            turnLogoRed.GetComponent<Renderer>().material.color = Color.red;
           // counterToOpenDoor = 3;
        }
    }
}
