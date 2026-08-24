#!/bin/sh

export TMP="$(pwd)/TMP"
mkdir -p "$TMP"
./hammerdbcli auto ./scripts/tcl/oceanbase/tprocc/ob_tprocc_buildschema.tcl
./hammerdbcli auto ./scripts/tcl/oceanbase/tprocc/ob_tprocc_checkschema.tcl
./hammerdbcli auto ./scripts/tcl/oceanbase/tprocc/ob_tprocc_run.tcl
./hammerdbcli auto ./scripts/tcl/oceanbase/tprocc/ob_tprocc_deleteschema.tcl
./hammerdbcli auto ./scripts/tcl/oceanbase/tprocc/ob_tprocc_result.tcl
