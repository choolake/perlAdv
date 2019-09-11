#!perl
# install-- cpan install Win32::DriveInfo
use warnings;
use strict;

my $x=10;
my $xr=\$x;

$$xr=$$xr*2;

print "$x\n";
print "$$xr\n";
print "$xr\n";


my @a=(1..5);
my $ar= \@a;
=for comment
foreach $a (@$ar) {
  print "$a\n"

}
=cut
my $i=0;
for (@$ar) {
  print "$ar->[$i++]\n"

}


my %month=(
	'Jan' => 1,
	'Feb' => 2,
	'Mar' => 3,
	'Apr' => 4,
	'May' => 5,
	'Jun' => 6,
	'Jul' => 7,
	'Aug' => 8,
	'Sep' => 9,
	'Oct' => 10,
	'Nov' => 11,
	'Dec' => 12,
);
my $monthr=\%month;
for (keys %$monthr){
  print "$_=$monthr->{$_}\n"

}