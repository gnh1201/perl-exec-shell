#!/usr/bin/perl

sub exec_shell {
    my $cmd = shift;
    my $file = "stdout.txt";
    my $str = "";

    system("($cmd) 1>stdout.txt 2>stderr.txt");
    open FILE, $file; while (<FILE>) { $str .= $_; }
    return $str;
}

my $cmd = "whoami";
exec_shell($cmd);
