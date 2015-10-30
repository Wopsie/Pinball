using UnityEngine;
using System.Collections;

public class DeactivateObject : MonoBehaviour {



    void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            this.gameObject.SetActive(false);
        }
        else if (coll.gameObject.tag == "MultiBall")
        {
            this.gameObject.SetActive(false);
        }
    }
}
