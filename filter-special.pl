#!/usr/bin/env perl

use strict;
use warnings;

use v5.14;

use JSON;
use File::Slurp::Tiny qw(read_file);

my $file_name = shift || die "Necesito fichero:\n\tUso $0 <fichero>\n";

my $file = read_file($file_name) || die "No existe el fichero $file_name";

my $data = decode_json $file;

my @output_data;

for my $d ( @$data ) {
  push @output_data, $d if $d->{'articulo'} !~ /(Especial|Wikipedia)/;
}

for (my $j = 0; $j <= $#output_data; $j ++ ) {
  $output_data[$j]->{'puesto'} = $j+1;
}

say encode_json( \@output_data );

