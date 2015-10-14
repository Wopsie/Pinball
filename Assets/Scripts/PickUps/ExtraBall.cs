using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ExtraBall : PickUp
{
    //GameObjects
    [SerializeField]
    private GameObject ballObjectClone;
    private GameObject spawnPos;
    //GameObjects


    void Update()
    {
        
    }
    

    public override void PlayerHit(PlayerMovement _SC)
    {
        spawnPos = GameObject.Find("Reset");
        Instantiate(ballObjectClone, spawnPos.transform.position, Quaternion.identity);
        base.PlayerHit(_SC);
    }
}