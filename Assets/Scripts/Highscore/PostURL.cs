using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PostURL : MonoBehaviour
{
    [SerializeField]
    private Text scoreBoardText;
    public string url = "http://localhost/pinballscores/";
    private string _player = "";
    private string _score = "";
    private string urlString;

    

    

    void OnGUI()
    {
        GUI.Label(new Rect(10, 10, 50, 25), "Name");
        _player = GUI.TextField(new Rect(70, 10, 100, 25), _player);
        GUI.Label(new Rect(360, 10, 50, 25), "Score");
        _score = GUI.TextField(new Rect(400, 10, 100, 25), _score);

        //save playername
        if (GUI.Button(new Rect(180, 10, 80, 25), "Send Name"))
        {
            StartCoroutine("SaveName");
        }
    }

    private IEnumerator SaveName()
    {
        string urlString = url + "?name=" + WWW.EscapeURL(_player) + "&score=" + WWW.EscapeURL(_score);
        Debug.Log("Sending: " + urlString);
        WWW postName = new WWW(urlString);

        yield return postName;

        Debug.Log(postName.text);
        scoreBoardText.text = postName.text;
    }
    
    /*
    void Start()
    {
        WWWForm form = new WWWForm();
        WWW www = new WWW(url, form);
        StartCoroutine(WaitForRequest(www));
    }

    
    IEnumerator WaitForRequest(WWW www)
    {
        yield return www;
        www.text.Split('\n');
        //Debug.Log(www.text);
        scoreBoardText.text = www.text;
        if (www.error == null)
        {
            Debug.Log("WWW OK!: " + www.text);
        }
        else
        {
            Debug.Log("WWW ERROR!: " + www.error);
        }

    }*/
}


   
