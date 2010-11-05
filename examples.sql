sql examples

# create database
CREATE DATABASE `timeclock` DEFAULT CHARACTER SET `utf8`;


# create table syntax
CREATE TABLE `lunches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `punched_out_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# insert syntax
INSERT into `lunches` (`punched_out_at`) VALUES (NOW());

# select syntax
SELECT * from `lunches`;
SELECT * from `lunches` LIMIT 1;
SELECT * from `lunches` WHERE `id` = 2;
SELECT `punched_out_at` from `lunches` LIMIT 1;

# update syntax
UPDATE `lunches` SET `punched_out_at` = '2010-11-04 12:00:00' WHERE `id` = 2;

# delete syntax
DELETE FROM `lunches` WHERE `id` = 3;


# MySQL dump (back-up) syntax
# % mysqldump -u root -p timeclock >  timeclock_backup.sql



# ALTER TABLE
ALTER TABLE `lunches` ADD `name` varchar(255) NOT NULL;