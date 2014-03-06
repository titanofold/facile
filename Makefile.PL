use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  VERSION => '0.01',
  PREREQ_PM =>
    {'Mojolicious' => '4.85', 'DBD::Pg' => '3.0.0', 'DBD::SQLite' => '1.40'},
  test => {TESTS => 't/*.t'}
);
