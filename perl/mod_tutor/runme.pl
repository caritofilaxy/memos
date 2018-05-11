#!/usr/bin/perl

use strict;

my @list = qw(J u s t ~ A n o t h e r ~ P e r l ~ H a c k e r !);

# case 1
#use MyMod;
#print f1(@list), "\n";
#print f2(@list), "\n";

# case 2 (works)
#use MyMod qw(&f1);
#print f1(@list), "\n";
#print MyMod::f2(@list), "\n";

# case 3
#use MyMod qw(:DEFAULT);
#print f1(@list), "\n";
#print f2(@list), "\n";

# case 4 (works)
#use MyMod qw(:Both);
#print f1(@list), "\n";
#print f2(@list), "\n";

