using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

// usage: put this script on the button that will control the lift
// intent: allows the lift to move up and down when the button is pressed
public class LiftButton : MonoBehaviour
{

	public GameObject lift;

	private bool in_range;

	[HideInInspector] public bool up;
	[HideInInspector] public bool down = true;
	[HideInInspector] public bool ascending;
	[HideInInspector] public bool descending;

	private float t = 0; // interpolator

	private float start_y;
	public float end_y;
	public float speed;

	void Start()
	{
		start_y = lift.transform.position.y;
	}
	
	// Update is called once per frame
	void Update () {
		if (ascending)
		{
			t += Time.deltaTime;
			Ascend();
		} else if (descending)
		{
			t += Time.deltaTime;
			Descend();
		}
		else
		{
			lift.GetComponent<Rigidbody>().velocity = Vector3.zero;
		}


		// when the player presses the button, set ascending to true
		if (in_range && Input.GetKeyDown(KeyCode.Space))
		{
			ascending = true;
		}
	}

	// for when the player presses the button, and wants to go up
	void Ascend()
	{
		//float upY = Mathf.Lerp(start_y, end_y, t);

		//lift.transform.position = new Vector3(lift.transform.position.x, upY, lift.transform.position.z);
		lift.GetComponent<Rigidbody>().velocity = new Vector3(0, speed, 0);
		
		if (lift.transform.position.y >= end_y)
		{
			ascending = false;
			lift.GetComponent<Rigidbody>().isKinematic = true;
			t = 0;
		}
		
		up = true;
		down = false;
	}

	// for when the lift is at the top, and needs to go down
	// this gets called in the script "lift" when the player exits
	public void Descend()
	{
		//float downY = Mathf.Lerp(end_y, start_y, t);

		//lift.transform.position = new Vector3(lift.transform.position.x, downY, lift.transform.position.z);
		lift.GetComponent<Rigidbody>().velocity = new Vector3(0, -speed, 0);
		
		if (lift.transform.position.y <= start_y)
		{
			descending = false;
			t = 0;
		}

		up = false;
		down = true;
	}

	void OnTriggerEnter(Collider coll)
	{
		GameObject other = coll.gameObject;

		if (other.CompareTag("Player"))
		{
			in_range = true;
		}
	}

	void OnTriggerExit(Collider coll)
	{
		GameObject other = coll.gameObject;

		if (other.CompareTag("Player"))
		{
			in_range = false;
		}
	}
}
