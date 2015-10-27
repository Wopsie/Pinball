using UnityEngine;
using System.Collections;

public class SecretDoor : MonoBehaviour {

    //Int
    private int counterToOpenDoor;
    //Int

    //GameObjects
    private GameObject secretDoor;
    private GameObject turnLogoRed;
    //GameObjects
    

	void Start () 
    {
        counterToOpenDoor = 3;
        secretDoor = GameObject.FindGameObjectWithTag("SecretDoor");
        turnLogoRed = GameObject.Find("HalloweenLogo");
	}

	void Update () 
    {
        //Debug.Log(counterToOpenDoor);
	    if (counterToOpenDoor <= 0)
        {
            secretDoor.SetActive(false);
            counterToOpenDoor = 3;
            this.gameObject.SetActive(true);
        }
	}

    void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            this.gameObject.SetActive(false);

        }
    }
}
