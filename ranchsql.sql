CREATE TABLE IF NOT EXISTS `ranch` (
    `charidentifier` varchar(50) NOT NULL,
    `ranchcoords` LONGTEXT NOT NULL,
    `ranchname` varchar(100) NOT NULL,
    `ranch_radius_limit` varchar(100) NOT NULL,
    `ranchid` int NOT NULL AUTO_INCREMENT,
    `ranchCondition` int(10) NOT NULL DEFAULT 0,
    `cows` varchar(50) NOT NULL DEFAULT 'false',
    `cows_cond` int(10) NOT NULL DEFAULT 0,
    `cows_age` int(10) NOT NULL DEFAULT 0,
    `pigs` varchar(50) NOT NULL DEFAULT 'false',
    `pigs_cond` int(10) NOT NULL DEFAULT 0,
    `pigs_age` int(10) NOT NULL DEFAULT 0,
    `chickens` varchar(50) NOT NULL DEFAULT 'false',
    `chickens_cond` int(10) NOT NULL DEFAULT 0,
    `chickens_age` int(10) NOT NULL DEFAULT 0,
    `goats` varchar(50) NOT NULL DEFAULT 'false',
    `goats_cond` int(10) NOT NULL DEFAULT 0,
    `goats_age` int(10) NOT NULL DEFAULT 0,
    PRIMARY KEY `ranchid` (`ranchid`),
    UNIQUE KEY `charidentifier` (`charidentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `ranch` ADD COLUMN IF NOT EXISTS (`cows_age` INT(10) DEFAULT 0);
ALTER TABLE `ranch` ADD COLUMN IF NOT EXISTS (`chickens_age` INT(10) DEFAULT 0);
ALTER TABLE `ranch` ADD COLUMN IF NOT EXISTS (`goats_age` INT(10) DEFAULT 0);
ALTER TABLE `ranch` ADD COLUMN IF NOT EXISTS (`pigs_age` INT(10) DEFAULT 0);

ALTER TABLE `characters` ADD COLUMN IF NOT EXISTS (`ranchid` INT(10) DEFAULT 0);
ALTER TABLE `ranch` ADD COLUMN IF NOT EXISTS (`ledger` INT(10) DEFAULT 0);
