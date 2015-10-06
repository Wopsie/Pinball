using UnityEngine;
using System.Collections;

public class KeyBoardInput : MonoBehaviour {

    [SerializeField]
    private GameObject leftFlipper;
    private GameObject rightFlipper;

    private int speed = 50;

	// Use this for initialization
	void Start () {
        //leftFlipper = GameObject.Find("LeftFlipper");
        rightFlipper = GameObject.Find("RightFlipper");
	}
	
	// Update is called once per frame
	void Update () {
	if (Input.GetKeyDown(KeyCode.Z))
    {
        leftFlipper.transform.Rotate(Vector3.up * speed);
    }
    else if(Input.GetKeyUp(KeyCode.Z))
    {
       
    }
	}
}
