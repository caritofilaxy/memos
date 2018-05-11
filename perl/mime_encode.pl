#!/usr/bin/perl

use Encode qw(encode decode);

$str = "=?utf-8?B?UmU6INCQ0JjQodCiLdCcIDcuMCBTUDQgKDM0ODUzKSDQntGC0LfRi9CyINC/0L7RgdC70LUg?=";
$str .= '=?utf-8?B?0LLRi9C/0YPRgdC60LAg0L7RiNC40LHQutCw?=';

$decstr = decode("MIME-Header", $str);
print $decstr;

