using System.Collections;
using System.Collections.Generic;
using UnityEditor.Rendering;
using UnityEngine;
using UnityEngine.SocialPlatforms;


// usage: put this on the aura object that is attached to every bro
// intent: a lot of this script is sfx things related to the
// bro rage. Besides that, it controls the inflation and deflation of the bro rage
public class mesh_expand : MonoBehaviour
{

	public bool inflating;
	public bool deflating;

	public GameObject pointer;

	private float startScale;
	private float perlinX = 0.0f;
	private float perlinY = 0.0f;
	private int lightning_counter = 0;
	
	public float endScale;
	public int lightning_size;
	public float lightnight_width;

	private Vector2[] uvs; // array of uvs
	private int[] uv_cache; // this cache holds uv indeces for recently changed uvs... to change them back
	private GameObject[] lightning_objs;
	private LineRenderer lightning;

	[HideInInspector] public float t = 0; // interpolating value for Lerping
	private float rage_frequency;
	public float rage_range;
	private float rage_counter = 0;
	private int idx = 0; // index for the cache
	
	void Start()
	{
		uv_cache = new int[10];
		lightning_objs = new GameObject[lightning_size];
		lightning = GetComponent<LineRenderer>();
		lightning.SetPosition(0, transform.position);
		lightning.positionCount = 3;
		startScale = 1.1f;
		uvs = GetComponent<MeshFilter>().mesh.uv;
		for (int i = 0; i < uvs.Length; i++)
		{
			uvs[i] = new Vector2(0.01f, 0.01f);
		}

		for (int j = 0; j < uv_cache.Length; j++)
		{
			uv_cache[j] = -1;
		}

		GetComponent<MeshFilter>().mesh.uv = uvs;

		rage_frequency = rage_range;
		rage_frequency = Random.Range(0, rage_range);
	}

	void Update()
	{
		uvs = GetComponent<MeshFilter>().mesh.uv;
		transform.position = transform.parent.transform.position;
		
		// randomly go into bro rage
		if (rage_counter >= rage_frequency)
		{
			rage_frequency = Random.Range(0, rage_range);
			rage_counter = 0;
			inflating = true;
		}

		if (inflating)
		{
			Inflate();
		}
		else if (transform.localScale.x <= endScale)
		{
			rage_counter += Time.deltaTime; // when not inflating... get ready to inflate
		}

		// deflate
		if (deflating)
		{
			Deflate();
		}
		
		// only do this when the bro is fully inflated
		if (transform.localScale.x == endScale)
		{
			pointer.GetComponent<ui_pointer>().LookAt(transform.gameObject);
			
			
			perlinX += Time.deltaTime;
			perlinY += Time.deltaTime * Time.deltaTime;
			int uv_idx = Mathf.FloorToInt(Mathf.PerlinNoise(perlinX, perlinY) * (uvs.Length-1));
			uvs[uv_idx] = new Vector2(Random.value, Random.value);

			
			// if the cache isnt full, add to the cache
			if (uv_cache[uv_cache.Length - 1] == -1)
			{
				uv_cache[idx] = uv_idx;
				idx++;
			}
			else
			{
				// when the cache is full, set all the cached uv's back to 'red'
				// clear the cache
				for (int i = 0; i < uv_cache.Length; i++)
				{
					uvs[uv_cache[i]] = new Vector2(0.01f, 0.01f);
					uv_cache[i] = -1;
				}
				idx = 0;
			}
			
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

		GetComponent<MeshFilter>().mesh.uv = uvs;
	}

	// controls the inflation of the bro rage bubble
	void Inflate()
	{
		transform.localScale = Vector3.one * Mathf.Lerp(startScale, endScale, t);
		t += Time.deltaTime * 0.5f;

		if (transform.localScale.x >= endScale)
		{
			transform.parent.gameObject.GetComponent<ParticleSystem>().Play();
			inflating = false;

			pointer.SetActive(true);

			lightning.enabled = true;
			for (int i = 0; i < lightning_size; i++)
			{
				lightning_objs[i] = new GameObject();
				lightning_objs[i].transform.position = transform.position + Random.insideUnitSphere*2.5f;
			}
		}
	}

	// controls the deflation of the bro rage bubble
	void Deflate()
	{
		pointer.SetActive(false);
		
		transform.localScale = Vector3.one * Mathf.Lerp(endScale, startScale, t); // lerp back to original size
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
