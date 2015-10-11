using UnityEngine;
using System.Collections;

public class PostURL : MonoBehaviour {


    private WWW www;

	// Use this for initialization
	void Start () {
	
		string url = "http://localhost/bap/pro/action_page2.php";

		www = new WWW(url);
        StartCoroutine(WaitForRequest(www));

		
	}

    void Update ()
    {
        
    }

    void ParseString(string incText)
    {
        incText = www.text;
        incText.Trim().Split('\n');
    }

	IEnumerator WaitForRequest (WWW www)

	{
		yield return www;

		if(www.error == null) {
			Debug.Log("WWW Ok!: " + www.text);
		} else {
			Debug.Log("WWW Error: "+ www.error);
		}
	}
	

}
