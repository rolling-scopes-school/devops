rm -r /task1/*
mkdir -p /task1/exec
cp /scripts/* /task1/exec
bash /task1/exec/perfect_script.sh > /task1/exec/perfect.log
bash /task1/exec/imperfect_script.sh > /task1/exec/imperfect.log 2>/task1/exec/errors.log