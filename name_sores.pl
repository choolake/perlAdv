#!perl
package NameScores;
use warnings;
use strict;
use Data::Dumper qw(Dumper);

my $filename=shift||'names_scores.txt';
my %scores_of;

open my $fh, '<', $filename or die;
while (my $line =<$fh>){
    chomp $line;
    my ($name,$scores_str)=split /:/,$line;
    my @scores=split /,/,$scores_str;
    $scores_of{$name}=\@scores;
}
print Dumper \%scores_of;
print "---------\n";
my $name='Mary';
foreach my $score (@{$scores_of{$name}}){
    print $score."\n";
}