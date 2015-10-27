using UnityEngine;
using System.Collections;

public class SecretDoor : MonoBehaviour {


<<<<<<< HEAD
=======
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

	    if (counterToOpenDoor <= 0)
        {
            secretDoor.SetActive(false);
            counterToOpenDoor = 3;
            this.gameObject.SetActive(true);
        }
	}
>>>>>>> f1a778666e3e5225f40eb952aeff36fdead97d8c

    void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            this.gameObject.SetActive(false);

        }
    }
}
