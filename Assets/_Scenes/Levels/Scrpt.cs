using UnityEngine;
using System.Collections;

public class Scrpt : MonoBehaviour {

    private bool leftB = true;
    private bool rightB;

    private float forceSpeed = 10f;

	// Use this for initialization
	void Start () {
        this.GetComponent<Rigidbody>().maxAngularVelocity = Mathf.Infinity;
	}
	
	// Update is called once per frame
	void Update () {



  
            if (Input.GetKeyDown(KeyCode.A))
            {
                this.GetComponent<Rigidbody>().AddForce(transform.forward * forceSpeed, ForceMode.Impulse);
            }

            else {
                this.GetComponent<Rigidbody>().AddForce((transform.forward * forceSpeed) * -1, ForceMode.Impulse);
            }
        
	}
}
