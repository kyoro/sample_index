package MyApp::Index;
use strict;
use warnings;
use base qw(MyApp);

sub setup {
	my $self = shift;
	
	$self->tmpl_path('tmpl/index/');
	$self->start_mode('index');
	$self->run_modes(
		index => 'do_index',
		edit  => 'do_edit',
	);
}

sub do_index {
	my $self = shift;
	
	my $html = $self->load_tmpl('index.tmpl');
	return $html->output;
}

sub do_edit {
	my $self = shift;
	
	my $html = $self->load_tmpl('edit.tmpl');
	return $html->output;
}

1;
