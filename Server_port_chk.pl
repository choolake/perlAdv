#!perl
use 5.010;

use warnings;
use strict;
use Net::Ping;
use IO::Select;
use IO::Socket;

my $p = Net::Ping->new();
sub checkAlive
{
  my @servers=@_;
#  print @servers;
  foreach my $ser (@servers) {
    if ($p->ping($ser)){
      say "$ser is alive";
    }else {
      say "$ser can't reach";
    }
  }
}

checkAlive("perlmaven.com", "apache.org", "www.perlmonks.org");

=for comment
my $net='10.100.1';

for my $ip (1..254) {
    print "$net.$ip\n" if $p->ping("$net.$ip");
    $p->close();
}
=cut