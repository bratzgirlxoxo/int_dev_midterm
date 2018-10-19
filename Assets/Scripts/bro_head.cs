using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bro_head : MonoBehaviour
{

	public float scroll_speed;

	private MeshRenderer rend;
	public mesh_expand bro;

	void Start()
	{
		rend = GetComponent<MeshRenderer>();
	}
	
	// Update is called once per frame
	void Update () {
		
		if (bro.transform.localScale.x <= bro.load_scale)
			rend.material.mainTextureOffset += new Vector2(Time.deltaTime * scroll_speed, 0);
		else
		{
			rend.material.mainTextureOffset += new Vector2(Time.deltaTime * scroll_speed * 5, 0);
		}
	}
}
