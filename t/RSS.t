#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

ddg_goodie_test(
    [qw( DDG::Goodie::RSS )],

    'rss' => test_zci(
        'RSS Feed',
        structured_answer => {

            data => '-ANY-',

            templates => {
                group => "text",
                item => 0,
                options => {
                    content => "DDH.rss.content"
                },
            }
        }
    )
);

done_testing;
