#!perl
package MyArray;
use warnings;
#use strict;

my $fn="names_write.txt";
open (my $fh,'>' ,$fn);
print $fh "My first line entry in perl\n";
close $fh;
print "done\n";

open (CHECKBOOK, "$fn") || die "couldn't open the file,$!";

while (<CHECKBOOK>) {
  print $_;
}

close(CHECKBOOK);