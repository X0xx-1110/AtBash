#!/bin/bash
#something fancy over bash, predefinition of sub functions!
a () {
	b () {
		d () {
			echo 222;
		}  
		d;
	} 
	b;
	c () {
		e () {
			echo 3333;
		} 
		e;
	} 
	c;
	d () {
		b () {
			c () {
				e () {
					echo 44444;
				}
				e;
			}
			c;
		}
		b;
	}
	d;
}

a;

exit 0;
