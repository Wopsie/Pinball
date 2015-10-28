using UnityEngine;
using System.Collections;

public class Bumper : MonoBehaviour {
    [SerializeField]
    private AudioSource bumperHit;
    [SerializeField]
    private float powerBump = 80f;
    [SerializeField]
    private float sizeScale = 0.20f;

    //Floats

	//GameObjects
	private GameObject ball;
	//GameObjects

	void Start () 
	{
		ball = GameObject.FindGameObjectWithTag ("Ball");
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
            bumperHit.Play();
        }
    }

    void ScaleBumperUp()
    {
        if (transform.localScale.x <= 0.4f && transform.localScale.z <= 0.4f && transform.localScale.z <= 0.4f)
        {
			//ball.GetComponent<Rigidbody>().AddForce(Vector3.Angle,ForceMode.Impulse);
            transform.localScale += new Vector3(sizeScale, sizeScale, sizeScale) * (Time.deltaTime * powerBump);
        }
    }

    void ScaleBumperDown()
    {
        transform.localScale = new Vector3(0.35f, 0.35f, 0.35f);
    }
}
