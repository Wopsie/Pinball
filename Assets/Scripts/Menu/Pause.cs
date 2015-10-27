using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Pause : MonoBehaviour {

	private bool pauseGame = false;
	private bool showGUI = false;

	private GameObject pauseScreen;

	void Start () 
	{
		pauseScreen = GameObject.Find ("Pause");
		pauseScreen.SetActive(false);
	}



void Update()
{
	if (Input.GetKeyDown("p"))
	{
		pauseGame = !pauseGame;
		
		if (pauseGame == true)
		{
			Time.timeScale = 0;
			pauseGame = true;
			showGUI = true;
		}
		if (pauseGame == false)
		{
			Time.timeScale = 1;
			pauseGame = false;
			showGUI = false;
		}
	}
		if (showGUI == true) {
			pauseScreen.SetActive(true);
		} 
		else 
		{
			pauseScreen.SetActive(false);
		}
}	
}
