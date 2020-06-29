#!/bin/bash
#Bash multifunctions example! 

 a () {
	b () {
		d () {
			echo d
		}
		e () {
			echo e
		}
		d; e;
	}
	c () {
		f () {
			echo f
		}
		g () {
			echo g
		}
		f; g;
	}
	b; c;
}

a;

