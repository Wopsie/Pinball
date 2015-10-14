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
    //gameobjects


	void Awake () 
    {
        ball = GameObject.FindGameObjectWithTag("Ball");
	}
	

	void Update () 
    {
        SpringPower();
        ScaleSpring();
	} 

    void ScaleSpring()
    {
        if (Input.GetKey(KeyCode.Space))
        {
            if (scale >= 1)
            {
                if (thrust <= Mathf.Abs(100))
                {
                    thrust+= 1.5f;
                }
                   
                scale -= 0.075f;
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
            ball = GameObject.FindGameObjectWithTag("Ball");
            ball.GetComponent<Rigidbody>().AddForce(transform.up * thrust, ForceMode.Impulse);       
            startSpring = false;
        }
    }

    void OnCollisionEnter (Collision coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            onSpring = true;
        }
    }
}
