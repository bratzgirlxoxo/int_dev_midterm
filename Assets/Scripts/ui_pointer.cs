using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//usage: put this script on the ui pointer object that should be a child of player
//intent: point toward the raging bros!
public class ui_pointer : MonoBehaviour {

	[HideInInspector] public List<GameObject> raging_bros = new List<GameObject>(); 
	
	
	public void LookAt()
	{
		GameObject closest_bro;
		
		
		
		
		Vector3 A = transform.position;
		//Vector3 B = bro.transform.position;
		//Vector3 AtoB = B - A;
		
		//transform.forward = AtoB;
	}
}
