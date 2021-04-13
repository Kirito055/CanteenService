
--
-- Table structure for table `role`
--

CREATE TABLE role (
                      role_id int NOT NULL,
                      name varchar(255) DEFAULT NULL,
                      PRIMARY KEY (role_id)
) ;


INSERT INTO role VALUES (0,'ROLE_USER'),(1,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

--
-- Table structure for table `user`
--

create table users (
                       user_id bigint  NOT NULL,
                       email varchar(255) NOT NULL,
                       first_name varchar(255) DEFAULT NULL,
                       last_name varchar(255) DEFAULT NULL,
                       password varchar(255) DEFAULT NULL,
                       phone varchar(255) DEFAULT NULL,
                       username varchar(255) DEFAULT NULL,
                       money int Default NUll,
                       PRIMARY KEY (user_id)
) ;

--
-- Dumping data for table `user`
--
INSERT INTO users VALUES (1,'Adilkhan@gmail.ru','Adilkhan','Nurmagambetov','$2a$12$DWCryEwHwbTYCegib92tk.VST.GG1i2WAqfaSwyMdxX0cl0eBeSve','5551112345','User',540),(3,'sabina@gmail.com','Sabina','Aitbayeva','$2a$12$hZR7pcSf0JU/OTXR3TOyuu8r6C6n.JZE8Ei47E4LZs1t0Aq1AO6oC','1111111111','Admin',700);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

--
-- Table structure for table `user_role`
--

CREATE TABLE user_role (
                           user_role_id bigint  NOT NULL ,
                           role_id int DEFAULT NULL,
                           user_id bigint DEFAULT NULL,
                           PRIMARY KEY (user_role_id),
                           CONSTRAINT fk_user_id_role FOREIGN KEY (user_id) REFERENCES users (user_id),
                           CONSTRAINT fk_role_id_user FOREIGN KEY (role_id) REFERENCES role (role_id)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO user_role VALUES (1,0,1),(2,1,3);

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


create table product(
                        product_id bigint,
                        name varchar(255),
                        img varchar(255),
                        price int,
                        product_desc varchar(255),
                        category varchar(255),
                        primary key (product_id)
)


create table  orderHistory(
                              order_id bigint Primary key,
                              user_id bigint,
                              product_id bigint,
                              count int,
                              date date,

                              CONSTRAINT fk_user_id_order FOREIGN KEY (user_id) REFERENCES users (user_id),
                              CONSTRAINT fk_order_id_product FOREIGN KEY (product_id) REFERENCES product (product_id)
)


    INSERT INTO product VALUES (100,'Water','//water.jpg',150,'Water help to live','Drink'),(101,'Potato with chicken','potatowithchicken2.jpg',360,'Very good potato with chicken cary','Second');

