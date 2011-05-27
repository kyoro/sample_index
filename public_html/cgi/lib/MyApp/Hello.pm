package MyApp::Hello;
use strict;
use base 'CGI::Application';

sub setup {
    my $self = shift;
    $self->tmpl_path('tmpl');
    $self->start_mode('hello');
    $self->run_modes(
        'hello' => 'hello',
        'edit' => 'edit',
    );
}

sub hello {
    my $self = shift;
    my $html = $self->load_tmpl('index.tmpl');
    return $html->output;
}

sub edit {
    my $self = shift;
    my $html = $self->load_tmpl('edit.tmpl');
    return $html->output;
}

1;
