using UnityEngine;
using System.Collections;

public class CameraSwitch : MonoBehaviour {


    //GameObjects
    private GameObject mainCamera;
    private GameObject followCamera;
    private GameObject secretCameraOne;
    private GameObject secretCameraTwo;
    //GameObjects

    //Bool
    private bool firstCameraSwitch;
    private bool secretCamSwitchBool;
    private bool secretCamSwitchBoolTwo;
    private bool turnSecretOff;
    //Bool


    void Awake()
    {
        mainCamera = GameObject.FindGameObjectWithTag("MainCamera");
        followCamera = GameObject.FindGameObjectWithTag("FollowCamera");

        secretCameraOne = GameObject.FindGameObjectWithTag("SecretCameraOne");
        secretCameraTwo = GameObject.FindGameObjectWithTag("SecretCameraTwo");

    }

	void Start () 
    {
        mainCamera.SetActive(false);
        secretCameraOne.SetActive(false);
        secretCameraTwo.SetActive(false);

        if (this.gameObject.name == "Reset")
        {
            firstCameraSwitch = true;
        }

        if (this.gameObject.tag == "Track")
        {
            secretCamSwitchBool = true;
        }

        if (this.gameObject.name == "toTeleport")
        {
            secretCamSwitchBoolTwo = true;
        }

        if (this.gameObject.name == "toReset")
        {
            turnSecretOff = true;
        }
	}
	

    void OnTriggerEnter(Collider coll)
    {
        if (coll.gameObject.tag == "Ball")
        {
            if (firstCameraSwitch)
            {
                followCamera.SetActive(false);
                mainCamera.SetActive(true);
            }

            if (secretCamSwitchBool)
            {
                mainCamera.SetActive(false);
                secretCameraOne.SetActive(true);
            }

            if (secretCamSwitchBoolTwo)
            {
                secretCameraOne.SetActive(false);
                secretCameraTwo.SetActive(true);
            }

            if (turnSecretOff)
            {
                secretCameraTwo.SetActive(false);
            }

            if (this.gameObject.name == "OpenDoor3")
            {
                mainCamera.SetActive(true);
            }
        }
    }
}
