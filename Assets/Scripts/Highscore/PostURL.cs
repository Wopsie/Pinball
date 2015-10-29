using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PostURL : MonoBehaviour
{
    [SerializeField]
    private Text scoreBoardText;
    public string url = "19176.hosts.ma-cloud.nl/bewijzenmap/jaar2/PRO/Pinball/";
    private string _player = "";
    private string _score = "";
    private string urlString;

    void OnGUI()
    {
        //creates textfield for playername and converts score int to string.
        GUI.Label(new Rect(410, 480, 50, 25), "Name");
        _player = GUI.TextField(new Rect(470, 480, 100, 25), _player);
        _score = ScoreManager.score.ToString();

        //save playername
        if (GUI.Button(new Rect(580, 480, 80, 25), "Submit"))
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