package DDG::Goodie::RSS;
# Store your RSS Feeds in your web-browser and read them in DDG

use DDG::Goodie;

triggers start => "rss";

handle query_lc => sub {

    return unless $_ =~ qr#^rss\s(?<search>[\w\s]*)$#;
    my search = $+{search};

    my $text = $search eq '' ? 'RSS Feed' : 'Search "' . $search . '" from RSS Feed';

    return $text,
    structured_answer => {
        data => {
            title => $text,
            subtitle => ''
        },
        templates => {
            group => 'text',
            item => 0,
            options => {
                content => 'DDH.rss.content'
            }
        }
    };
};

1;
