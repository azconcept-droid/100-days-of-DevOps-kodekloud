CREATE DATABASE kodekloud_db4;

CREATE USER 'kodekloud_top'@'%' IDENTIFIED BY 'TmPcZjtRQx';

GRANT ALL PRIVILEGES ON kodekloud_db4.* TO 'kodekloud_top'@'%';

FLUSH PRIVILEGES;
