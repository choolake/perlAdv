#!perl
package MyArray;
use warnings;
use strict;
use Data::Dumper qw(Dumper);
###stack
print "-------------Making a Stack\n";
my @stack= qw(1 2 3 );
print "Intial stack:@stack\n";
push(@stack,4);
print "after Push Stack:@stack\n";
pop(@stack);
print "after Pop Stack:@stack\n";
print "end of Stack LIFO\n";
###Queue

print "--------------Making a Queue\n";
my @queue= qw(1 2 3);
print "Intial stack:@queue\n";
push(@queue,4);
print "after Push Stack:@queue\n";
shift(@queue);
print "after Pop Stack:@queue\n";
print "end of Stack FIFO\n";
