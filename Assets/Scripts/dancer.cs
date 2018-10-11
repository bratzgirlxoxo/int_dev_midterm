using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// usage: put this script on all of the dancers that are NOT bros
// intent: gets the dancers to dance, shrink when touching bro rage,
// and grow when out of bro rage
public class dancer : MonoBehaviour
{

	private bool shrinking;
	private float start_scale;
	private float dance_timer = 0;
	private float t;

	private float true_scale;

	public float dance_interval;

	public GameObject pointer;

	void Awake()
	{
		true_scale = transform.localScale.x;
	}
		
	// Update is called once per frame
	void Update () {
		// if the dancer is out of the range of the bro rage,
		// grow back to normal size
		if (!shrinking && transform.localScale.x < true_scale)
		{
			t += Time.deltaTime;
			float q = Mathf.Lerp(start_scale, true_scale, t);
			transform.localScale = new Vector3(q, q, q);
			shrinking = false;
		}
		else
		{
			dance_timer += Time.deltaTime;
		}

		if (dance_timer >= dance_interval)
		{
			dance_timer = 0;
			Dance();
		}
		
		// if dancer gets too small... is destroyed
		if (Time.time > 5 && transform.localScale.x < 0.1f)
		{
			Destroy(transform.gameObject);
		}
		
	}

	// if dancer within the range of the bro rage, slowly shrink
	void OnTriggerStay(Collider coll)
	{
		GameObject other = coll.gameObject;
		if (other.CompareTag("bro"))
		{
			shrinking = true;
			transform.localScale -= new Vector3(0.001f, 0.001f, 0.001f);
		}
	}

	// when free from the bro rage, start to grow again
	void OnTriggerExit(Collider coll)
	{
		shrinking = false;
		start_scale = transform.localScale.x;
		t = 0;
	}

	// DANCE
	void Dance()
	{
		float x = Random.Range(-1f, 1f);
		float z = Random.Range(-1f, 1f);
		transform.position += new Vector3(x/4f, 0, z/4f);
	}
}
