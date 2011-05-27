package MyApp::Hoge::Fuga;
use strict;
use warnings;
use base qw(MyApp);

sub setup {
	my $self = shift;
	
	$self->tmpl_path('tmpl/fuga/');
	$self->start_mode('hoge');
	$self->run_modes(
		hoge => 'do_hoge',
		fuga => 'do_fuga',
	);
}

sub do_hoge {
	my $self = shift;
	
	my $html = $self->load_tmpl('hoge.tmpl');
	return $html->output;
}

sub do_fuga {
	my $self = shift;
	
	my $html = $self->load_tmpl('fuga.tmpl');
	return $html->output;
}

1;
