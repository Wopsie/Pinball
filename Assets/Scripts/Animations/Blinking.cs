using UnityEngine;
using System.Collections;

public class Blinking : MonoBehaviour {
	private int colors;
	private Light lt;
	// Use this for initialization
	void Start () {
		lt = GetComponent<Light> ();
	}
	
	// Update is called once per frame
	void Update () {

		colors = Random.Range (0, 6);
		switch (colors) 
		{
		case 5: 
			lt.color=Color.red;
			break;
		case 4: 
			lt.color=Color.green;
			break;
		case 3: 
			lt.color=Color.blue;
			break;
		case 2: 
			lt.color=Color.yellow;
			break;
		case 1: 
			lt.color=Color.cyan;
			break;
		default:
			lt.color=Color.white;
			break;
		}
	}
}
