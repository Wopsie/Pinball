using UnityEngine;
using System.Collections;

public class PickUp : MonoBehaviour
{

    //GameObject
    private GameObject pickSFX;
    //GameObject

    void Start ()
    {
        pickSFX = GameObject.Find("PickupSFX");
    }

    public virtual void PlayerHit()
    {

    }

    void OnTriggerEnter(Collider coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
           Destroy(this.gameObject);
            PlayerHit();
            pickSFX.GetComponent<AudioSource>().Play();
        }

        else if (coll.gameObject.tag == "MultiBall")
        {
            Destroy(this.gameObject);
            PlayerHit();
            pickSFX.GetComponent<AudioSource>().Play();
        }
    }
}