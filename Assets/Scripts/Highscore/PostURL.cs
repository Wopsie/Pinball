using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PostURL : MonoBehaviour {

    private string textW;
    [SerializeField]
    private Text scoreField;
    private WWW www;



	void Start () {

       // wwwText = www.text;
		string url = "http://localhost/bap/pro/action_page2.php";

		www = new WWW(url);
        StartCoroutine(WaitForRequest(www));

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

        scoreField.text = www.text;
	}

}
