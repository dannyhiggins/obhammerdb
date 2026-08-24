#!/bin/tclsh

set tmpdir $::env(TMP)
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
diset tpcc mysql_driver timed
diset tpcc mysql_rampup 2
diset tpcc mysql_duration 5
loadscript
vuset vu 1
vucreate
set jobid [ vurun ]
vudestroy
set output [ open $tmpdir/mysql_tprocc w ]
puts $output $jobid
close $output
