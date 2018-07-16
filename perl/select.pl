#!/usr/bin/perl

use v5.020;
use warnings;

open(my $fh, ">", "tmpfile");

select $fh;		# select stdout
$| = 1;

while(<>) {
	print $_; 	# output goes to $fh
}

close($fh);
unlink "tmpfile";
