#!/bin/tclsh

puts "SETTING CONFIGURATION"
dbset db mysql
dbset bm TPC-C
diset connection mysql_host 127.0.0.1
diset connection mysql_port 2881
diset connection mysql_socket null
diset tpcc mysql_count_ware 10
diset tpcc mysql_num_vu [ numberOfCPUs ]
diset tpcc mysql_user root
diset tpcc mysql_pass 123
diset tpcc mysql_dbase tpcc
diset tpcc mysql_tpcc_obcompat true
diset tpcc ob_partition_num 1
diset tpcc ob_tenant_name hmdb
puts "SCHEMA BUILD STARTED"
buildschema
puts "SCHEMA BUILD COMPLETED"
