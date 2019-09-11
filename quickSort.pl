#!perl
package MyArray;
use warnings;
#use strict;
use List::Util qw(shuffle);

use Data::Dumper qw(Dumper);
sub partition{
  my ($start,$end) = @_;
  my $pivot =$end;
  my $pindex=$start;
  for my $i ($start..$end-1){

    #for my $j ($pindex..$endindex){
      if($list[$i]<=$list[$pivot]){
         @list[$i,$pindex]=@list[$pindex,$i];
         $pindex++;
      }

    #}
    
    #print "$i\n";
  }
  @list[$pindex,$pivot]=@list[$pivot,$pindex];
  return $pindex;

}
sub quickSort{
  my ($start,$end) = @_;
  my $pindex=$start;
  if ($start<$end){
    $pindex=partition($start,$end);
    quickSort($start,$pindex-1);
    quickSort($pindex+1,$end);  
  }
  #print "@list\n";

}

#@list=qw(4 2 1 7 3 9 0 6 8 5);
@list=shuffle( 0 .. 9 );
quickSort(0,$#list);
print "@list\n";