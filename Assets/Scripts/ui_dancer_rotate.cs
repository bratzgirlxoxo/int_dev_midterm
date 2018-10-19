﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ui_dancer_rotate : MonoBehaviour
{

	public Texture[] images;

	private int img_idx = 0;

	private float timer;

	public float frame_rate;
	// Update is called once per frame
	void Update ()
	{
		timer += Time.deltaTime;

		if (timer >= frame_rate)
		{
			timer = 0;
			img_idx++;

			if (img_idx == images.Length)
			{
				img_idx = 0;
			}
			
			GetComponent<RawImage>().texture = images[img_idx];
		}
	}
}
