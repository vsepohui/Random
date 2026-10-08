#!/usr/bin/perl

use 5.022;
use warnings;

require './random.pl';

for (1..100000) {
	say secure_rand();
}

1;
