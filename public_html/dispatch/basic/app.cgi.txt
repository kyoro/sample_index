#!/usr/bin/perl
use strict;
use warnings;
use CGI::Carp qw(fatalsToBrowser);
use CGI::Application::Dispatch;

use lib qw(../lib);

CGI::Application::Dispatch->dispatch(
	PREFIX  => 'MyApp',
	DEFAULT => 'Index',
);
