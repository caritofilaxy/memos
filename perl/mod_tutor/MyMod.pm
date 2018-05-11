package MyMod;

use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION        =       1.00;
@ISA            =       qw(Exporter);
@EXPORT         =       ();
@EXPORT_OK      =       qw(f1 f2);
%EXPORT_TAGS   =       ( DEFAULT    => [qw(&f1)],
                         Both       => [qw(&f1 &f2)]);

sub f1 { return reverse @_ }
sub f2 { return map { uc }@_ }

1;

