#!perl
package MyArray;
use warnings;
use strict;

my $fn="names_write.txt";
open ( FH,'>' ,$fn);
print FH "My first line entry in perl\n";
close FH;
print "done\n";

open (CHECKBOOK, "$fn") || die "couldn't open the file,$!";

while (<CHECKBOOK>) {
  print $_;
  my $line=tell CHECKBOOK;
  print "I am at $line";
}

close(CHECKBOOK);