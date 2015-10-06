using UnityEngine;
using System.Collections;

public class Spring : MonoBehaviour {

    //floats
    private float scale = 5f;
    private float thrust = 50f;
    //floats

    //bools
    private bool startSpring = false;
    //bools

    //gameobjects
    private GameObject ball;
    private GameObject stopSpring;
    //gameobjects


	void Awake () 
    {
        ball = GameObject.Find("Ball");
        stopSpring = GameObject.Find("StopSpring");
	}
	

	void Update () {

        SpringPower();

	if (Input.GetKey(KeyCode.Space))
    {
        if (scale >= 1)
        {
            scale -= 0.03f;
            this.transform.localScale = new Vector3(1, scale, 1);
        }
    }
    else
    {
        startSpring = false;
         if (scale <= 5)
        {
            scale += 0.4f;
            this.transform.localScale = new Vector3(1, scale, 1);
        }

    }
    if (Input.GetKeyUp(KeyCode.Space))
    {
        startSpring = true;
    }

	} //END OF THE UPDATE

    void SpringPower()
    {
        if (startSpring == true)
        {
            ball.gameObject.GetComponent<Rigidbody>().AddForce(transform.up * thrust, ForceMode.Impulse);
            startSpring = false;
        }
    }

    void OnCollisionEnter (Collision coll)
    {
        if (coll.gameObject.name == "Ball")
        {
            Debug.Log("Test");
           // startSpring = true;
        }
    }
}
