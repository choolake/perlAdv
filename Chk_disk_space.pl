#!perl
# install-- cpan install Win32::DriveInfo
use warnings;
use strict;
use Win32::OLE;
sub get_space
{
  #input the disk to get the spaces
  my $disk=$_[0];
  #create File System Object
  my $fs=Win32::OLE->CreateObject('Scripting.FileSystemObject');
  #get disk usage
  my $usage= $fs->GetDrive($disk);

  print convert_toGB($usage->{TotalSize}), " total\n";
  print convert_toGB($usage->{FreeSpace}), " free\n";


}

sub convert_toGB
{
  my $byteSize=$_[0];
  my $gbSize=$byteSize/1073741824;
  return $gbSize;


}

get_space('c:');