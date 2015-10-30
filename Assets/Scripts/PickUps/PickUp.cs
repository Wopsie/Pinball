using UnityEngine;
using System.Collections;

public class PickUp : MonoBehaviour
{


    public virtual void PlayerHit()
    {

    }

    void OnTriggerEnter(Collider coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
           Destroy(this.gameObject);
            PlayerHit();
        }

        else if (coll.gameObject.tag == "MultiBall")
        {
            Destroy(this.gameObject);
            PlayerHit();
        }
    }
}