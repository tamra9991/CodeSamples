//Not created from scratch by me, but I did use this a lot while making games in Unity (C#)

/* ===========================================
 * SimpleController 
 * 	Attach to a game object.
 * 	Use WASD to move it around.
 * 	Use space bar to make it jump.
=========================================== */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleController : MonoBehaviour {

	// The force multiplier for force on the X and Z axis.
	public float moveSpeed = 10f;

	// The force multiplier for force on the Y axis.
	public float jumpSpeed = 200f;

	// The hight (from 0) above which jumping is disabled.
	public float jumpMinHeight = 0.7f;

	// A reference to the Rigidbody component attached to this game object
	private Rigidbody myRigidbody;

	void Start () {
		// Set the reference to my Rigidbody
		myRigidbody = gameObject.GetComponent<Rigidbody> ();
	}
	
	void Update () {
		// Move up
		if(Input.GetKey(KeyCode.W)){
			myRigidbody.AddForce (0, 0, moveSpeed);
		}
		// Move left
		if(Input.GetKey(KeyCode.A)){
			myRigidbody.AddForce (-moveSpeed, 0, 0);
		}
		// Move down
		if(Input.GetKey(KeyCode.S)){
			myRigidbody.AddForce (0, 0, -moveSpeed);
		}
		// move right
		if(Input.GetKey(KeyCode.D)){
			myRigidbody.AddForce (moveSpeed, 0, 0);
		}
		// jump
		if(Input.GetKeyDown(KeyCode.Space)){
			if (gameObject.transform.position.y < jumpMinHeight) {
				myRigidbody.AddForce (0, jumpSpeed, 0);
			}
		}
	}
}
