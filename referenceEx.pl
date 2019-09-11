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
