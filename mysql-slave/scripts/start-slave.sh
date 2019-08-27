#!/bin/bash
mysql -u root -p"${MYSQL_ROOT_PASSWORD}" -e "drop user 'user'@'%'; flush privileges; CHANGE MASTER TO MASTER_HOST ='$MASTER_HOST', MASTER_USER ='$MASTER_USER', MASTER_PASSWORD ='$MASTER_PASSWORD';START SLAVE;"
