#!/bin/bash
for i in ../../ckt/*/*.ckt; do
    [ -f "$i" ] || break
    filename=`basename $i .ckt` # extract filename
    echo $filename".flist"
    cat $i | awk 'NF{b=$2"@1\n"$2"@0";print b;}' > $filename".flist"
done
