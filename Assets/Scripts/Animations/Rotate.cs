using UnityEngine;
using System.Collections;

public class Rotate : MonoBehaviour {

    //Float
    private float rotationSpeed = 50f;
    //Float

    void Update()
    {
        this.gameObject.transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
    }
}
