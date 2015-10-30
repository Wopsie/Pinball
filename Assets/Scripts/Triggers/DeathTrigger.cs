using UnityEngine;
using System.Collections;



public class DeathTrigger : MonoBehaviour {

    //GameObjects
    [SerializeField]
    private GameObject ballObjectClone;
    private GameObject multiBall;
    private GameObject spawnPos;
    private GameObject deathSFX;
    //GameObjects

    //int
    public int deathCounter;
    //int

<<<<<<< HEAD
    void Start()
    {
        deathSFX = GameObject.Find("LosingHorn");
    }
=======
    //sound
    [SerializeField]
    private AudioSource deathSound;

>>>>>>> 9c959bf89f3082551dba75f108695a49982781ef

    void Update()
    {
        Death();
    }

    void Death()
    {
       
        if (deathCounter >= 3)
        {
            multiBall = GameObject.FindGameObjectWithTag("MultiBall");
            deathSFX.GetComponent<AudioSource>().Play();
                Application.LoadLevel(1);
            
			
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
            deathSound.Play();
        }
    }

    IEnumerator WaitForSecondBall()
    {
        spawnPos = GameObject.Find("Reset");
        yield return new WaitForSeconds(2);
        Instantiate(ballObjectClone, spawnPos.transform.position, Quaternion.identity);
    }
}
