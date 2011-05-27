#!/usr/bin/perl
use strict;
use warnings;
use lib FindBin::libs;

use CGI::Carp qw(fatalsToBrowser);
use CGI::Application::Dispatch;


CGI::Application::Dispatch->dispatch(
	PREFIX  => 'MyApp',
	DEFAULT => 'Index',
);
