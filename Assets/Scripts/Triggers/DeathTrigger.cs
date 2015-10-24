using UnityEngine;
using System.Collections;



public class DeathTrigger : MonoBehaviour {

    //GameObjects
    [SerializeField]
    private GameObject ballObjectClone;
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
            Debug.Log("DEAD");
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
    }

    IEnumerator WaitForSecondBall()
    {
        spawnPos = GameObject.Find("Reset");
        yield return new WaitForSeconds(2);
        Instantiate(ballObjectClone, spawnPos.transform.position, Quaternion.identity);
    }
}
