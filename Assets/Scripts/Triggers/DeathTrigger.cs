using UnityEngine;
using System.Collections;



public class DeathTrigger : MonoBehaviour {

    //GameObjects
    [SerializeField]
    private GameObject ballObjectClone;
    private GameObject multiBall;
    private GameObject spawnPos;
    //GameObjects

    //int
    public int deathCounter;
    //int


    void Update()
    {
        Death();
    }

    void Death()
    {
       
        if (deathCounter >= 3)
        {
            multiBall = GameObject.FindGameObjectWithTag("MultiBall");

            if (!multiBall.activeInHierarchy)
            {
                Application.LoadLevel(1);
            }
			
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Ball")
        {
            deathCounter++;
            Destroy(other.gameObject);

            if (deathCounter <= 2)
            StartCoroutine("WaitForSecondBall");
            
        }

        if (other.gameObject.tag == "MultiBall")
        {
            deathCounter++;
            Destroy(other.gameObject);
        }
    }

    IEnumerator WaitForSecondBall()
    {
        spawnPos = GameObject.Find("Reset");
        yield return new WaitForSeconds(2);
        Instantiate(ballObjectClone, spawnPos.transform.position, Quaternion.identity);
    }
}
