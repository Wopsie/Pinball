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
	}
	
    void OnTriggerEnter (Collider coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            springScript.onSpring = false;
            springScript.thrust = 0f;
        }
    }
}
