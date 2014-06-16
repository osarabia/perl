#!/usr/bin/perl

use strict;
use warnings;
use 5.010;
use Data::Dumper;

sub binary_search{
    my ( $key, @arr) = @_;

    my ($i,$j) = (0,$#arr);

    return -1 if $j < 1;

    my $middle = int( ($j / 2) + 1); 

    return $arr[$middle] if $arr[$middle] == $key;


    return binary_search($key,@arr[$i..$middle-1]) if $key <  $arr[$middle];

    return binary_search($key,@arr[$middle+1..$j]) if $key >  $arr[$middle];

}

say binary_search(55,qw( 10 20 30 40 50 60 70 100 110));
