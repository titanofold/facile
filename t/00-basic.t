use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new;

$t->get_ok('/');
