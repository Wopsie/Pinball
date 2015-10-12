using UnityEngine;
using System.Collections;

public class PostURL : MonoBehaviour
{
    void Start()
    {
        string url = "19176.hosts.ma-cloud.nl/bewijzenmap/jaar2/PRO/Pinball/andere.php";
        WWWForm form = new WWWForm();
        //form.AddField("Name", "Player");
        //form.AddField("Score", "Number");
        WWW www = new WWW(url/*, form*/);
        StartCoroutine(WaitForRequest(www));
    }

    void Update()
    {
        //ParseString();
    }

    void ParseString(string IncText)
    {
        Debug.Log(IncText.Trim().Split('\n'));
        /*foreach(IncText.Trim);
        {
            
        }*/
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