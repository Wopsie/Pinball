﻿using UnityEngine;
using System.Collections;

public class Spring : MonoBehaviour {

    //Floats
    private float scale = 5f;
    private float springScale = 1f;
    public float thrust = 0f; //Let the trigger set your thrust to zero!
    //Floats

    //Bools
    private bool startSpring = false;
    private bool startMultiSpring = false;
    public bool onSpring; //Let the trigger know that the ball can't addForce anymore!
    public bool onMultiSpring; //Let the trigger know that the ball can't addForce anymore!

    //Bools

    //GameObjects
    private GameObject ball;
    private GameObject multiBall;
    private GameObject springModel;

    private GameObject springSFX;
    //GameObjects


	void Awake () 
    {
        multiBall = GameObject.FindGameObjectWithTag("MultiBall");
        ball = GameObject.FindGameObjectWithTag("Ball");
        springModel = GameObject.Find("SpringModel");
        springSFX = GameObject.Find("ForceBall");
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
                springModel.transform.localScale = new Vector3(1, 1, springScale);
            }
        }

        // This part of the code lets the spring shrink until it reaches a certain limit of shrinking.

        else
        {
            if (scale <= 5)
            {
                
                scale += 0.4f;
                this.transform.localScale = new Vector3(2, scale, 1);
                springModel.transform.localScale = new Vector3(2, 1, springScale);
            }
        }

        // Whenever SPACE is NOT pressed... resize the spring to it's original scale!

        if (Input.GetKeyUp(KeyCode.Space))
        {
            if(onSpring)
            startSpring = true;

            if (onMultiSpring)
                startMultiSpring = true;
        }
    }

    void SpringPower()
    {
        if (startSpring == true)
        {

            springSFX.GetComponent<AudioSource>().Play();
            ball = GameObject.FindGameObjectWithTag("Ball");
            ball.GetComponent<Rigidbody>().AddForce(transform.up * thrust, ForceMode.Impulse);       
            startSpring = false;
        }

        if (startMultiSpring == true)
        {
            springSFX.GetComponent<AudioSource>().Play();
            multiBall = GameObject.FindGameObjectWithTag("MultiBall");
            multiBall.GetComponent<Rigidbody>().AddForce(transform.up * thrust, ForceMode.Impulse);
            startMultiSpring = false;
        }
    }


    void OnCollisionEnter (Collision coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            onSpring = true;
        }

        if (coll.gameObject.tag == "MultiBall")
        {
            onMultiSpring = true;
        }
    }
}
