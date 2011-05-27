package MyApp::Search;
use strict;
use warnings;
use base qw(MyApp);

sub setup {
	my $self = shift;

	$self->tmpl_path('tmpl/search/');
	$self->start_mode('search');
	$self->run_modes(
		search => 'do_search',
		config => 'do_config',
	);
}

sub do_search {
	my $self = shift;
	
	my $html = $self->load_tmpl('search.tmpl');
	return $html->output;
}

sub do_config {
	my $self = shift;
	
	my $html = $self->load_tmpl('config.tmpl');
	return $html->output;
}

1;
