using UnityEngine;
using System.Collections;

public class MoveBack : MonoBehaviour {

	
	void Update () {
        this.gameObject.transform.Translate (0,0,-0.05f);
	}
}
