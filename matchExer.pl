#!perl
package Namegroups;
use warnings;
use strict;
use Data::Dumper qw(Dumper);

my $bar ="This is foo and again foo";
if ($bar=~/foo/){
  print "First time is matching\n";
} else {
  print "First time is not matching\n";
}
$bar ="foo";
if ($bar=~/foo/){
  print "Second time is matching\n";
} else {
  print "Second time is not matching\n";
}

##Substitute
my $string="The cat sat on the mat";
$string=~s/cat/dog/;
print "$string\n";

my $string1="The cat sat on the mat";
$string1=~tr/a/o/;
print "$string1\n";

my $string2="The cat sat on the mat";
$string2=~tr/a-b/-/d;
print "$string2\n";

my $string3="The cat sat on the mat";
$string3=~tr/a-b/-/s;
print "$string3\n";

my $string4="Cats go Catatonic\nWhen given Catanip";
my ($start)=($string4=~/\A(.*?) /);
my @lines=$string4=~/^(.*?) /gm;
print "First word:$start\nLine starts:@lines\n";