#!perl
package MyArray;
use warnings;
use strict;
use Data::Dumper qw(Dumper);

my %grades;
$grades{"Foo Bar"}{Mathematics}=97;
$grades{"Foo Bar"}{Literature}=67;
$grades{"Peti Bar"}{Literature}=88;
$grades{"Peti Bar"}{Mathematics}=82;
$grades{"Peti Bar"}{Art}=99;

print Dumper \%grades;
print "---------\n";

foreach my $name (sort keys %grades){ #assigning automatically the ref
  foreach my $sub (keys %{$grades{$name}}){
    print "$name,$sub:$grades{$name}{$sub}\n";
  }

}