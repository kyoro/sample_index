#!/usr/bin/perl
use strict;
use warnings;
use FindBin::libs;
use CGI::Fast;
use MyApp::Hello;

while (my $q = CGI::Fast->new()){
    my $app = MyApp::Hello->new(QUERY => $q);
    $app->run();
};

