using UnityEngine;
using System.Collections;

public class Spring : MonoBehaviour {

    //floats
    private float scale = 5f;
    public float thrust = 0f; //Let the trigger set your thrust to zero!
    //floats

    //bools
    private bool startSpring = false;
    public bool onSpring; //Let the trigger know that the ball can't addForce anymore!
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
	

	void Update () 
    {
        Debug.Log(thrust);
        SpringPower();
        ScaleSpring();
	} 

    void ScaleSpring()
    {
        if (Input.GetKey(KeyCode.Space))
        {
            if (scale >= 1)
            {
                if (thrust <= Mathf.Abs(50))
                {
                    thrust++;
                }
                   
                scale -= 0.03f;
                this.transform.localScale = new Vector3(1, scale, 1);
            }
        }
        else
        {
            if (scale <= 5)
            {
                
                scale += 0.4f;
                this.transform.localScale = new Vector3(1, scale, 1);
            }

        }

        if (Input.GetKeyUp(KeyCode.Space))
        {
            if(onSpring)
            startSpring = true;

        }
    }

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
            onSpring = true;
        }
    }
}
