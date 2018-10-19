using System.Collections;
using System.Collections.Generic;
using System.Security.Policy;
using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Manager : MonoBehaviour
{

	[HideInInspector] public bool intro_done;
	
	
	public GameObject start_barrier_1;
	public GameObject start_barrier_2;
	public GameObject[] dancers;
	public RawImage[] dancers_ui;
	public mesh_expand[] bros;

	public static Manager instance;

	private int start_num_dancers;

	private float counter = 0;
	private float counter2 = 0;
	private float ui_counter = 0;

	public float strobe_speed;

	public Light main_light;

	public Camera end_cam;

	private float survival_time;

	public Text ui_text;
	public Text[] bro_ui;

	public GameObject walls;
	public GameObject player;

	private bool end;

	void Start()
	{
		instance = this;
		start_num_dancers = dancers.Length;
	}
	
	// Update is called once per frame
	void Update ()
	{
		if (intro_done)
		{
			BrosUI();
			DancersUI();

			counter += Time.deltaTime;
			counter2 += Time.deltaTime;
			if (counter >= 3f)
			{
				counter = 0; // reset counter

				// check how many dancers still in club
				if (!end)
					end = CheckDancers();

				// if not enough... show end sequence
				if (end)
				{
					for (int i = 0; i < dancers.Length; i++)
					{
						if (dancers[i] != null)
						{
							Destroy(dancers[i]); // get rid of the rest of the dancers
						}
						Destroy(walls); // destroy walls


					}
					Camera.main.enabled = false; // disable cam
					end_cam.enabled = true; // enable end cam
					Destroy(player); // destroy player
					end_cam.transform.localEulerAngles = new Vector3(23.5f, 0f, 0f); // angle new cam
					ui_text.text = "The night is dead. You kept the party alive for " + survival_time + " seconds."; // new text
				}
			}
		}
		else
		{
			foreach (GameObject d in dancers)
			{
				d.GetComponent<MeshRenderer>().enabled = false;
			}

			foreach (Text t in bro_ui)
			{
				t.enabled = false;
			}

			foreach (RawImage ri in dancers_ui)
			{
				ri.enabled = false;
			}
		}
	}

	bool CheckDancers()
	{
		int num_dancers = 0;

		for (int i = 0; i < start_num_dancers; i++)
		{
			if (dancers[i] != null)
			{
				num_dancers++;
			}
		}

		// if less than 1/4 dancers alive, game over
		if (num_dancers <= start_num_dancers / 4)
		{
			survival_time = Time.time;
			return true;
		}

		return false;
	}

	void BrosUI()
	{
		
		for (int i = 0; i < bros.Length; i++)
		{
			if (bros[i].inflating || bros[i].transform.localScale.x == bros[i].endScale)
			{
				ui_counter += Time.deltaTime;
				if (ui_counter >= 0.5f)
				{
					ui_counter = 0;
					if (bro_ui[i].color == Color.white)
					{
						bro_ui[i].color = Color.red;
					}
					else
					{
						bro_ui[i].color = Color.white;
					}
				}
			}
			else
			{
				bro_ui[i].color = Color.white;
			}
		}
	}

	void DancersUI()
	{
		for (int i = 0; i < dancers.Length; i++)
		{
			if (dancers[i] == null && dancers_ui[i] != null)
			{
				Destroy(dancers_ui[i].gameObject);
			}
		}
	}

}
