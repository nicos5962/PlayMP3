package Plugins::PlayMP3::Plugin;

use strict;
use warnings;

use base qw(Slim::Plugin::Base);

use Slim::Utils::Log;
use Plugins::PlayMP3::Register;

my $log = Slim::Utils::Log->addLogCategory({
    category     => 'plugin.playmp3',
    defaultLevel => 'INFO',
    description  => 'PLUGIN_PLAYMP3',
});

sub initPlugin {
    my $class = shift;

    my $version = $class->_pluginDataFor('version') || 'unknown';
    $log->info("Initializing PlayMP3 plugin $version");

    Plugins::PlayMP3::Register->registerFormatHandler();

    $class->SUPER::initPlugin(@_);
}

sub getDisplayName { 'PLUGIN_PLAYMP3' }

1;
