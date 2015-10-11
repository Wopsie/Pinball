using UnityEngine;
using System.Collections;



public class DeathTrigger : MonoBehaviour {

    //GameObjects
    private GameObject ballObject;
    private GameObject ballObjectClone;
    [SerializeField]
    private GameObject spawnPos;
    //GameObjects

    //int
    private int deathCounter;
    //int

	void Start () 
    {
        ballObject = GameObject.FindGameObjectWithTag("Ball");
        ballObjectClone = Instantiate(ballObject);
	}

    void Update()
    {
        Debug.Log(deathCounter);
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
        yield return new WaitForSeconds(2);
        Instantiate(ballObjectClone, spawnPos.transform.position, Quaternion.identity);
    }
}
