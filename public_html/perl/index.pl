#!/usr/bin/perl
use File::Basename;
my $w_dir;
BEGIN { $w_dir = dirname $ENV{_} }
use lib "$w_dir/lib";

use Hakamastyle::Test;

print "Content-type: text/html\n\n";
print "hello world\n";

