#!perl
package MyArray;
use warnings;
use strict;

use Data::Dumper qw(Dumper);
sub bubbleSort{
  my @list = @_;
  for my $i (0..$#list-1){
    for my $j (0..$#list-1){
      if($list[$j]>$list[$j+1]){
        @list[$j,$j+1]=@list[$j+1,$j];
      }

    }
    #print "$i\n";
  }

  return @list;
}

my @unsort=reverse(1..10);
#selSort(@unsort);
my @sort= bubbleSort(@unsort);
print "@sort\n";