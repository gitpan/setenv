package setenv;

# where are we?
$VERSION = '0.01';

# be as strict and verbose as possible
use strict;
use warnings;

# satisfy -require-
1;

#---------------------------------------------------------------------------
#
# Standard Perl functionality
#
#---------------------------------------------------------------------------
# import
#
#  IN: 1 class (ignored)
#      2..N hash with key / value pairs to set in %ENV

sub import {
    shift;

    # set the keys / values
    while ( my ( $key, $value ) = splice @_, 0, 2 ) {
        $ENV{$key} = $value;
    }
}    #import

#---------------------------------------------------------------------------

__END__

=head1 NAME

setenv - set %ENV variables at compile time

=head1 SYNOPSIS

 use setenv FOOBAR => 1;

=head1 DESCRIPTION

Provide a simple way to set C<%ENV> variables at compile time.  Usually used
during debugging.

=head1 VERSION

This documentation describes version 0.01.

=head1 METHODS

There are no methods.

=head1 THEORY OF OPERATION

Since "import" is called by Perl at compile time when doing a C<use>, it will
perform any setting of %ENV at that time.

=head1 REQUIRED MODULES

 (none)

=head1 AUTHOR

 Elizabeth Mattijsen

=head1 COPYRIGHT

Copyright (c) 2008 Elizabeth Mattijsen <liz@dijkmat.nl>. All rights
reserved.  This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut
