CREATE TABLE recipes
(
  recipe_name text PRIMARY KEY NOT NULL
,
  ingredients text NOT NULL
,
  instructions text NOT NULL
,
  category VARCHAR(20) REFERENCES category (category) NOT NULL
);


CREATE TABLE category
(
  catId SERIAL PRIMARY KEY
  ,
  category VARCHAR(20) NOT NULL
);

INSERT INTO category
VALUES
  (DEFAULT, 'Beverages')
,
  (DEFAULT, 'Breakfast')
,
  (DEFAULT, 'Breads')
,
  (DEFAULT, 'Soups')
,
  (DEFAULT, 'Salads')
,
  (DEFAULT, 'Side Dishes')
,
  (DEFAULT, 'Main Dishes')
,
  (DEFAULT, 'Cookies')
,
  (DEFAULT, 'Cakes and Frostings')
,
  (DEFAULT, 'Pies')
,
  (DEFAULT, 'Desserts');



INSERT INTO recipes
VALUES
  ('Holiday Punch', '1-2 liter bottle ginger ale 1-64 oz bottle Cranberry juice cocktail', 'Combine and serve cold.', ( SELECT category
    FROM category
    WHERE category ='Beverages' )) 
,
  ('Hot Punch', '5 quarts water 3 ½ cups sugar 1 cinnamon stick 1 tsp cloves, ground 1- 12 oz can orange juice concentrate 1/2 - 12 oz can lemonade concentrate 1 pkg. orange kool-aid, Add 4 quarts water, sugar, cinnamon stick, cloves, orange juice concentrate, lemonade concentrate and kool-aid to a 6 quart slow cooker. Stir to combine. Allow 1-2 hours for the punch to heat up. Note: the cloves will incorporate into the punch better if you make a paste with a little water before you add them to the mixture.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  ('Mom''s Brew', '1-2 liter bottle lemon-lime soda 1-64 oz. bottle white grape juice', 'Combine and serve cold.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  ('Russian Tea', '2 cups Tang 2 cups lemonade powder 1 pkg orange kool aid 2 tsp cinnamon 2 tsp cloves', 'Mix together and store in a dry place. To make an individual serving, add ½ to 1 tablespoon of the mix to 1 cup of hot water and stir.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))