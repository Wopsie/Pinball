using UnityEngine;
using System.Collections;

public class VelocityManager : MonoBehaviour 
{
    private bool bumperColl;
    private Vector3 velocity;
    private int velocityTimer;

	void Start () 
    {
        velocityTimer = 0;
	}
	
	void Update ()
    {
        if(velocityTimer > 0)
        {
            velocityTimer++;
            VelocityIncrease();
            if(velocityTimer > 50)
            {
                velocityTimer = 0;
            }
        }
        else
        {
            velocityTimer = 0;
        }

        //Debug.Log("velocity timer = "+velocityTimer);
	}

    void OnCollisionExit(Collision col)
    {
        if(col.gameObject.tag == "Bumper")
        {
            velocityTimer++;
        }
    }

    void VelocityIncrease()
    {
        transform.Translate(velocity * Time.deltaTime * 50);
    }
}
