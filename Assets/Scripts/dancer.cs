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

	public float rotate_min;
	public float rotate_max;
	public float dance_interval;
	private float dance_freq;

	public Mesh[] meshes;

	private int dance_idx = 0;

	void Awake()
	{
		dance_freq = Random.Range(dance_interval, dance_interval * 2f);
		true_scale = transform.localScale.x;
	}
		
	// Update is called once per frame
	void Update () {

		if (Manager.instance.intro_done)
		{
			// if the dancer is out of the range of the bro rage,
			// grow back to normal size
			if (!shrinking && transform.localScale.x < true_scale)
			{
				transform.localScale += new Vector3(0.002f, 0.002f, 0.002f);
				shrinking = false;
			}
			else
			{
				dance_timer += Time.deltaTime;
			}
		

			if (!shrinking && dance_timer >= dance_freq)
			{
				dance_timer = 0;
				dance_freq = Random.Range(dance_interval, dance_interval * 2f);
				Dance();
			}
		
			// if dancer gets too small... is destroyed
			if (transform.localScale.x < 0.2f)
			{
				Destroy(transform.gameObject);
			}
		}
	}

	// if dancer within the range of the bro rage, slowly shrink
	void OnTriggerStay(Collider coll)
	{
		GameObject other = coll.gameObject;
		if (other.CompareTag("bro"))
		{
			shrinking = true;
			transform.localScale -= new Vector3(0.00075f, 0.00075f, 0.00075f);
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
		dance_idx++;
		GetComponent<MeshFilter>().mesh = meshes[dance_idx % 2]; // alternate between the two meshes
		if (dance_idx % 2 == 0)
		{
			transform.Rotate(0f, Random.Range(rotate_min, rotate_max), 0f);
		} else if (dance_idx % 6 == 0)
		{
			transform.Rotate(0f, -Random.Range(rotate_min, rotate_max), 0f);

		}
		
		float x = Random.Range(-1f, 1f);
		float z = Random.Range(-1f, 1f);
		transform.position += new Vector3(x/4f, 0, z/4f);
	}
}
