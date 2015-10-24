﻿using UnityEngine;
using System.Collections;

public class HorizontalScroll : MonoBehaviour {

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
    
            Vector2 offset = new Vector2(Time.time * speed,0);

           

            GetComponent<Renderer>().material.mainTextureOffset = offset;

    }
}