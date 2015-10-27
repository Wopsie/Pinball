using UnityEngine;
using System.Collections;

public class DeactiveObject : MonoBehaviour {



    void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            this.gameObject.SetActive(false);

        }
    }
}
