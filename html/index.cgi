#!/usr/bin/perl
use strict;
use Template;
use LWP::Simple;
my $config = {
               INCLUDE_PATH => [ '/var/www/html/templates/' ],
               INTERPOLATE  => 1,
               POST_CHOMP   => 1,
               EVAL_PERL    => 0,
             };
my $template = Template->new($config);
my $vars = {
             phases => get("http://git.example.org/gitweb?p=kanban;a=blob_plain;f=phases;hb=refs/heads/master"),
             colors => get("http://git.example.org/gitweb?p=kanban;a=blob_plain;f=colors;hb=refs/heads/master"),
             tasks  => get("http://git.example.org/gitweb?p=kanban;a=blob_plain;f=tasks;hb=refs/heads/master"),
           };
print "Content-type: text/html\n\n";
$template->process("kanban.tpl", $vars) || die $template->error();
