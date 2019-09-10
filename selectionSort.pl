#!perl
package MyArray;
use warnings;
use strict;

use Data::Dumper qw(Dumper);
sub selSort{
  my @list = @_;
  for my $i (0..$#list-1){
    my $min =$i;
    for my $j ($i+1..$#list){
      if($list[$j]<$list[$min]){
        $min=$j;
      }

    }
    if ($i!=$min){
      @list[$i,$min]=@list[$min,$i];
    }
    #print "$i\n";
  }

  return @list;
}

my @unsort=reverse(1..10);
#selSort(@unsort);
my @sort= selSort(@unsort);
print "@sort\n";