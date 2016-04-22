# Before "make install", this script should be runnable with "make test".
# After "make install" it should work as "perl t/Lytro.t".

BEGIN { $| = 1; print "1..2\n"; $Image::ExifTool::noConfig = 1; }
END {print "not ok 1\n" unless $loaded;}

# test 1: Load the module(s)
use Image::ExifTool 'ImageInfo';
use Image::ExifTool::Lytro;
$loaded = 1;
print "ok 1\n";

use t::TestLib;

my $testname = 'Lytro';
my $testnum = 1;

# test 2: Extract information from Lytro.lfp
{
    ++$testnum;
    my $exifTool = new Image::ExifTool;
    my $info = $exifTool->ImageInfo('t/images/Lytro.lfp');
    print 'not ' unless check($exifTool, $info, $testname, $testnum);
    print "ok $testnum\n";
}


# end
