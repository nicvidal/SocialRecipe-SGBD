/* INSERT INTO CATEGORIES */

DELETE FROM category;
ALTER SEQUENCE category_id_category_seq RESTART WITH 1;

INSERT INTO category(category_name) VALUES('events');
INSERT INTO category(category_name) VALUES('sweet');
INSERT INTO category(category_name) VALUES('savory');
INSERT INTO category(category_name) VALUES('holidays');
INSERT INTO category(category_name) VALUES('appetizer');
INSERT INTO category(category_name) VALUES('beverage');
INSERT INTO category(category_name) VALUES('bread');
INSERT INTO category(category_name) VALUES('dessert');
INSERT INTO category(category_name) VALUES('pancake');
INSERT INTO category(category_name) VALUES('pasta');
INSERT INTO category(category_name) VALUES('sauce');
INSERT INTO category(category_name) VALUES('salad');
INSERT INTO category(category_name) VALUES('soup');
INSERT INTO category(category_name) VALUES('vegetable');
INSERT INTO category(category_name) VALUES('fried');
INSERT INTO category(category_name) VALUES('starter');


/* INSERT INTO CONSTITUTE */
DELETE FROM constitute;

INSERT INTO constitute(id_ingredient, id_recipe, id_unit, quantity) VALUES(7, 7, 8, 1);
INSERT INTO constitute(id_ingredient, id_recipe, id_unit, quantity) VALUES(8, 7, 10, 1.5);

/* INSERT INTO IS_PART_OF*/
DELETE from is_part_of;

INSERT INTO is_part_of VALUES (5,2);
INSERT INTO is_part_of VALUES (1,2);
INSERT INTO is_part_of VALUES (2,1);
INSERT INTO is_part_of VALUES (3,1);
INSERT INTO is_part_of VALUES (6,3);
INSERT INTO is_part_of VALUES (3,3);

/* INSERT INTO INGREDIENT*/

DELETE FROM ingredient;
ALTER SEQUENCE ingredient_id_ingredient_seq RESTART WITH 1;

INSERT INTO ingredient(ingredient_name) VALUES ('Dark Chocolate');
INSERT INTO ingredient(ingredient_name) VALUES ('Sardine');
INSERT INTO ingredient(ingredient_name) VALUES ('Strawberry');
INSERT INTO ingredient(ingredient_name) VALUES ('Turkey escalope');
INSERT INTO ingredient(ingredient_name) VALUES ('Flour');
INSERT INTO ingredient(ingredient_name) VALUES ('Sugar');
INSERT INTO ingredient(ingredient_name) VALUES ('Egg');
INSERT INTO ingredient(ingredient_name) VALUES ('Ham');


/* INSERT INTO INGREDIENT_CHARACTERISTIC*/

DELETE FROM ingredient_characteristic;

INSERT INTO ingredient_characteristic VALUES (1,1,543);
INSERT INTO ingredient_characteristic VALUES (3,1,16);
INSERT INTO ingredient_characteristic VALUES (5,1,6);
INSERT INTO ingredient_characteristic VALUES (8,1,13);
INSERT INTO ingredient_characteristic VALUES (10,1,9);
INSERT INTO ingredient_characteristic VALUES (12,1,8);

INSERT INTO ingredient_characteristic VALUES (2,2,2);
INSERT INTO ingredient_characteristic VALUES (6,2,32);
INSERT INTO ingredient_characteristic VALUES (8,2,67);
INSERT INTO ingredient_characteristic VALUES (10,2,24);
INSERT INTO ingredient_characteristic VALUES (11,2,54);
INSERT INTO ingredient_characteristic VALUES (13,2,12);

INSERT INTO ingredient_characteristic VALUES (3,3,22);
INSERT INTO ingredient_characteristic VALUES (6,3,43);
INSERT INTO ingredient_characteristic VALUES (10,3,87);
INSERT INTO ingredient_characteristic VALUES (13,3,63);

INSERT INTO ingredient_characteristic VALUES (1,4,12);
INSERT INTO ingredient_characteristic VALUES (3,4,98);
INSERT INTO ingredient_characteristic VALUES (5,4,8);
INSERT INTO ingredient_characteristic VALUES (7,4,32);
INSERT INTO ingredient_characteristic VALUES (9,4,7);
INSERT INTO ingredient_characteristic VALUES (11,4,12);
INSERT INTO ingredient_characteristic VALUES (13,4,22);

