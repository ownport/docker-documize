#!/usr/bin/env sh
set -eu

case ${1} in
    app:start)
        
        sleep 5
        /sbin/documize \
            -port=8080 \
            -db='documize:documize@tcp(mariadb-server:3306)/documize' \
            -dbtype=mariadb \
            -salt d3bqwek172jlfcJdG112db1facd
        ;;
    app:help)
        echo 'Available options:'
        echo ' app:start        - Starts service(-s)'
        echo ' app:help         - Displays the help'
        echo ' [command]        - Execute the specified command, eg. bash.'
        ;;
    *)
        exec "$@"
        ;;
esac 
