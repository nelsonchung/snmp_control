
function sleep_nelson(){
    for count in $(seq 1 20)
    do
        date
        sleep 5
    done
}

function repeat(){
    FILE="$1"
    echo "run $FILE"
    ./$FILE
    echo "sleep 300"
    sleep_nelson
}

while [ 1 ]
do
    repeat "cmdot11BssBasicRateMas_1mcs0.sh"
    repeat "cmdot11BssBasicRateMas_12mcs01.sh"
    repeat "cmdot11BssBasicRateMas_1255mcs012.sh"
    repeat "cmdot11BssBasicRateMas_125524mcs0127.sh"
done
