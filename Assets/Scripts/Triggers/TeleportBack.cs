using UnityEngine;
using System.Collections;

public class TeleportBack : MonoBehaviour {

    //GameObject
    private GameObject toTeleport;
    //GameObject

	void Start () {
        toTeleport = GameObject.Find("Reset");
	}
	

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Ball")
        {
            other.transform.position = toTeleport.transform.position;
        }
    }
}
