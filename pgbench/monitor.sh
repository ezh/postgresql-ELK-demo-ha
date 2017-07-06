#!/bin/bash
#
HEADER='echo "{"'
NODE="echo '    node: \"$1\"'"
TS='echo -n "    timpstamp: "; date +%s'
MEM=$'ps -u postgres o pid= | awk \'{gsub(/[ \t]+$/, "", $1); print "/proc/"$1"/smaps"}\' | xargs awk \'/^Pss/ {A+=$2} END{print "    mem: " A}\''
FOOTER='echo "}"'
ssh $1 "$HEADER;$NODE;$TS;$MEM;$FOOTER"

