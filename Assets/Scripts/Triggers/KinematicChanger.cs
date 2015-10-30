using UnityEngine;
using System.Collections;

public class KinematicChanger : MonoBehaviour {



    //Int
    private int speed = 100;
    private int xGravity = -10;
    //Int

    //GameObjects
    private GameObject ball;
    //GameObjects
    
    //Bools
    private bool onTrack = false;
    private bool fallingDown = false;
    private bool nGravityBool = false;
    //Bools

    //Vector3
    private Vector3 moveLeft;
    private Vector3 normalGravity;
    private Vector3 fallGravity;
    //Vector3


	void Start () 
    {
        ball = GameObject.FindGameObjectWithTag("Ball");

        moveLeft = new Vector3(xGravity, 0, 0);
        normalGravity = new Vector3(0, 0, -12.5f);
        fallGravity = new Vector3(0, -10, 0);

        if (this.gameObject.tag == "Track")
        {
            onTrack = true;
        }

        if (this.gameObject.name == "toTeleport")
        {
            nGravityBool = true;
        }
	}
	

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Ball")
        {
            StartCoroutine("KinematicChange");
            other.GetComponent<Rigidbody>().isKinematic = true;
        }

        else if (other.gameObject.tag == "MultiBall")
        {
            StartCoroutine("KinematicChange");
            other.GetComponent<Rigidbody>().isKinematic = true;
        }    
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Ball")
        {
            Physics.gravity = normalGravity;
        }
    }

    IEnumerator KinematicChange()
    {
        ball = GameObject.FindGameObjectWithTag("Ball");
        yield return new WaitForSeconds(0);
        ball.GetComponent<Rigidbody>().isKinematic = false;
        if(onTrack)
        Physics.gravity = moveLeft * speed;

        else if(fallingDown)
            Physics.gravity = fallGravity * speed;

        else if (nGravityBool)
        {
            Physics.gravity = normalGravity;
        }
    }
}
