#!/usr/bin/perl

use 5.022;
use warnings;

require './random.pl';

while (1) {
	print chr secure_rand(256);
}

1;
