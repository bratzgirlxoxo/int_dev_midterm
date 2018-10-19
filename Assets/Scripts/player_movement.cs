using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// usage: this script should be put on the player game object
// intent: this script controls basic movement.
// it does not cover other core mechanics like popping things
public class player_movement : MonoBehaviour
{

	private Vector3 input_vector;
	private bool on_stairs;
	private float time_since_stairs = 0;

	public float move_scale; // movement speed
	public float grav_scale = 0.25f; // scale of gravity when moving
	public float up_speed = 1f; // speed going up

	public float stair_ray_dist; // distance of stair ray
	
	// Update is called once per frame
	void Update ()
	{
		if (Manager.instance.intro_done)
		{
			time_since_stairs += Time.deltaTime;
		
			LookForStairs();
		
			// get horizontal and vertical input
			float side = Input.GetAxis("Horizontal");
			float fwd = Input.GetAxis("Vertical");
		
			input_vector = transform.forward * fwd + transform.right * side;

			if ((input_vector != Vector3.zero && time_since_stairs < 0.5f) || (on_stairs && input_vector != Vector3.zero))
			{
				input_vector += new Vector3(0f, up_speed, 0f);
			}
		}
	}
	
	void FixedUpdate()
	{
		// override object's velocity with desired inputVector direction
		if (on_stairs && input_vector == Vector3.zero)
		{
			GetComponent<Rigidbody>().velocity = Vector3.zero;
		} else if (on_stairs || input_vector != Vector3.zero && time_since_stairs < 0.5f)
		{
			// add a clamping
			GetComponent<Rigidbody>().velocity = input_vector.normalized * move_scale * 2 + Physics.gravity * grav_scale;
		}
		else
		{
			// add a clamping
			GetComponent<Rigidbody>().velocity = input_vector.normalized * move_scale + Physics.gravity * grav_scale;
		}
	}

	void LookForStairs()
	{
		Ray stair_ray = new Ray(transform.position, transform.forward); // create a ray pointing forward;

		float max_ray_dist = 1.25f; // set the distance of the casted ray

		Debug.DrawRay(stair_ray.origin, stair_ray.direction * max_ray_dist, Color.blue);

		RaycastHit rayhit_f = new RaycastHit();

		bool rcastf = Physics.Raycast(stair_ray, out rayhit_f, max_ray_dist);

		if (rcastf)
		{
			if (rayhit_f.transform.CompareTag("stairs"))
			{
				on_stairs = true;
				time_since_stairs = 0;
			}
			else
			{
				on_stairs = false;
			}
		}
		else
		{
			on_stairs = false;
		}
	}
}
