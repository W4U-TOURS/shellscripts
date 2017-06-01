#!/bin/bash
cd ~
mkdir mysql_audit && cd mysql_audit/

wget http://mysqltuner.pl/ -O mysqltuner.pl
wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt -O basic_passwords.txt
wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv -O vulnerabilities.csv
wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/template.tpl -O template.tmpl

chmod u+x mysqltuner.pl

perl mysqltuner.pl --cvefile=vulnerabilities.csv --outputfile result_mysqltuner.txt

txt2html --infile result_mysqltuner.txt --outfile result_mysqltuner.htm

mutt -e 'set content_type="text/html"' mysqltuner@w4u.fr -s "MySQLTuner Report" <  result_mysqltuner.htm
