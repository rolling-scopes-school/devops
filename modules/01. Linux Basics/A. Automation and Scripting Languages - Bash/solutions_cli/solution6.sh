rm -r /task1/*
mkdir -p /task1/permissions
cp /permissions/* /task1/permissions/
cd /task1/permissions
chmod 444 r_only
chmod 666 all_rw
chmod 777 all_rwx
chmod 000 fully_blocked
chmod 744 owner_rwx_group_other_r
chmod 474 group_rwx_owner_other_r
chmod 447 other_rwx_owner_group_read
chmod 412 owner_r_group_x_other_w
chmod 563 owner_rx_group_rw_other_wx