package MyApp::Hello;
use strict;
use base 'CGI::Application';

sub setup {
      my $self = shift;
        $self->start_mode('hello');
          $self->run_modes(
                            'hello' => 'hello',
                              );
}

sub hello {
      "Hello, World";
}
1;
