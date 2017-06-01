#!/bin/bash

strMysqlUser="root"
strPassword="PASSWORD_HERE"

mysqlcheck --user="$strMysqlUser" --password=$strPassword --auto-repair --optimize --all-databases
