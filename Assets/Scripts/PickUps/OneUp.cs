using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class OneUp : PickUp
{

    //gameObject
    private GameObject deathTrigger;
    //gameObject

    //scripts
    private DeathTrigger deathScript;
    //scripts

    //Float
    private float rotationSpeed = 50f;
    //Float

    void Start()
    {
        deathTrigger = GameObject.Find("DeathTrigger");
        deathScript = deathTrigger.GetComponent<DeathTrigger>();
    }

    void Update()
    {
        this.gameObject.transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
    }


    public override void PlayerHit()
    {
        deathScript.deathCounter--;
    }
}