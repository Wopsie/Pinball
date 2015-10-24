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

    void Start()
    {
        deathTrigger = GameObject.Find("DeathTrigger");
        deathScript = deathTrigger.GetComponent<DeathTrigger>();
    }

    public override void PlayerHit()
    {
        deathScript.deathCounter--;
    }
}