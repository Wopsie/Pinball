using UnityEngine;
using System.Collections;

public class LightSwitch : MonoBehaviour {

    //GameObjects
    private GameObject JackoLantern;
    private GameObject yellowLight;
    //GameObjects

    //Bools
    private bool runningTimer = false;
    //Bools


	void Start () 
    {
        JackoLantern = GameObject.FindGameObjectWithTag("Jack");
        yellowLight = GameObject.Find("YellowLight");
        JackoLantern.GetComponent<Light>().enabled = false;
        yellowLight.GetComponent<Light>().enabled = false;
	}
	
	void OnCollisionEnter(Collision ball)
    {
        if (ball.gameObject.tag == "Ball")
        {
            runningTimer = true;

            if (runningTimer)
            {
                StartCoroutine("LightTimer");
            }
        }
    }


    IEnumerator LightTimer()
    {
        if (runningTimer)
        {
            JackoLantern.GetComponent<Light>().enabled = true;
            yellowLight.GetComponent<Light>().enabled = true;
        }
        
            yield return new WaitForSeconds(10);
            JackoLantern.GetComponent<Light>().enabled = false;
             yellowLight.GetComponent<Light>().enabled = false;
            runningTimer = false;
    }
}
