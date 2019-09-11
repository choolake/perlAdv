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