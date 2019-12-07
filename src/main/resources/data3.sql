

insert into `user` (`first_name`, `last_name`,`phone`,`login`, `password`, `role`) values
('Сергій', 'Адміненко','11234567','admin@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'ADMIN'),
('Іван', 'Менеджерский', '11234568','manager@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'MANAGER'),
('Петро', 'Мастеровий', '11234569','master@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'MASTER'),
('Папа', 'Карло', '11234560','user1@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'CUSTOMER'),
('Буратіно','Карло', '11234571','user2@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'CUSTOMER'),
('Федір', 'Дядя', '11234572','user3@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'CUSTOMER'),
('Дженіфер', 'Лопес', '11234573','user4@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'CUSTOMER');

insert into repairs_types (`title`) values ('MOBILE_PHONE'), ('TV'), ('COMPUTER'), ('VACUUM_CLEANER'),
							('TABLET'), ('REFRIGERATOR'), ('MICROWAVE'), ('MONITOR'),
							('OTHER'), ('STOVE'), ('WASHER'), ('RANGE_HOOD'), ('ICE_MAKER');


