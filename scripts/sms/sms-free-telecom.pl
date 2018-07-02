#!/usr/bin/perl -w
#
# Script:  sms-free-telecom.pl
# Object:  used to enable zabbix notify any Free Telecom (Free Mobile)
#          customer account. 
#
# Date:    Sun Feb 17 13:41:17 CET 2016
# Author:  freddy@linuxtribe.fr

use URI::Escape;

my $login = '';
my $pass = '';

# just use /dev/null as log file if you don't need them
my $log = '/tmp/sms.log';

my $to = uri_escape($ARGV[0]);
my $subject = uri_escape($ARGV[1]);
my $message = uri_escape($ARGV[2]);

my $date = localtime(time);

system("echo '[$date] wget https://smsapi.free-mobile.fr/sendmsg?user=$login&pass=$pass&msg=$to%20$subject%20$message' >>$log");
system("wget -O - 'https://smsapi.free-mobile.fr/sendmsg?user=$login&pass=$pass&msg=$to%20$subject%20$message' 2>&1 >>$log");

