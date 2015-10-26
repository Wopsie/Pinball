using UnityEngine;
using System.Collections;

public class MoveLeft : MonoBehaviour {

    //Int
    private int speed = 10;
    //Int

    //GameObjects
    private GameObject ball;
    //GameObjects
    
    //Vector3
    private Vector3 position;
    //Vector3

    //RigidBody
    private RigidbodyConstraints yAxis;
	//RigidBody


	void Start () {
        position = new Vector3(speed, 0, 0);
        ball = GameObject.FindGameObjectWithTag("Ball");
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag =="Ball")
        {
            ball.GetComponent<Rigidbody>().AddForce(position * speed, ForceMode.Impulse);    
        }
    }
}
