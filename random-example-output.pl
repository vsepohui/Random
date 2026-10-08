#!/usr/bin/perl

use 5.022;
use warnings;

require './random.pl';

for (1..10000000) {
	say secure_rand();
}

1;
