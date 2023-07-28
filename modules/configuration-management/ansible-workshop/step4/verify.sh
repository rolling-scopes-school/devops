#!/bin/bash
ansible-inventory --graph -i dynamic_docker.yaml | grep web

LOGFILE=/root/ks/step2-verify.log
set -e # exit once any command fails

{
    date
    cat /root/ansible-workshop/roles/apache/templates/apache.conf.j2 | grep "{{ http_host }}"
    cat /root/ansible-workshop/roles/apache/handlers/main.yaml | grep Apache
    cat /root/ansible-workshop/roles/apache/tasks/main.yaml | grep Apache
    cat /root/ansible-workshop/roles/mysql/tasks/main.yaml | grep MySQL
    cat /root/ansible-workshop/roles/wordpress/templates/wp-config.php.j2 | grep WordPress
    cat /root/ansible-workshop/roles/wordpress/tasks/main.yaml | grep WordPress

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success