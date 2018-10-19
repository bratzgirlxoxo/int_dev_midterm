using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Intro : MonoBehaviour
{

	public Transform[] cam_positions; // positions cams will lerp to
	public Camera[] intro_cams; // cams
	public Camera game_cam;

	public float cam_interval = 5f; // time between cam lerps
	private float t = 0; // counter

	private int cam_idx; // to know which cam to lerp
	private float interpolator; // for lerping
	private bool lerping; // if cam is currently lerping to pos

	private Vector3 start_pos;
	
	// Update is called once per frame
	void Update ()
	{
	
		// at the very beginning
		if (cam_idx == 0 && interpolator == 0)
		{
			lerping = true;
			start_pos = intro_cams[cam_idx].transform.position;
		}
		
		// if not lerping, counter go up
		if (!lerping)
		{
			t += Time.deltaTime;
		}

		// if not first cam, and cam been at final pos for 2 seconds, then switch
		if (!lerping && interpolator != 0 && t >= cam_interval)
		{
			interpolator = 0;
			
			if (cam_idx != intro_cams.Length - 1)
			{
				Camera.main.enabled = false;
				intro_cams[++cam_idx].enabled = true;
			}
			else
			{
				// turn back on the ui
				foreach (GameObject d in Manager.instance.dancers)
				{
					d.GetComponent<MeshRenderer>().enabled = true;
				}
				foreach (Text txt in Manager.instance.bro_ui)
				{
					txt.enabled = true;
				}
				foreach (RawImage ri in Manager.instance.dancers_ui)
				{
					ri.enabled = true;
				}
				
				Camera.main.enabled = false;
				game_cam.enabled = true;
				Manager.instance.intro_done = true;
				Debug.Log("intro_done");
				Destroy(transform.gameObject);
			}
		}

		// wait
		if (t >= cam_interval + cam_interval)
		{
			lerping = true;
			start_pos = intro_cams[cam_idx].transform.position;
		}

		if (lerping)
		{
			Debug.Log("lerping");
			CamLerp(cam_idx);
		}
	}

	void CamLerp(int idx)
	{
		interpolator += Time.deltaTime;

		intro_cams[idx].transform.position = Vector3.Lerp(start_pos, cam_positions[idx].position, interpolator);

		if (Mathf.Abs(intro_cams[idx].transform.position.x - cam_positions[idx].position.x) <= 0.01f)
		{
			
			lerping = false;
			t = 0;
		}
	}
	
}
