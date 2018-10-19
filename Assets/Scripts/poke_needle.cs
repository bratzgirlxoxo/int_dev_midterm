using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// usage: put this script on the needle that the player carries
// inter: simple intention... just pop the bro rage balloon when poked with needle
public class poke_needle : MonoBehaviour
{

	public Text ui_text;
	public ParticleSystem part;

	private bool in_range;
	private bool has_needle;

	private GameObject player;

	void Update()
	{
		if (!has_needle && in_range && Input.GetKeyDown(KeyCode.Space))
		{
			has_needle = true;
			transform.parent = player.transform; // parent needle to player
			transform.localPosition = new Vector3(0.75f, 0f, 1.5f); // hold needle
			transform.eulerAngles = new Vector3(0, 75, 90); // hold needle
			GetComponent<BoxCollider>().enabled = false;
			ui_text.text = ""; // clear ui
			Destroy(Manager.instance.start_barrier_1); // destroy barrier 1 blocking the path
			Destroy(Manager.instance.start_barrier_2); // destroy barrier 2 blocking the path

		}
	}
	
	// if the colliders pass through each other... start to deflate the bro rage balloon
	void OnTriggerEnter(Collider coll)
	{
		GameObject other = coll.gameObject;
		if (other.CompareTag("bro")) // when you stab a bro rage bubble
		{
			part.Play();
			other.GetComponent<mesh_expand>().inflating = false; // only for mid inflating
			other.GetComponent<mesh_expand>().deflating = true; // start to deflate
			other.GetComponent<mesh_expand>().t = 0; // set lerp interpolator back to 0
			other.transform.parent.GetComponent<ParticleSystem>().Stop(); // stop the particle emission of bro
			
		} else if (other.CompareTag("Player")) // this part of the if only applies for picking up the needle
		{
			player = other;
			in_range = true;
			ui_text.text = "Press Space to Pick Up Needle... \nPoke the bros going crazy on both floors. Save the Dancers!";
		}
	}

	// this is only for the beginning when picking up the needle in the hallway
	void OnTriggerExit(Collider coll)
	{
		GameObject other = coll.gameObject;
		if (other.CompareTag("Player"))
		{
			in_range = false;
			ui_text.text = "";
		}
	}
}
