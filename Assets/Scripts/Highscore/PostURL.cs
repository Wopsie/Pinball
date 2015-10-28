using UnityEngine;
using System.Collections;

public class PostURL : MonoBehaviour
{
    //string variable filled in by form called "playerName"
    //integer variable score.
    private string name;

    void Start()
    {
        string url = "http://localhost/pinballscores/";
        WWWForm form = new WWWForm();
        form.AddField("Name", name);
        form.AddField("Score", ScoreManager.score.ToString());
        WWW www = new WWW(url, form);
        StartCoroutine(WaitForRequest(www));
    }

    void ParseString(string IncText)
    {

    }

    IEnumerator WaitForRequest(WWW www)
    {
        yield return www;

        if (www.error == null)
        {
            Debug.Log("WWW OK!: " + www.text);
        }
        else
        {
            Debug.Log("WWW ERROR!: " + www.error);
        }
    }
}