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

	public float move_scale; // movement speed
	public float grav_scale = 0.25f; // scale of gravity when moving
	public float rotate_scale = 1f; // rotation speed
	public float up_speed = 1f; // speed going up

	public float stair_ray_dist; // distance of stair ray
	
	// Update is called once per frame
	void Update () {
		// MOUSE LOOK
		// getting mouse input
		float mouseX = Input.GetAxis("Mouse X"); // horizontal mouse movement
		float mouseY = Input.GetAxis("Mouse Y"); // vertical mouse movement
		
		
		// rotate camera based on mouse input
		transform.Rotate(0f, mouseX * rotate_scale, 0f); // rotate rbody l and r
		Camera.main.transform.Rotate(-mouseY * rotate_scale, 0f, 0f); // rotate cam up and down 
		
		LookForStairs();
		
		// get horizontal and vertical input
		float side = Input.GetAxis("Horizontal");
		float fwd = Input.GetAxis("Vertical");
		
		input_vector = transform.forward * fwd + transform.right * side;

		if (on_stairs && input_vector != Vector3.zero)
		{
			input_vector += new Vector3(0f, up_speed, 0f);
		}
	}
	
	void FixedUpdate()
	{
		// override object's velocity with desired inputVector direction
		GetComponent<Rigidbody>().velocity = input_vector.normalized * move_scale + Physics.gravity * grav_scale;
	}

	void LookForStairs()
	{
		Ray stair_ray = new Ray(transform.position, transform.forward); // create a ray pointing forward;
		Ray ground_ray = new Ray(transform.position, -transform.up);

		float max_ray_dist = 1.25f; // set the distance of the casted ray
		
		Debug.DrawRay(stair_ray.origin, stair_ray.direction * max_ray_dist, Color.blue);
		Debug.DrawRay(ground_ray.origin, ground_ray.direction * max_ray_dist, Color.yellow);
		
		RaycastHit rayhit_f = new RaycastHit();
		RaycastHit rayhit_d = new RaycastHit();

		bool rcastf = Physics.Raycast(stair_ray, out rayhit_f, max_ray_dist);
		bool rcastd = Physics.Raycast(ground_ray, out rayhit_d, max_ray_dist);

		if (rcastf)
		{
			if (rayhit_f.transform.CompareTag("stairs"))
			{
				on_stairs = true;
			}
			else
			{
				on_stairs = false;
			}
		}
		else if (rcastd)
		{
			if (rayhit_d.transform.CompareTag("stairs"))
			{
				on_stairs = true;
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
