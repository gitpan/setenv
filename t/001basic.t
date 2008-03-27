BEGIN {				# Magic Perl CORE pragma
    if ($ENV{PERL_CORE}) {
        chdir 't' if -d 't';
        @INC = '../lib';
    }
}

use strict;
use warnings;

use Test::More tests => 4;

use_ok( 'setenv' ); # just for the record

BEGIN { ok( !$ENV{FOOBAR}, 'not set at first' ) };

use setenv FOOBAR => 'foobar';

BEGIN { is( $ENV{FOOBAR}, 'foobar', 'check if set later at compile time' ) };

is( $ENV{FOOBAR}, 'foobar', 'check if set later at run time' );
