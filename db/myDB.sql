CREATE TABLE recipes
(
  recipe_id SERIAL PRIMARY KEY
  ,
  recipe_name text NOT NULL
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
  category VARCHAR(20) NOT NULL UNIQUE
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
  (DEFAULT, 'Holiday Punch', '1-2 liter bottle ginger ale 1-64 oz bottle Cranberry juice cocktail', 'Combine and serve cold.', ( SELECT category
    FROM category
    WHERE category ='Beverages' )) 
,
  (DEFAULT, 'Hot Punch', '5 quarts water 3 ½ cups sugar 1 cinnamon stick 1 tsp cloves, ground 1- 12 oz can orange juice concentrate 1/2 - 12 oz can lemonade concentrate 1 pkg. orange kool-aid', 'Add 4 quarts water, sugar, cinnamon stick, cloves, orange juice concentrate, lemonade concentrate and kool-aid to a 6 quart slow cooker. Stir to combine. Allow 1-2 hours for the punch to heat up. Note: the cloves will incorporate into the punch better if you make a paste with a little water before you add them to the mixture.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  (DEFAULT, 'Mom''s Brew', '1-2 liter bottle lemon-lime soda 1-64 oz. bottle white grape juice', 'Combine and serve cold.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  (DEFAULT, 'Russian Tea', '2 cups Tang 2 cups lemonade powder 1 pkg orange kool aid 2 tsp cinnamon 2 tsp cloves', 'Mix together and store in a dry place. To make an individual serving, add ½ to 1 tablespoon of the mix to 1 cup of hot water and stir.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  (DEFAULT, 'Slow Cooker Hot Chocolate', '1 ½ cups whipping cream 1 – 14 oz can sweetened condensed milk 6 cups milk 1 tsp vanilla 2 cups milk chocolate chips', 'Stir together all ingredients in a slow cooker. Cover and cook on low for 2 hours, stirring occasionally, until mixture is hot and chocolate chips are melted. Turn slow cooker to warm. Do not cook overnight. Variation: use peppermint extract instead of vanilla and white chocolate chips instead of milk chocolate chips.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  (DEFAULT, 'Summer Cooler', '½ - 12 oz. can orange juice concentrate ½ - 12 oz. can lemonade concentrate 1 cup sugar 6 ½ cups water 1- 2 liter bottle lemon-lime soda 1 tsp vanilla extract 1 tsp almond extract', 'Combine all ingredients. Serve cold.', ( SELECT category
    FROM category
    WHERE category ='Beverages' ))
,
  (DEFAULT, 'Biscuits', '41/4 cups self rising flour 2 cups buttermilk 1/2 cup butter 1/4 tsp. baking powder 1/8 tsp. baking soda 1 tbsp. sugar', 'Mix dry ingredients in large bowl, cut in butter. Add milk and mix. Add flour if dough is too sticky. Roll out on a floured surface to desired thickness (approximately 1 inch is standard). Cut use a biscuit cutter. Bake on a greased cookie sheet at 450° for about 10 minutes until golden. Note: if you do not have self rising flour, increase the baking powder to 7 tsp. and the baking soda to 2 3/8 tsp.', ( SELECT category
    FROM category
    WHERE category ='Breakfast' ))
,
  (DEFAULT, 'Cream Biscuits', '2 cups all purpose flour 2 tsp. sugar 2 tsp. baking powder ½ tsp. salt 1 ½ cups heavy cream', 'Whisk together the dry ingredients in a large bowl. Stir in cream with a wooden spoon or spatula until the dough forms. Turn the dough out onto a lightly floured counter and gather into a ball. Knead the dough briefly until smooth (about 30 seconds). Pat the dough into a ¾ inch thick circle. Cut the biscuits into rounds using a 2 ½ inch biscuit cutter or cut into 8 wedges using a knife. Place on a greased (or parchment covered) cookie sheet. Bake at 450° until golden brown, about 15 minutes. Alternatively, you can cover the cookie sheet with plastic wrap and refrigerate for up to 2 hours. You can also freeze the uncooked biscuits, just add 5 minutes to the cooking time when you bake them from frozen.', ( SELECT category
    FROM category
    WHERE category ='Breakfast' ))
,
  (DEFAULT, 'Blueberry Muffins', '4 cups all-purpose flour 4 teaspoons baking powder 1/2 teaspoon salt 1 cup butter or margarine, softened 2 cups sugar 4 eggs 1 cup milk 2 teaspoons vanilla extract 2 cups frozen blueberries, unthawed TOPPING: 2 tablespoons sugar 1/2 teaspoon ground nutmeg', 'In a large bowl, combine the flour, baking powder and salt. In a mixing bowl, cream butter and sugar. Add eggs, milk and vanilla; mix well. Stir in dry ingredients just until moistened. Fold in frozen blueberries. Fill greased or paper-lined muffin cups 2/3 full. Combine sugar and
nutmeg; sprinkle over muffins. Bake at 375F for 20-25 minutes or until muffins test done. Cool in pan for 10 minutes before removing to a wire rack.', ( SELECT category
    FROM category
    WHERE category ='Breakfast' ));



CREATE TABLE ingredients
(
  ingredient_id SERIAL PRIMARY KEY
  ,
  recipe int REFERENCES recipes (recipe_id) NOT NULL
  ,
  ingredient text NOT NULL
)