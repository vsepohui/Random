#!/usr/bin/perl

use 5.022;
use warnings;

use Time::HiRes;

state $SEED = get_time();

sub get_time {
	return join '', Time::HiRes::gettimeofday;
}

sub secure_srand {
	$SEED = shift // get_time();
	warn $SEED;
}

sub secure_rand {
	my $num = shift;
	
	my $r = (sin($SEED) + 1) / 2;
	$SEED *= $r+0.8;
	$SEED /= 101 if ($SEED >= 10**22);
	

	my $s = $r;
	$s =~ s/\.//;
	$r = $r * substr($s, -5, -1);
	$r = substr($r, 0, 22);
	$r =~ s/\.//;
	$r = int $r;
	$r = '0.'.$r;
	
	return $num ? int $num * $r : $r;
}


1;
