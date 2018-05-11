#!/usr/bin/perl

$file = $ARGV[0];
($mtime) = (stat($file))[9];
($sec,$min,$hour,$yday) = (localtime(time))[0,1,2,7];

$secs_from_midnight = $hour*60*60+$min*60+$sec;

$time = $mtime - $secs_from_midnight;

$time = $time - $yday*86400;

utime($time,$time,$file);

