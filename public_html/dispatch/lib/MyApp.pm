package MyApp;
use strict;
use warnings;
use base qw(CGI::Application);

sub cgiapp_init {
	my $self = shift;
	$self->header_props(-type => 'text/html; charset=SJIS');
}

sub load_tmpl {
	my ($self, $file, %params) = @_;
	
	$params{die_on_bad_params} ||= 0;
	
	return $self->SUPER::load_tmpl($file, %params);
}

1;
