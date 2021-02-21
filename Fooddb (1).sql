-- CREATE DATABASE fooddb;
USE fooddb;

/*
CREATE TABLE Ingredients (
	id int not null auto_increment, 
	name varchar(50),
	category varchar(50),
	calories int,
	primary key(id)
)
*/
/*
CREATE TABLE Recipe (
	id int not null auto_increment,
    name varchar(50),
    category varchar(50),
    servings int,
    cooktime int,
    primary key(id)
);
*/
/*
CREATE TABLE RecipeIngredients (
	rec_id int not null,
    ing_id int not null,
    amount int not null,
    primary key (rec_id,ing_id),
    foreign key (rec_id) REFERENCES Recipe(id),
    foreign key (ing_id) REFERENCES Ingredients(id)
);
*/
/*
CREATE TABLE RecipeInstructions (
	rec_id int not null,
    step int not null,
    text varchar(300) not null,
    primary key (rec_id,step),
    foreign key (rec_id) REFERENCES Recipe(id)
);
*/
/*
CREATE TABLE GroceryStore (
	id int not null auto_increment,
    ing_id int not null,
    price decimal(65,2) not null,
    instock int,
    primary key(id),
    foreign key(ing_id) REFERENCES Ingredients(id)
);
*/

/*
INSERT INTO Ingredients (name, category, calories) VALUE ("ziti pasta","pasta", 300);
INSERT INTO Ingredients (name, category, calories) VALUE ("ground beef","beef", 300);
INSERT INTO Ingredients (name, category,calories) VALUE ("onion","vegetable",40 );
INSERT INTO Ingredients (name, category,calories) VALUE ("garlic","vegetable", 20);
INSERT INTO Ingredients (name, category,calories) VALUE ("sour cream","dairy", 200);
INSERT INTO Ingredients (name, category,calories) VALUE ("ricotta","dairy", 200);
INSERT INTO Ingredients (name, category,calories) VALUE ("asparagus","vegetable", 50);
INSERT INTO Ingredients (name, category,calories) VALUE ("parmesan","cheese", 75);
INSERT INTO Ingredients (name, category,calories) VALUE ("olive oil","oils", 80);
*/
/*
INSERT INTO Recipe (name, category, servings, cooktime) VALUE ("baked ziti","main", 12, 75);
INSERT INTO Recipe (name, category, servings, cooktime) VALUE ("roasted asparagus","side", 4, 10);
*/

-- INSERT INTO RecipeInstructions(rec_id, step, text) VALUE (1, 1, "Brown beef and onion");
-- INSERT INTO RecipeInstructions(rec_id, step, text) VALUE (1, 2, "Boil pasta");
-- INSERT INTO RecipeInstructions(rec_id, step, text) VALUE (1, 3, "Layer pasta, beef, and cheese");
-- INSERT INTO RecipeInstructions(rec_id, step, text) VALUE (1, 4, "Bake 60 mins at 375 F");
-- INSERT INTO RecipeInstructions(rec_id, step, text) VALUE (2, 1, "Sprinkle asparagus with olive oil, garlic, cheese");
-- INSERT INTO RecipeInstructions(rec_id, step, text) VALUE (2, 2, "Roast for 10 mins at 400 F");

/*INSERT INTO GroceryStore (ing_id, price, instock) VALUE (1, 7, 50);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE (2, 2.50, 51);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 3, 3.50, 52);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 4, 4.75, 82);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 5, 3.25, 100);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 6, 2.35, 10);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 7, 9.25, 30);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 8, 10.00, 25);
INSERT INTO GroceryStore (ing_id, price, instock) VALUE ( 9, 1.50, 15);
*/


/*CREATE TABLE MenuItems (
	id int not null auto_increment,
    name varchar(100),
    category varchar(100),
    size varchar(100),
    price decimal(60,2),
    calories int,
    primary key(id)
);*/

/*CREATE TABLE Orders (
	id int not null auto_increment,
    orderDate Datetime,
    customer varchar(100),
    primary key(id)
);*/

/*CREATE TABLE OrderItems (
	id int not null auto_increment,
    orderId int,
    itemId int,
    foreign key(orderId) REFERENCES Orders(id),
    foreign key(itemId) REFERENCES MenuItems(id),
    primary key(id)
);*/

