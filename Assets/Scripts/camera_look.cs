using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class camera_look : MonoBehaviour {

	public Transform target;
	
	// Update is called once per frame
	void Update ()
	{
		Vector3 A = Camera.main.transform.position;
		Vector3 B = target.transform.position;
		Vector3 AtoB = B - A;
		
		Camera.main.transform.forward = AtoB;
	}

	void OnDrawGizmos()
	{
		// for debug purposes, what if we wanted to see the line from A to B;
		if (target != null)
		{
			Gizmos.DrawLine(Camera.main.transform.position, target.position);
		}
	}
}
