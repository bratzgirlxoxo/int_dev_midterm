﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class end_cam_rotate : MonoBehaviour
{

	public float rotate_speed;
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(0f, rotate_speed, 0f);
	}
}
