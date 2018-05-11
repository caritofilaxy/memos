#!/usr/bin/perl

use strict;
use warnings;
use Net::SMTP;

my $roof = << 'ROOF';
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>title</title>
</head>
<body>
ROOF

my $basement = << 'BASEMENT';
</body>
</html>
BASEMENT

my $html;

$body = "some <b>bold</b> or <i>italic</i> or other html stuff\n";

$html = $roof;
$html .= $body;
$html .= $basement;

my $mailfrom = "sender\@domain.com";
my $rcptto = "recipient\@domain.com";

my $smtp = Net::SMTP->new('localhost');
$smtp->mail($mailfrom);
if ($smtp->to($rcptto)) {
$smtp->data();
$smtp->datasend("From: $mailfrom\n");
$smtp->datasend("To: $rcptto\n");
$smtp->datasend("Subject: subject\n");
$smtp->datasend("MIME-Version: 1.0\n");
$smtp->datasend("Content-Type: multipart/mixed; boundary=frontier\n");
$smtp->datasend("Content-Transfer-Encoding: quoted-printable\n");
$smtp->datasend("Content-Type: text/html; charset=\"UTF=8\"\n");
$smtp->datasend($html);
$smtp->dataend();
} else {
print "Error: ",
$smtp->message();
}
$smtp->quit;

