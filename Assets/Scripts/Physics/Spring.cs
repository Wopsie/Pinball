using UnityEngine;
using System.Collections;

public class Spring : MonoBehaviour {

    //floats
    private float scale = 5f;
    private float springScale = 1f;
    public float thrust = 0f; //Let the trigger set your thrust to zero!
    //floats

    //bools
    private bool startSpring = false;
    private bool activeSpring = false;
    public bool onSpring; //Let the trigger know that the ball can't addForce anymore!

    //bools

    //gameobjects
    private GameObject ball;
<<<<<<< HEAD
    private GameObject springModel;
=======
<<<<<<< HEAD
    private GameObject stopSpring;
=======
>>>>>>> origin/master
>>>>>>> 72fd1ad43bb648d38db8226eac94b133503e4d37
    //gameobjects


	void Awake () 
    {
<<<<<<< HEAD
        ball = GameObject.Find("Ball");
        stopSpring = GameObject.Find("StopSpring");
=======
        ball = GameObject.FindGameObjectWithTag("Ball");
<<<<<<< HEAD
        springModel = GameObject.Find("SpringModel");
=======
>>>>>>> origin/master
>>>>>>> 72fd1ad43bb648d38db8226eac94b133503e4d37
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
                springModel.transform.localScale = new Vector3(1, 1, springScale);

            }
        }
        else
        {
            if (scale <= 5)
            {
                
                scale += 0.4f;
                this.transform.localScale = new Vector3(1, scale, 1);
                springModel.transform.localScale = new Vector3(1, 1, springScale);
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
<<<<<<< HEAD
            ball.gameObject.GetComponent<Rigidbody>().AddForce(transform.up * thrust, ForceMode.Impulse);
=======
            ball = GameObject.FindGameObjectWithTag("Ball");
            ball.GetComponent<Rigidbody>().AddForce(transform.up * thrust, ForceMode.Impulse);       
>>>>>>> origin/master
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
