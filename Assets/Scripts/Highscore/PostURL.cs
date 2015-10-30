using UnityEngine;
using System.Collections;
using UnityEngine.UI;



//HANDS OFF

// ~Jochem


public class PostURL : MonoBehaviour
{
    [SerializeField]
    private Text scoreBoardText;
    private string url = "http://localhost/pinballscores/";
    private string _player = "";
    private string _score = "";
    private string urlString;

    void OnGUI()
    {
        GUI.Label(new Rect(400, 500, 50, 25), "Name");
        _player = GUI.TextField(new Rect(450, 500, 100, 25), _player);
        _score = ScoreManager.score.ToString();
        GUI.Label(new Rect(400, 530, 50, 25), "Score: " + _score);
        

        //save playername
        if (GUI.Button(new Rect(580, 500, 80, 25), "Send Score"))
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
}
