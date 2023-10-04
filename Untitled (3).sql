CREATE TABLE `genders` (
  `gender_id` int PRIMARY KEY AUTO_INCREMENT,
  `gender` varchar(6)
);

CREATE TABLE `ages` (
  `age_id` int PRIMARY KEY AUTO_INCREMENT,
  `age` int NOT NULL,
  `age_range` varchar(10) NOT NULL
);

CREATE TABLE `countries` (
  `country_id` int PRIMARY KEY AUTO_INCREMENT,
  `country` varchar(50) NOT NULL
);

CREATE TABLE `conditions` (
  `condition_id` int PRIMARY KEY AUTO_INCREMENT,
  `treatment` varchar(10) NOT NULL,
  `family_history` varchar(10) NOT NULL
);

CREATE TABLE `company` (
  `company_id` int PRIMARY KEY AUTO_INCREMENT,
  `self_employment` varchar(10) NOT NULL,
  `remote_work` varchar(10) NOT NULL,
  `tech_company` varchar(10) NOT NULL
);

CREATE TABLE `Person` (
  `person_id` int PRIMARY KEY AUTO_INCREMENT,
  `gender` int NOT NULL,
  `age` int NOT NULL,
  `country` int NOT NULL,
  `condition` int NOT NULL,
  `company` int NOT NULL,
  `treatment` int NOT NULL,	
   FOREIGN KEY (`gender`) REFERENCES `genders` (`gender_id`),
   FOREIGN KEY (`age`) REFERENCES `ages` (`age_id`),
   FOREIGN KEY (`country`) REFERENCES `countries` (`country_id`),
   FOREIGN KEY (`condition`) REFERENCES `conditions` (`condition_id`),
   FOREIGN KEY (`company`) REFERENCES `company` (`company_id`)
);
	

ALTER TABLE `Person` ADD FOREIGN KEY (`gender`) REFERENCES `genders` (`gender_id`);

ALTER TABLE `Person` ADD FOREIGN KEY (`age`) REFERENCES `ages` (`age_id`);

ALTER TABLE `Person` ADD FOREIGN KEY (`country`) REFERENCES `countries` (`country_id`);

ALTER TABLE `Person` ADD FOREIGN KEY (`condition`) REFERENCES `conditions` (`condition_id`);

ALTER TABLE `Person` ADD FOREIGN KEY (`company`) REFERENCES `company` (`company_id`);
ALTER TABLE `Person` ADD FOREIGN KEY (`company`) REFERENCES `company` (`company_id`);


CREATE TABLE `Person` (
  `person_id` int PRIMARY KEY AUTO_INCREMENT,
  `gender` int NOT NULL,
  `age` int NOT NULL,
  `country` int NOT NULL,
  `condition` int NOT NULL,
  `company` int NOT NULL
);