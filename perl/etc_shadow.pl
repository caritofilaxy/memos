#!/bin/perl

#use Digest::SHA qw(sha512);

#$p = sha512("123");
#print $p."\n";
#
#


$d = crypt("123", "\$6\$");

print $d . "\n";
