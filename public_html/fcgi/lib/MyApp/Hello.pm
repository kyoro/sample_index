package MyApp::Hello;
use strict;
use base 'CGI::Application';

sub setup {
    my $self = shift;
    $self->start_mode('hello');
    $self->run_modes(
        'hello' => 'hello',
        'edit' => 'edit',
    );
}

sub hello {
    my $self = shift;
    return "this is fcgi hello";
}

sub edit {
    my $self = shift;
    return "this is fcgi!!!!!!!!!";
}

1;
