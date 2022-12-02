
for ARG in "$@"
do
    if [ -d "$ARG" ]
    then
        du -s "$ARG" 
    elif [ -f "$ARG" ]
    then
        echo "$ARG is a file pls try again"
    else
        echo "$ARG is not valid"
        exit 1
    fi
done