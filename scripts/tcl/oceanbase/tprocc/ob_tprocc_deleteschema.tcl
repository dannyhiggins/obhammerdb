#!/bin/tclsh

dbset db mysql
dbset bm TPC-C
diset connection mysql_host 127.0.0.1
diset connection mysql_port 2881
diset connection mysql_socket null
diset tpcc mysql_user root
diset tpcc mysql_pass 123
diset tpcc mysql_dbase tpcc
diset tpcc mysql_tpcc_obcompat true
diset tpcc ob_tenant_name hmdb
deleteschema
