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
    }
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.A))
        {
            Debug.Log(leftFlipper.activeSelf);
            //leftFlipper.gameObject.GetComponent<Rigidbody>().AddForce(Vector3.forward);
        }
	}
}
