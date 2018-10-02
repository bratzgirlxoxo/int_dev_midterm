using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// usage: put this script on the needle that the player carries
// inter: simple intention... just pop the bro rage balloon when poked with needle
public class poke_needle : MonoBehaviour {

	// if the colliders pass through each other... start to deflate the bro rage balloon
	void OnTriggerEnter(Collider coll)
	{
		Debug.Log("hit");
		GameObject other = coll.gameObject;
		if (other.CompareTag("bro"))
		{
			Debug.Log("stabbed bro");
			other.GetComponent<mesh_expand>().deflating = true;
			other.GetComponent<mesh_expand>().t = 0;
			other.transform.parent.GetComponent<ParticleSystem>().Stop(); // stop the particle emission of bro
		}
	}
}
