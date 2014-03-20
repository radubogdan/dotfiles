#!/usr/bin/perl -w 
use v5.14;
use File::Copy qw/cp/;

my $git_uri = 'https://github.com/radubogdan/web-vim-config.git';
my $app_name = 'web-vim-config';
my $app_path = "$ENV{HOME}/$app_name";

system git => clone => $git_uri, $app_path;
cp $_, "$ENV{HOME}/" for "$app_path/$ARGV[0]/.vimrc", "$app_path/$ARGV[0]/.vimrc.bundles";
exec 'vim';
