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

    //Float
    private float rotationSpeed = 50f;
    //Float

    void Update()
    {
        this.gameObject.transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
    }

    public override void PlayerHit()
    {
        spawnPos = GameObject.Find("Reset");
        Instantiate(ballObjectClone, spawnPos.transform.position, Quaternion.identity);
        base.PlayerHit();
    }
}