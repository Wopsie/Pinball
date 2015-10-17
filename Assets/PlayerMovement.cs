using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

    [SerializeField]
    private float movementSpeed;
    private GameObject player;
            
	// Use this for initialization
	void Start () {
        //rigidBodyTest = GetComponent<Rigidbody>;
        player = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () {

        if (Input.GetKeyDown(KeyCode.D))
        {
            player.gameObject.GetComponent<Rigidbody>().AddForce(Vector3.right);
        }
	}
}
