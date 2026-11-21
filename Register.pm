package Plugins::PlayMP3::Register;

# Registers the PlayMP3 tag handler. Kept free of any web/UI dependency so it
# can be used by both the server plugin and the scanner importer.

use strict;
use warnings;

use Slim::Formats;
use Slim::Utils::Log;

use constant HANDLER => 'Plugins::PlayMP3::Formats::MP3';

my $log = logger('plugin.playmp3');

sub registerFormatHandler {
    my ($class, $tagClasses) = @_;

    Slim::Formats->init();

    $tagClasses ||= \%Slim::Formats::tagClasses;

    return 0 unless ref($tagClasses) eq 'HASH';

    for my $type (qw(mp3 mp2)) {
        next if defined $tagClasses->{$type} && $tagClasses->{$type} eq HANDLER;

        $tagClasses->{$type} = HANDLER;

        main::DEBUGLOG && $log->is_debug && $log->debug("PlayMP3: registered tag handler for $type");
    }

    return 1;
}

1;
