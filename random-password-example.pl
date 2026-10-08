#!/usr/bin/perl

use 5.022;
use warnings;

require './random.pl';

say join'', map +(0..9,'a'..'z','A'..'Z')[secure_rand(10+26*2)], 1..22;


1;
