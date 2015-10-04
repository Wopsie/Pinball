using UnityEngine;
using System.Collections;

public class Obstacle : MonoBehaviour 
{

	void FixedUpdate () 
    {
        
	}

    void OnCollisionStay(Collision col)
    {
        if(col.gameObject.tag == "Ball")
        {
            ScaleBumperUp();
        }
    }

    void OnCollisionExit(Collision col)
    {
        if(col.gameObject.tag == "Ball")
        {
            ScaleBumperDown();
        }
    }

    void ScaleBumperUp()
    {
        if(transform.localScale.x <= 6.5f && transform.localScale.z <= 6.5f)
        {
            transform.localScale += new Vector3(0.5f, 0, 0.5f)*(Time.deltaTime*80);
        }
    }

    void ScaleBumperDown()
    {
        transform.localScale = new Vector3(5f, 1f, 5f);
    }
}
