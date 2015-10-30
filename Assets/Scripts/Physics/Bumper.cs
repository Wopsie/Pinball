using UnityEngine;
using System.Collections;

public class Bumper : MonoBehaviour {


    //Floats
    [SerializeField]
    private float powerBump = 80f;
    [SerializeField]
    private float sizeScale = 0.10f;
    //Floats
    [SerializeField]
    private AudioSource bumperSound;


    void OnCollisionStay(Collision col)
    {
        if(col.gameObject.tag == "Ball")
        {
            ScaleBumperUp();
            bumperSound.Play();
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
        if (transform.localScale.x <= 0.4f && transform.localScale.z <= 0.4f && transform.localScale.z <= 0.4f)
        {
            transform.localScale += new Vector3(sizeScale, sizeScale, sizeScale) * (Time.deltaTime * powerBump);
        }
    }

    void ScaleBumperDown()
    {
        transform.localScale = new Vector3(0.25f, 0.25f, 0.25f);
    }

}
