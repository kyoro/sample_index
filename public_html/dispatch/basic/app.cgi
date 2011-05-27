#!/usr/bin/perl
use strict;
use warnings;
use CGI::Carp qw(fatalsToBrowser);
use CGI::Application::Dispatch;

use lib FindBin::libs;

CGI::Application::Dispatch->dispatch(
	PREFIX  => 'MyApp',
	DEFAULT => 'Index',
);
