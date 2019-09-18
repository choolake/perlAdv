#!perl
package MyArray;
use warnings;
#use strict;
use Fcntl;

my $fn="names_write.txt";

sysopen (FH, "$fn",O_RDWR,0755) || die "couldn't open the file,$!";

while (<FH>) {
  print $_;
}

close(FH);