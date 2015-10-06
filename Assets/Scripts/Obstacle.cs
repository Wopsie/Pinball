using UnityEngine;
using System.Collections;

public class Obstacle : MonoBehaviour 
{
    [SerializeField]
    private AudioSource bumperHit;

    [SerializeField]
    private int pointTime;

    public int objValue = 50;

    void Update()
    {
        if(pointTime <= 30)
        {
            Debug.Log("cannot earn score");
        }
        else
        {
            Debug.Log("can earn score");
        }
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
            if(pointTime <= 30)
            {
                ScoreManager.score += objValue;
                pointTime = 0;
            }
            else
            {
                pointTime++;
            }
            bumperHit.Play();
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
