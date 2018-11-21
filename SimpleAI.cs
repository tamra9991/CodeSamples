/* ===========================================
 * SimpleAI 
 * 	Attach to a game object.
 * 	Define the "target" object.
 * 	Will chase (or avoid) the target object.
=========================================== */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleAI : MonoBehaviour {

	// A reference to the GameObject that this object will chase or avoid
	public GameObject target;

	// The force multiplier for force on the X and Z axis.
	public float moveSpeed = 10f;

	// The direction of force to be applied
	private Vector3 towardTarget;

	// A reference to the Rigidbody component attached to this GameObject
	private Rigidbody myRigidbody;

	void Start () {
		// Set the reference to my Rigidbody
		myRigidbody = gameObject.GetComponent<Rigidbody> ();
	}
	
	void Update () {
		// Calculate the direction toward the target
		towardTarget = target.transform.position - gameObject.transform.position;
		// Add the force to move this object
		myRigidbody.AddForce (towardTarget.normalized * moveSpeed);
	}
}
