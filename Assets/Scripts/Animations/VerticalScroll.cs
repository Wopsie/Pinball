using UnityEngine;
using System.Collections;

public class VerticalScroll : MonoBehaviour {

    //floats
    [SerializeField]
    private float speed = 0.01f;
    //floats

 
    void Update()
    {
        ScrollBack();
    }


    void ScrollBack()
    {

        Vector2 offset = new Vector2(0, Time.time * speed);

           

            GetComponent<Renderer>().material.mainTextureOffset = offset;

    }
}