INSERT INTO ingredient_characteristic VALUES (1,5,56);
INSERT INTO ingredient_characteristic VALUES (3,5,98);
INSERT INTO ingredient_characteristic VALUES (5,5,7);
INSERT INTO ingredient_characteristic VALUES (7,5,24);
INSERT INTO ingredient_characteristic VALUES (9,5,65);
INSERT INTO ingredient_characteristic VALUES (11,5,34);
INSERT INTO ingredient_characteristic VALUES (13,5,32);

INSERT INTO ingredient_characteristic VALUES (1,6,7);
INSERT INTO ingredient_characteristic VALUES (4,6,35);
INSERT INTO ingredient_characteristic VALUES (8,6,87);
INSERT INTO ingredient_characteristic VALUES (11,6,6);
INSERT INTO ingredient_characteristic VALUES (13,6,9);

INSERT INTO ingredient_characteristic VALUES (2,7,4);
INSERT INTO ingredient_characteristic VALUES (4,7,3);
INSERT INTO ingredient_characteristic VALUES (8,7,15);
INSERT INTO ingredient_characteristic VALUES (10,7,34);
INSERT INTO ingredient_characteristic VALUES (13,7,7);

INSERT INTO ingredient_characteristic VALUES (5,8,34);
INSERT INTO ingredient_characteristic VALUES (7,8,55);
INSERT INTO ingredient_characteristic VALUES (10,8,8);
INSERT INTO ingredient_characteristic VALUES (12,8,5);


/* INSERT INTO MENU*/
DELETE from menu;
ALTER SEQUENCE menu_id_menu_seq RESTART with 1;

INSERT INTO menu(menu_name,id_user) VALUES ('Christmas Meal',9);
INSERT INTO menu(menu_name,id_user) VALUES ('Valentines Meal',4);
INSERT INTO menu(menu_name,id_user) VALUES ('Pasta',2);


/* INSERT INTO NUTRITIONAL_CHARCACTERISTIC*/ 
DELETE FROM nutritional_characteristic;

ALTER SEQUENCE nutritional_characteristic_id_nc_seq RESTART WITH 1;
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Calories');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Vitamin K');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Vitamin B1');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Vitamin C');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Vitamin E');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Vitamin A');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Phosphorus');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Fiber');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Potassium');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Protein');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Zinc');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Iron');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Calcium');
INSERT INTO nutritional_characteristic(nc_name) VALUES ('Magnesium');


/* INSERT INTO RECIPE */
DELETE FROM recipe;
ALTER SEQUENCE recipe_id_recipe_seq RESTART WITH 1;

INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES('Holiday strawberry sauce', '5 minutes', '15 minutes', '8 hours', 16);
INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES('Perfect turkey', '30 minutes', '4 hours', '12 hours 30 minutes', 24);
INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES('MMMMMM... Brownies', '25 minutes', '25 minutes', '10 minutes', 16);
INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES('Grilled fennel', '10 minutes', '15 minutes', '0', 4);
INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES('Valentine ''s salmon', '20 minutes', '45 minutes', '0', 4);
INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES('Pasta Salad', '20 minutes', '15 minutes', '13 hours 30 minutes', 6);
INSERT INTO recipe(recipe_name, preparation_time, cooking_time, waiting_time, servings) VALUES ('Egg in a hole', '1 minute', '4 minute', '0', 1);


/* INSERT INTO UNIT */

DELETE FROM unit;

ALTER SEQUENCE unit_id_unit_seq RESTART WITH 1;
INSERT INTO unit(unit_name) VALUES('kilogram');
INSERT INTO unit(unit_name) VALUES('gram');
INSERT INTO unit(unit_name) VALUES('liter');
INSERT INTO unit(unit_name) VALUES('centiliter');
INSERT INTO unit(unit_name) VALUES('spoon');
INSERT INTO unit(unit_name) VALUES('pound');
INSERT INTO unit(unit_name) VALUES('cup');
INSERT INTO unit(unit_name) VALUES('unit');
INSERT INTO unit(unit_name) VALUES('tablespoon');
INSERT INTO unit(unit_name) VALUES('teaspoon');
INSERT INTO unit(unit_name) VALUES('ounce');
INSERT INTO unit(unit_name) VALUES('stick');
INSERT INTO unit(unit_name) VALUES('clove');