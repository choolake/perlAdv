#!perl
package Namegroups;
use warnings;
use strict;
use Data::Dumper qw(Dumper);
use LWP::UserAgent;
use HTTP::Request;

my $userAgent = LWP::UserAgent->new();
my $request = HTTP::Request->new(
    POST => "https://users.cs.cf.ac.uk/Dave.Marshall/PERL/node135.html"
);
$request->content("stuff=foobar");
$request->content_type("application/x-www-form-urlencoded");
my $response = $userAgent->request($request);

if ($response->code == 200) {
    print $response->as_string;
}
else {
   die $response->status_line;
}