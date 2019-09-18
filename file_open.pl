#!perl
package MyArray;
use warnings;
#use strict;

open (CHECKBOOK, "names_groups.txt") || die "couldn't open the file,$!";

while (<CHECKBOOK>) {
  print $_;
}

close(CHECKBOOK);