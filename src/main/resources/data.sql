
insert into `user` (`login`, `password`, `first_name`, `last_name`, `phone`,`role`) values
('admin@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'Адміненко', 'Сергій', 'admin', 'ADMIN'),
('manager@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a','Менеджерский', 'Іван',  'manager', 'MANAGER'),
('master@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'Мастеровий', 'Петро', 'master', 'MASTER'),
('user1@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'Папа', 'Карло', 'password', 'CUSTOMER'),
('user2@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'Буратіно', 'Карло', 'password', 'CUSTOMER'),
('user3@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'Дядя', 'Федір', 'password', 'CUSTOMER'),
('user4@g.com', '$2a$11$SGqMqftMUCIWObteXWOG4.ZXZN331M7Ns.T/H6s3/xZdDlPoD7l8a', 'Дженіфер', 'Лопес', 'password', 'CUSTOMER');

insert into `feedback` (`date`, `feedback`, `user_id`) values
 ('2019-08-30','Дуже задоволений сервiсом та якiстю! Буду рекомендувати знайомим та звертатися повторно!',5),
 ('2019-09-05','Ремонтували комп. Думав, що йому гаплик (досi вiдчуваю запах диму). Та майстри зробили неможливе та ще й не дорого. Супер майстерня! Рекомендую!',6);
