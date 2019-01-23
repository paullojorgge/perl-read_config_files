#!/usr/bin/perl -w

use strict;
use 5.010;

use Config::Tiny;
use Data::Dumper;

my $filename = shift or die "Usage: $0 config.ini\n";
my $config = Config::Tiny->read( $filename, 'utf8' );

say $config->{foobar}{foo};

say $config->{foobar2}{foo_one};
say $config->{foobar2}{foo_two};

print Dumper($config);