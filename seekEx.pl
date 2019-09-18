#!perl
package MyArray;
use warnings;
#use strict;

use Fcntl qw(SEEK_SET);

open FH, '<', "seek.txt";

seek (FH,2,SEEK_SET);
my $line=tell FH;
print "I am at $line\n";
read FH,$twoToFive,5;
print "chr from 2 to 5chars: $twoToFive\n";
$line=tell FH;
print "I am at $line\n";

seek (FH,9,SEEK_SET);
$line=tell FH;
print "I am at $line\n";
close FH;

