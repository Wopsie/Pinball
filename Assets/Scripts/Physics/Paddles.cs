using UnityEngine;
using System.Collections;

public class Paddles : MonoBehaviour {

    private bool leftTrigger = false;
    private bool rightTrigger = false;

    private GameObject leftFlipper;
    private GameObject rightFlipper;

    void Awake()
    {
       leftFlipper = GameObject.Find("LeftFlipper");
       rightFlipper = GameObject.Find("RightFlipper");
    }
<<<<<<< HEAD
	
	void Update () 
    {
        if (Input.GetKeyDown(KeyCode.A))
=======


	void Start () 
    {
        if (gameObject.name == "LeftFlipper")
        {
            leftTrigger = true;
        }

        if (gameObject.name == "RightFlipper")
        {
            rightTrigger = true;
        }

        leftFlipper.GetComponent<Rigidbody>().centerOfMass = new Vector3(-0.1f, 0);
        rightFlipper.GetComponent<Rigidbody>().centerOfMass = new Vector3(0.1f, 0);

	}
	
	void FixedUpdate () {
        Debug.DrawRay(this.GetComponent<Rigidbody>().worldCenterOfMass, Vector3.up, Color.red);

        if (leftTrigger)
>>>>>>> origin/master
        {
            if (Input.GetKey(KeyCode.A))
            {
                this.GetComponent<Rigidbody>().AddForce(Vector3.back * 1000, ForceMode.Impulse);
            }
            else
            {
                this.GetComponent<Rigidbody>().AddForce(Vector3.forward * 2000);
            }
        }

        if (rightTrigger)
        {
            if (Input.GetKey(KeyCode.D))
            {
                this.GetComponent<Rigidbody>().AddForce(Vector3.back * 1000, ForceMode.Impulse);
            }
            else
            {
                this.GetComponent<Rigidbody>().AddForce(Vector3.forward * 2000);
            }
        }
        
            
            
        
           
        }
	
}
