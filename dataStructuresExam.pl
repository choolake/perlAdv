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

print "--------------Making a Linked list with ref\n";
my @links= qw(2 Null 1);
print "Using Pointers\n";
my @nodes= qw(Finger:Null whois:Null who:Null);
for (my $i=0; $i<=$#nodes;$i++){
  my $ptr=\$nodes[$i];
  my @data=split(/:/,$$ptr);# split inedxed data by :
  print "Before: $ptr @data";
  $data[1]=$links[$i]; #add the link data to 1st entry of data 
  print "->@data\n";
  $$ptr=join ':',@data;
}
print "@nodes";
print "end of Linkd List\n";
