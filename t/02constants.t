=pod

=encoding utf-8

=head1 PURPOSE

Check that defining constants works.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2013-2014, 2018 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.


=cut

use strict;
use warnings;
use Test::More;

package MyClass {
	use PerlX::Define;
	define PI => 3.2;
}

ok('MyClass'->can('PI'));
is(MyClass::PI,   3.2);
is(MyClass::PI(), 3.2);
is('MyClass'->PI, 3.2);

ok(not 'MyClass'->can('define'));

done_testing;
