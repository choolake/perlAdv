#!perl
package Namegroups;
use warnings;
use strict;
use Data::Dumper qw(Dumper);

my $filename=shift||'names_groups.txt';
my %groups_of;
my %members_of;

open my $fh, '<', $filename or die;
while (my $line =<$fh>){
    chomp $line;
    my ($name,$groups_str)=split /:/,$line;
    my @groups=split /,/,$groups_str;
    $groups_of{$name}=\@groups;
    foreach my $group (@groups){
        push(@{$members_of{$group}},$name);
    }
}
print Dumper \%groups_of;
print Dumper \%members_of;
print "---------\n";
print "-------People Doing Sport--\n";
my $group='Sport';
foreach my $name (@{$members_of{$group}}){
    print $name."\n";
}
=for comment
my $name='Mary';
foreach my $group (@{$groups_of{$name}}){
    print $group."\n";
}
=cut