/*
insert into MenuItems (name, category, size, price, calories) values ("fries","side","small", 1.00,300 );
insert into MenuItems (name, category, size, price, calories) values ("fries","side","medium", 2.00,400 );
insert into MenuItems (name, category, size, price, calories) values ("fries","side","large", 3.00, 500 );
insert into MenuItems (name, category, size, price, calories) values ("salad","side","small", 2.00,100 );
insert into MenuItems (name, category, size, price, calories) values ("fries","side","large", 3.00, 250 );
insert into MenuItems (name, category, size, price, calories) values ("soup","side","small", 2.50, 150 );
insert into MenuItems (name, category, size, price, calories) values ("soup","side","large", 3.00, 300 );
insert into MenuItems (name, category, size, price, calories) values ("cheeseburger","main","regular", 3.50, 400 );
insert into MenuItems (name, category, size, price, calories) values ("cheeseburger","main","large", 4.00, 600 );
insert into MenuItems (name, category, size, price, calories) values ("monster cheeseburger","main","regular", 4.50, 450 );
insert into MenuItems (name, category, size, price, calories) values ("monster bacon cheeseburger deluxe","main","regular", 6.00, 700 );
insert into MenuItems (name, category, size, price, calories) values ("vanilla shake","dessert","regular", 3.00,300 );
insert into MenuItems (name, category, size, price, calories) values ("chocolate shake","dessert","regular", 3.00,300 );
insert into MenuItems (name, category, size, price, calories) values ("brownie","dessert","regular", 1.75,250 );



insert into MenuItems (name, category, size, price, calories) values ("sprite","beverage","regular", 2.00, 200 );
insert into MenuItems (name, category, size, price, calories) values ("coffee","beverage","regular", 2.50, 10 );
insert into MenuItems (name, category, size, price, calories) values ("lemonade","beverage","regular", 2.00, 200 );



insert into Orders (orderDate, customer) values ("2020-10-15 09:30:00","Maria");
insert into Orders (orderDate, customer) values ("2020-10-16 010:30:00","Maria");
insert into Orders (orderDate, customer) values ("2020-10-14 15:30:00","Maria");
insert into Orders (orderDate, customer) values ("2020-10-13 15:29:00","Maria");
insert into Orders (orderDate, customer) values ("2020-10-17 18:27:00","George");
insert into Orders (orderDate, customer) values ("2020-10-19 18:35:00","George");
insert into Orders (orderDate, customer) values ("2020-10-13 10:05:00","Luigi");
insert into Orders (orderDate, customer) values ("2020-10-12 11:09:00","Luigi");
insert into Orders (orderDate, customer) values ("2020-10-10 17:04:00","Luigi");



insert into OrderItems (orderId,itemId) values ( 1 , 2 );
insert into OrderItems (orderId,itemId) values ( 1 , 4 );
insert into OrderItems (orderId,itemId) values ( 1 , 6 );
insert into OrderItems (orderId,itemId) values ( 1 , 8 );
insert into OrderItems (orderId,itemId) values ( 1 , 7 );
insert into OrderItems (orderId,itemId) values ( 1 , 3 );
insert into OrderItems (orderId,itemId) values ( 2 , 1 );
insert into OrderItems (orderId,itemId) values ( 2 ,  3);
insert into OrderItems (orderId,itemId) values ( 2 ,  5);
insert into OrderItems (orderId,itemId) values ( 2 ,  8);
insert into OrderItems (orderId,itemId) values ( 3 ,  11);
insert into OrderItems (orderId,itemId) values ( 3 ,  9);
insert into OrderItems (orderId,itemId) values ( 3 ,  7);
insert into OrderItems (orderId,itemId) values ( 4 ,  6);
insert into OrderItems (orderId,itemId) values ( 4 ,  4);
insert into OrderItems (orderId,itemId) values ( 4 ,  10);
insert into OrderItems (orderId,itemId) values ( 5 ,  2);
insert into OrderItems (orderId,itemId) values ( 5 ,  1);
insert into OrderItems (orderId,itemId) values ( 6 ,  7);
insert into OrderItems (orderId,itemId) values ( 6 ,  6);
insert into OrderItems (orderId,itemId) values ( 7 ,  5);
insert into OrderItems (orderId,itemId) values ( 7 ,  4);
insert into OrderItems (orderId,itemId) values ( 7 ,  3);
insert into OrderItems (orderId,itemId) values ( 8 ,  8);
insert into OrderItems (orderId,itemId) values ( 8 ,  10);
insert into OrderItems (orderId,itemId) values ( 9 ,  7);
insert into OrderItems (orderId,itemId) values ( 9 ,10  );
insert into OrderItems (orderId,itemId) values ( 9 , 11 );
insert into OrderItems (orderId,itemId) values ( 9 ,  12);
*/

-- UPDATE menuItems SET name = "salad" WHERE id=5;

 -- select * from menuItems;
 -- select * from Orders;
 -- select * from OrderItems;

-- select distinct category from menuItems 
-- select * from Orders WHERE HOUR(orderDate) < "12:00:00";
-- select * from Orders WHERE HOUR(orderDate) > "12:00:00";
-- select customer, COUNT(*) from Orders GROUP BY customer;
-- select COUNT(*) from Orders WHERE customer = "Maria";
-- select category, AVG(price) from menuItems GROUP BY category;
-- select category, AVG(calories) from menuItems GROUP BY category;
-- select MAX(price) from menuItems where category = "main";
-- select MAX(price) from menuItems where category = "side"

/* select orderDate, customer from Orders 
 join OrderItems ON Orders.Id=OrderItems.orderId
 Join menuItems ON OrderItems.itemId=menuItems.id
 where OrderItems.orderId = 1;*/
 
 /*Select SUM(calories) from menuItems 
 Join OrderItems ON menuItems.id=OrderItems.itemId
 where orderId=1;*/
 
 /*Select price, name, category from menuItems m where price IS NOT NULL AND price =
	(select MAX(price) from menuItems where category = m.category)
 group by category;*/
 
 /*Select name, Count(*) from menuItems
 Join OrderItems ON menuItems.id=OrderItems.itemId
 group by name
 having COUNT(*);*/
 

 
 /*select AVG(price) from menuItems 
 join OrderItems ON menuItems.id=OrderItems.itemId
 Join Orders ON OrderItems.orderId=Orders.id
 where HOUR(orderDate) < "12:00:00";*/
 
 /*select AVG(price) from menuItems 
 join OrderItems ON menuItems.id=OrderItems.itemId
 Join Orders ON OrderItems.orderId=Orders.id
 where HOUR(orderDate) > "12:00:00";*/

 /*select orderDate, customer from Orders 
 where Orders.customer Like "G%";*/

/*select name from menuItems
Join OrderItems ON menuItems.id=OrderItems.itemId;*/

 /*select size, COUNT(*) from menuItems 
 join OrderItems ON menuItems.id=OrderItems.itemId
 Join Orders ON OrderItems.orderId=Orders.id
 where DAY(orderDate) = "13";*/


