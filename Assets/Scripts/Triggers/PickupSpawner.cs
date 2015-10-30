using UnityEngine;
using System.Collections;

public class PickupSpawner : MonoBehaviour {

    private GameObject ExtraBallPU;
    private GameObject OneUpPU;

	// Use this for initialization
	void Start () 
    {
	
	}
	
	// Update is called once per frame
	void Update () 
    {
	
	}

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.tag == "Ball")
        {
            //
        }
    }
}
