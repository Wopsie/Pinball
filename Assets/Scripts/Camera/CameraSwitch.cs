using UnityEngine;
using System.Collections;

public class CameraSwitch : MonoBehaviour {


    //GameObjects
    private GameObject mainCamera;
    private GameObject followCamera;
    //GameObjects


    void Awake()
    {
        mainCamera = GameObject.FindGameObjectWithTag("MainCamera");
        followCamera = GameObject.FindGameObjectWithTag("FollowCamera");

    }

	void Start () {
        mainCamera.SetActive(false);
	}
	

    void OnTriggerEnter(Collider coll)
    {
        if (coll.gameObject.name == "Ball")
        {
            followCamera.SetActive(false);
            mainCamera.SetActive(true);
        }
    }
}
