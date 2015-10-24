using UnityEngine;
using System.Collections;

public class Flashing : MonoBehaviour {

    private Light stormLight;
    
    //floats
    private float timer = 5f;
    private float randomTimer;
    //floats

	void Start () 
    {
        stormLight = GetComponent<Light>();
	}
	
	void Update () 
    {
        DecideTheFlash();
	}

    void DecideTheFlash()
    {
        timer -= Time.deltaTime;

        if (timer <= 1f)
        {
            randomTimer = Random.Range(5f, 20f);
            StartCoroutine("RandomFlash");
            timer = randomTimer;
        }

        else
        stormLight.enabled = false;

        /*
         *  The timer counts down per second.
         *  When the timer reaches 0.1 or under, a coroutine starts that keeps the sky flashing.
         *  Every time the timer reaches it's end, the timer gets reset.
         */
    }

    IEnumerator RandomFlash()
    {
        stormLight.enabled = true;
        yield return new WaitForSeconds(0.1f);
        stormLight.enabled = false;
        yield return new WaitForSeconds(0.2f);
        stormLight.enabled = true;
        yield return new WaitForSeconds(0.1f);
        stormLight.enabled = false;
        yield return new WaitForSeconds(0.02f);
        stormLight.enabled = true;
        yield return new WaitForSeconds(0.1f);
        stormLight.enabled = false;
        yield return new WaitForSeconds(0.02f);
        stormLight.enabled = true;
        yield return new WaitForSeconds(0.1f);
        stormLight.enabled = false;
        yield return new WaitForSeconds(0.02f);
        stormLight.enabled = true;
        
    }
}
