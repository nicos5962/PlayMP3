package Plugins::PlayMP3::Importer;

use strict;
use warnings;

use Plugins::PlayMP3::Register;

sub initPlugin {
    my $class = shift;

    Plugins::PlayMP3::Register->registerFormatHandler();
    return 1;
}

sub startScan {
    my $class = shift;
    return;
}

1;
