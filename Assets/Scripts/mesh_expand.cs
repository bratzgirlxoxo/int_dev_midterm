using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.SocialPlatforms;


// usage: put this on the aura object that is attached to every bro
// intent: a lot of this script is sfx things related to the
// bro rage. Besides that, it controls the inflation and deflation of the bro rage
public class mesh_expand : MonoBehaviour
{

	[HideInInspector] public bool inflating; // whether or not the bro is inflating
	[HideInInspector] public bool deflating; // whether or not the bro is inflating
	[HideInInspector] public int floor; // if the bro is on floor 0 or 1

	private float startScale;
	[HideInInspector] public float endScale;
	private float load_scale;
	private float perlinX = 0.0f;
	private float perlinY = 0.0f;
	private int lightning_counter = 0;

	private Vector3 relative_pos;
	
	
	public int lightning_size;
	public float lightnight_width;

	private GameObject[] lightning_objs;
	private LineRenderer lightning;

	[HideInInspector] public float t = 0; // interpolating value for Lerping
	private float lerp;
	private float rage_frequency;
	public float rage_range_min;
	public float rage_range_max;
	private float rage_counter = 0;
	private int idx = 0; // index for the cache
	
	void Start()
	{
		load_scale = transform.localScale.x;
		endScale = load_scale * 5f;
		lightning_objs = new GameObject[lightning_size];
		lightning = GetComponent<LineRenderer>();
		lightning.SetPosition(0, transform.position);
		lightning.positionCount = 3;
		startScale = load_scale;

		rage_frequency = rage_range_max;
		rage_frequency = Random.Range(rage_range_min, rage_range_max);
		relative_pos = transform.localPosition;
	}

	void Update()
	{
		transform.localPosition = relative_pos;
		
		// randomly go into bro rage
		if (rage_counter >= rage_frequency)
		{
			rage_frequency = Random.Range(rage_range_min, rage_range_max);
			rage_counter = 0;
			inflating = true;
		}

		if (inflating)
		{
			Inflate();
		}
		else if (transform.localScale.x < endScale)
		{
			rage_counter += Time.deltaTime; // when not inflating... get ready to inflate
		}

		// deflate
		if (deflating && transform.localScale.x != load_scale)
		{
			Deflate();
		}
		
		// only do this when the bro is fully inflated
		if (transform.localScale.x == endScale)
		{
			
			// send out lightning bolts
			// every ten frames create a new lightning bolt
			
			if (lightning_counter == 5)
			{
				lightning_counter = 0;
			}
			
			if (lightning_counter == 0)
			{
				lightning.SetPosition(1, lightning_objs[Random.Range(0, lightning_size-1)].transform.position);
				lightning.SetPosition(2, lightning_objs[Random.Range(0, lightning_size-1)].transform.position);
				
			}
			
			lightning_counter++;
		}
	}

	// controls the inflation of the bro rage bubble
	void Inflate()
	{
		lerp = Mathf.Lerp(startScale, endScale, t);
		transform.localScale = new Vector3(lerp, transform.localScale.y, lerp);
		t += Time.deltaTime * 0.5f;

		if (transform.localScale.x >= endScale)
		{
			transform.parent.gameObject.GetComponent<ParticleSystem>().Play();
			inflating = false;

			lightning.enabled = true;
			for (int i = 0; i < lightning_size; i++)
			{
				lightning_objs[i] = new GameObject();
				lightning_objs[i].transform.position = transform.position + Random.insideUnitSphere*1.5f;
			}
		}
	}

	// controls the deflation of the bro rage bubble
	void Deflate()
	{
		lerp = Mathf.Lerp(endScale, startScale, t);

		
		transform.localScale = new Vector3(lerp, transform.localScale.y, lerp); // lerp back to original size
		t += Time.deltaTime * 0.5f;
		
		if (transform.localScale.x <= startScale)
		{
			deflating = false; // no longer deflating
			t = 0; // reset interpolator for lerping
			
			// destroy all the lightning points
			lightning.enabled = false;
			foreach (GameObject g in lightning_objs)
			{
				Destroy(g);
			}
		}
	}



}
