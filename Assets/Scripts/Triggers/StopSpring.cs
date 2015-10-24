using UnityEngine;
using System.Collections;

public class StopSpring : MonoBehaviour {


    private GameObject springObject;
    private Spring springScript;


	void Start () {
        springObject = GameObject.Find("Spring");
    springScript = springObject.GetComponent<Spring>();
	}
	
    void OnTriggerEnter (Collider coll)
    {
        if (coll.gameObject.name == "Ball")
        {
            springScript.onSpring = false;
            springScript.thrust = 0f;
        }
    }
}
