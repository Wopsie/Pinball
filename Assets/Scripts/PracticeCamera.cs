using UnityEngine;
using System.Collections;

public class PracticeCamera : MonoBehaviour {

    private GameObject player;
    private Vector3 offset;

    // Use this for initialization
    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Ball");
        offset = player.transform.position - transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        this.transform.position = player.transform.position - offset;
    }
}