using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lift : MonoBehaviour
{

	public LiftButton button;

	void OnCollisionExit(Collision coll)
	{
		GameObject other = coll.gameObject;

		if (other.CompareTag("Player") && button.up)
		{
			button.descending = true;
			GetComponent<Rigidbody>().isKinematic = false;
			Debug.Log("Descending");
		}
	}
}
