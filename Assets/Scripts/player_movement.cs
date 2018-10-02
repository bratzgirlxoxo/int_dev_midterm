using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// usage: this script should be put on the player game object
// intent: this script controls basic movement.
// it does not cover other core mechanics like popping things
public class player_movement : MonoBehaviour
{

	private Rigidbody rbody;
	private Vector3 input_vector;

	public float move_scale;
	public float grav_scale = 0.25f;
	public float rotate_scale = 1f;
	
	
	// Use this for initialization
	void Start ()
	{
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		// MOUSE LOOK
		// getting mouse input
		float mouseX = Input.GetAxis("Mouse X"); // horizontal mouse movement
		float mouseY = Input.GetAxis("Mouse Y"); // vertical mouse movement
		
		
		// rotate camera based on mouse input
		transform.Rotate(0f, mouseX * rotate_scale, 0f); // rotate rbody l and r
		Camera.main.transform.Rotate(-mouseY * rotate_scale, 0f, 0f); // rotate cam up and down 
		
		
		// get horizontal and vertical input
		float side = Input.GetAxis("Horizontal");
		float fwd = Input.GetAxis("Vertical");
		
		input_vector = transform.forward * fwd + transform.right * side; 
	}
	
	void FixedUpdate()
	{
		// override object's velocity with desired inputVector direction
		GetComponent<Rigidbody>().velocity = input_vector * move_scale + Physics.gravity * grav_scale;
	}
}
