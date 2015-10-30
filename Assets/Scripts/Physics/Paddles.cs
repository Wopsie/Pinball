using UnityEngine;
using System.Collections;

public class Paddles : MonoBehaviour {

    //Bools
    private bool leftTrigger = false;
    private bool rightTrigger = false;
    private bool tinyLeftTrigger = false;
    private bool tinyRightTrigger = false;
    //Bools

    //GameObjects
    private GameObject leftFlipper;
    private GameObject rightFlipper;
    private GameObject tinyLeftFlipper;
    private GameObject tinyRightFlipper;
    //GameObjects


    void Awake()
    {
       leftFlipper = GameObject.FindGameObjectWithTag("LeftFlipper");
       rightFlipper = GameObject.FindGameObjectWithTag("RightFlipper");

       tinyLeftFlipper = GameObject.FindGameObjectWithTag("TinyLeftFlipper");
       tinyRightFlipper = GameObject.FindGameObjectWithTag("TinyRightFlipper");
    }


	void Start () 
    {
        if (gameObject.tag == "LeftFlipper")
        {
            leftTrigger = true;
        }

        if (gameObject.tag == "RightFlipper")
        {
            rightTrigger = true;
        }

        if (gameObject.tag == "TinyLeftFlipper")
        {
            tinyLeftTrigger = true;
        }

        if (gameObject.tag == "TinyRightFlipper")
        {
            tinyRightTrigger = true;
        }


        leftFlipper.GetComponent<Rigidbody>().centerOfMass = new Vector3(-0.1f, 0);
        rightFlipper.GetComponent<Rigidbody>().centerOfMass = new Vector3(0.1f, 0);

        tinyLeftFlipper.GetComponent<Rigidbody>().centerOfMass = new Vector3(-0.1f, 0);
        tinyRightFlipper.GetComponent<Rigidbody>().centerOfMass = new Vector3(0.1f, 0);

        /*
         * Giving each gameobject it's own center of mass is not always necessary.
         * It all depends on how you want your gameobject to rotate, or the shape of the gameobject.
         */

	}
	
	void FixedUpdate () 
    {
        MoveFlippers();
        MoveTinyFlippers();
    }

    void MoveFlippers()
    {
        if (leftTrigger)
        {
            if (Input.GetKey(KeyCode.A))
            {
                this.GetComponent<Rigidbody>().AddForce(Vector3.back * 3000, ForceMode.Impulse);
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
                this.GetComponent<Rigidbody>().AddForce(Vector3.back * 3000, ForceMode.Impulse);
            }
            else
            {
                this.GetComponent<Rigidbody>().AddForce(Vector3.forward * 2000);
            }
        }
    }

    void MoveTinyFlippers()
    {
        if (tinyLeftTrigger)
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

        if (tinyRightTrigger)
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
