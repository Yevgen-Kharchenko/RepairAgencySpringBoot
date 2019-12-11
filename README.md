# RepairAgencySpringBoot

#Система «Ремонтна Агенція»

Користувач може створити замовлення на ремонт виробу.
Менеджер може прийняти замовлення та вказати ціну,  або відхилити замовлення і вказати причину.
Майстер може виконати замовлення, що прийняв Менеджер.  
Користувач може залишити Відгук про виконані роботи.


Requirements:

1. DB - h2
2. Java version up 8.
3. Maven

How to install:

1. Clone project
2. Run Application
3. Go to link http://localhost:8088/
4. To login as an admin, use a login / password: admin@g.com / admin
5. To login as manager, use a login / password: manager@g.com / manager
6. To login as master, use a login / password: master@g.com / master
7. To login as customer, use a login / password: user1@g.com / password  or register yourself
5. Enjoy!

#Business logic: 	

	User could see home page. - HomeCommand
	User could see about us. - AboutUsCommand	
	User could see blog gallery. - BlogMasonryCommand	
	User could see blog post. - BlogPostCommand	
	User could see gallery. - GalleryCommand	
	User could see contacts. - ContactsCommand	
	User could see our team. - TeamCommand	
	User could see team profile. - TeamProfileCommand	
	User can choose different types of repairs. - ServicesCommand	
	User could see privacy policy. - PrivacyCommand	
	User on site could change language - LanguageCommand	
	User could login. - LoginCommand	
	User could register as customer. - RegisterCommand	
	User could logout. - LogoutCommand	
			
	Customer could see your account. - UserCommand	
	Customer may leave a response. - ResponsesCommand	
	Сustomer can place an order. - OrderCommand	
	Customer can send a message to the order. - CommentsCommand	
	Customer can view order status. - UserCommand	
			
	Manager could see your account. - ManagerCommand	
	Manager can send a message to the order. - CommentsCommand	
	Manager can change order status. - StatusCommand	
	Manager could offer price. - PriceCommand	
			
	Master could see your account. - MasterCommand	
	Master can change order status. - StatusCommand	
			
	Admin could see your account. -	AdminCommand	
	Admin could change role. - AdminRoleCommand	
			
	Page 503 	TemporaryCommand	
	Page 404	NotFoundCommand	
