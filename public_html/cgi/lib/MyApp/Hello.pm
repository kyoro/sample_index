package MyApp::Hello;
use strict;
use base 'CGI::Application';

sub setup {
    my $self = shift;
    $self->tmpl_path('/home/miko/cgi/tmpl');
    $self->start_mode('hello');
    $self->run_modes(
        'hello' => 'hello',
    );
}

sub hello {
my $html = $self->load_tmpl('index.tmpl');
    return $html->output;
    return "aaaa";
}
1;
