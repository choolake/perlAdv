#!perl
package MyArray;
use warnings;
use strict;

sub TIEARRAY{
  print "TYING\n";
  bless[];

}
sub DESTROY{
  print "DESTROYING\n";

}
sub STORE{
  my ($self, $index,$value)=@_;
  print "STROYING $value at $index\n";
  $self[$index]=$value;
}
sub FETCH{
  my ($self, $index)=@_;
  print "FETCHING $value at $index\n";
  $self[$index]=$value;
}

package main;
$object=tie @x,MyArray;
print "Object is a ", ref($object),"\n";
$x[0] ="This is a test";
print $x[0],"/n";
print $object->FETCH(0),"\n"
#untie @x; # now @x is a noramal array again
