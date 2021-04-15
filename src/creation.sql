CREATE TABLE `notes` (
                         `id` INT NOT NULL AUTO_INCREMENT,
                         `prospect` VARCHAR(84) NOT NULL,
                         `position` VARCHAR(6) NOT NULL,
                         `college` VARCHAR(84) NOT NULL,
                         `age` INT(2) NOT NULL,
                         `feet` INT(1) NOT NULL,
                         `inches` INT(2) NOT NULL,
                         `weight` INT(3) NOT NULL,
                         `report` VARCHAR(256),
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB;