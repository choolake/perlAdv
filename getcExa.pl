#!perl
package MyArray;
use warnings;
#use strict;
$word_in=<STDIN>;
print "you typed: $word_in";

$key = getc(STDIN);
print "Enterd Value is $key\n";


#create a file
open(DATA,">testfile.txt");      
  close(DATA);

#rename a file
rename( "testfile.txt", "rename.txt");

#Delete a file
unlink("rename.txt");

open FH, '<',"names_groups.txt";

my $char=getc FH;
print "First Letter $char\n";
my $line=tell FH;
print "I am at $line\n";

$char=getc FH;
print "Second Letter $char\n";
$line=tell FH;
print "I am at $line\n";