using UnityEngine;
using System.Collections;

public class StopSpring : MonoBehaviour {

    //GameObjects
    private GameObject springObject;
    //GameObjects
    
    //Scripts
    private Spring springScript;
    //Scripts

	void Start () 
    {
        springObject = GameObject.Find("Spring");
        springScript = springObject.GetComponent<Spring>();

        /*
         * Grabs the GameObject that holds the 'Spring' script.
         * Now that we have our external script in our hands, we can make changes in it in this script.
         */
	}
	
    void OnTriggerEnter (Collider coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            springScript.onSpring = false;
            springScript.thrust = 0f;
        }

        if (coll.gameObject.tag == "MultiBall")
        {
            springScript.onMultiSpring = false;
            springScript.thrust = 0f;
        }
    }
}
