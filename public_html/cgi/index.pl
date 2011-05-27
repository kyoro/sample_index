#!/usr/bin/perl
use strict;
use warnings;
use FindBin::libs;
use MyApp::Hello;

#my $hello = MyApp::Hello->new();
#$hello->run();

CGI::Application::Dispatch->dispatch(
    PREFIX  => 'MyApp',
    DEFAULT => 'Hello',
);
