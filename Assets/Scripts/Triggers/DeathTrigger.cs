using UnityEngine;
using System.Collections;



public class DeathTrigger : MonoBehaviour {

    //GameObjects
    [SerializeField]
    private GameObject ballObjectClone;
    private GameObject spawnPos;
    //GameObjects

    //int
    private int deathCounter;
    //int


    void Update()
    {
        Death();
    }

    void Death()
    {
       
        if (deathCounter >= 3)
        {
            // Einde verhaal
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Ball")
        {
            deathCounter++;
            Destroy(other.gameObject);
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
