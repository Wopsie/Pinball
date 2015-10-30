using UnityEngine;
using System.Collections;

public class TeleportSecret : MonoBehaviour {

    //GameObject
    private GameObject toTeleport;
    //GameObject

	void Start () {
        toTeleport = GameObject.Find("toTeleport");
	}
	

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Ball")
        {
            other.transform.position = toTeleport.transform.position;
        }
    }
}
