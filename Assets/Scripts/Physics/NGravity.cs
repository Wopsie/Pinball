using UnityEngine;
using System.Collections;

public class NGravity : MonoBehaviour {

	
	void Update () {
        Physics.gravity = new Vector3(0, -10, 0);
	}
}
