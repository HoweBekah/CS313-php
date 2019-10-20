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

INSERT INTO recipes
VALUES
  (DEFAULT, 'Banana Bread', '1 cup oil 2 1/2 cup sugar 3 eggs 3 cup flour 1/2 cup buttermilk 3/4 tsp. baking soda 2 tsp. vanilla 1 cup mashed banana 1 cup chopped nuts (optional) 1/4 cup coconut (optional)', 'Mix all ingredients. Grease and flour bundt pan. Bake at 325° for 1 hour and 15 minutes. Turn pan upside down and let cool!', ( SELECT category
    FROM category
    WHERE category ='Breads' ))
,
  (DEFAULT, 'Cheese Soup', '3/4 cup butter 1 large onion, chopped 1 1/2 cups flour 3 quarts water 12 chicken bouillon cubes 1 16 oz pkg. frozen mixed vegetables 1 large jar Cheeze Whiz 2 cups diced cooked chicken', 'Melt butter in a large pot over medium high heat. Sauté onion in butter until onions are soft and translucent, about 5 minutes. Add flour and stir until mixture is well combined. Add water and bouillon. Bring mixture to a boil. Add vegetables, Cheeze Whiz, and chicken. Return to boil. Reduce heat and simmer for 10-20 minutes, until vegetables are cooked and cheese is completely mixed in. Variation: Sarahs Vegan Cheese Sauce (p. ) makes a good substitute for the Cheeze Whiz.', ( SELECT category
    FROM category
    WHERE category ='Soups' ))
,
  (DEFAULT, 'Broccoli Salad', '1-2 heads of fresh broccoli 1/2 lb of bacon, cooked, drained, and crumbled 1 cup smoked almonds 1/2 cup chopped red onion 1/2 cup raisins 1 cup mayonnaise or miracle whip 1/4 cup sugar 2 TBSN red wine vinegar', 'Mix first five ingredients in a large bowl. Mix remaining ingredients in a separate bowl to make the dressing. Pour dressing over salad and toss to coat. Let salad sit in the refrigerator for a few hours before serving.', ( SELECT category
    FROM category
    WHERE category ='Salads' ))
,
  (DEFAULT, 'Baked Beans', '8 -16 oz cans of pork & beans 3 C. brown sugar 1 lb. (24 slices) bacon, cut into small pieces. (Precooked bacon works too) 4 tsp. yellow mustard 1 C. catsup 3 tsp. Liquid Smoke', 'Put all ingredients in a large slow cooker and cook for 4 hours. Add Liquid Smoke and transfer to 325° oven. Cook uncovered for 2 hours stirring every 20-30 minutes.', ( SELECT category
    FROM category
    WHERE category ='Side Dishes' ))
,
  (DEFAULT, 'Bean Dip Casserole', '1 large can refried beans 1 can cream of mushroom soup 1 lb ground beef 1 small can enchilada sauce 2 cups shredded cheddar cheese', 'Combine beans and soup. Spread in a glass 9x13 dish. Brown ground beef and drain off extra fat. Spread meat evenly over bean mixture. Pour enchilada sauce over meat. Sprinkle cheese over the top. Cover with plastic wrap. Cook in microwave for 10 minutes. Serve with tortilla chips.', ( SELECT category
    FROM category
    WHERE category ='Main Dishes' ))
,
  (DEFAULT, 'Banana Chocolate Chip Cookies', '2 2/3 cups all-purpose flour 1/2 tsp. baking soda 1/4 tsp. salt 1 cup light brown sugar, firmly packed 1/2 cup white sugar 1 cup salted butter, softened 1 large egg 1 tsp. banana extract 3/4 cup (1 medium) mashed ripe banana 2 cups (12 oz.) semisweet chocolate chips 1 cup (4 oz.) chopped walnuts', 'Preheat oven to 300F. In medium bowl combine flour, soda and salt. Mix well with a wire whisk. Set aside. In large bowl with an electric mixer, blend sugars at medium speed. Add butter and mix to form a grainy paste, scraping down the sides of the bowl. Add egg, liqueur and banana, and beat at medium speed until smooth. Add the flour mixture, 1 cup of the chocolate chips and the walnuts, and blend at low speed until just combined. Do not overmix. Drop by rounded tablespoons onto ungreased cookie sheets, 2 inches apart. Sprinkle cookies with chocolate chips, 6 to 8 per cookie. Bake 25-27 minutes or until cookie edges begin to brown. Transfer immediately to a cool surface with a spatula.', ( SELECT category
    FROM category
    WHERE category ='Cookies' ))
,
  (DEFAULT, 'Buttercream Frosting', '3 cups powdered sugar 1/3 cup butter, softened 1 1/2 tsp vanilla About 2 tablespoons milk', 'Mix powdered sugar and margarine. Stir in vanilla and milk; beat until frosting is smooth and of spreading consistency. Note: Add 4 tbsp cocoa powder to make chocolate frosting.', ( SELECT category
    FROM category
    WHERE category ='Cakes and Frostings' ))
 
,
  (DEFAULT, 'Best Pie Crust', '2 1/2 cups flour 1 tbsp sugar 1 1/2 tsp salt 7 tbsp. very cold butter, cut into small pieces 7 tbsp. very cold shortening, cut into pieces 1/2 cup ice water', 'Mix flour, sugar, and salt in a large bowl. Drop in butter and shortening. Using your hands, a fork, a pastry cutter, or two knives, work butter and shortening into the flour mixture until it resembles cornmeal with some small pea-size pieces. Using a fork, quickly stir in ice water (mixture will not hold together). Turn dough and crumbs onto a clean surface. Knead just until dough starts to hold together but some bits still fall away, 5 to 10 times. Divide dough in half and pat each half into a 6-in. disk. Wrap each disk in plastic wrap and refrigerate at least 20 minutes and up to overnight. Note: Instead of cutting the butter into small pieces freeze it and then grate it on the large holes of a box grater. This will make it much easier to incorporate into the flour.', ( SELECT category
    FROM category
    WHERE category ='Pies' ))
,
  (DEFAULT, 'Apple Crisp', '3 lbs apples (6 to 8), peeled, cored, and sliced 1/4 cup sugar 1 1/2 tbsp lemon juice 1/2 tsp grated lemon zest (opt) 3/4 cups oats 3/4 cup brown sugar 1/2 cup flour 1 tsp. cinnamon 1/4 tsp. salt 1/2 cup butter, softened', 'Toss apple, sugar, lemon juice, and zest until apples are evenly coated. Place in a 8x8 baking dish. Combine remaining ingredients. Distribute the topping evenly over the apples. Bake at 375° for 35-40 minutes.', ( SELECT category
    FROM category
    WHERE category ='Desserts' ));


/*(DEFAULT, '', '', '', ( SELECT category
    FROM category
    WHERE category ='' */

CREATE TABLE ingredients
(
  ingredient_id SERIAL PRIMARY KEY
  ,
  recipe int REFERENCES recipes (recipe_id) NOT NULL
  ,
  ingredient VARCHAR(50) NOT NULL
);

INSERT INTO ingredients
VALUES
  (DEFAULT, 8, '1 1/2 cups whipping cream')
  ,
  (DEFAULT, 8, '1 14 oz can sweetened condensed milk')
  ,
  (DEFAULT, 8, '6 cups milk')
  ,
  (DEFAULT, 8, '1 tsp vanilla')
  ,
  (DEFAULT, 8, '2 cups milk chocolate chips');

INSERT INTO ingredients
VALUES
  (DEFAULT, 4, '2 cups Tang')
  ,
  (DEFAULT, 4, '2 cups lemonade powder')
  ,
  (DEFAULT, 4, '1 pkg orange kool aid')
  ,
  (DEFAULT, 4, '2 tsp cinnamon')
  ,
  (DEFAULT, 4, '2 tsp cloves')
  ,
  (DEFAULT, 2, '5 quarts water')
  ,
  (DEFAULT, 2, '3 1/2 cups sugar')
  ,
  (DEFAULT, 2, '1 cinnamon stick')
  ,
  (DEFAULT, 2, '1 tsp cloves, ground')
  ,
  (DEFAULT, 2, '1 12 oz can orange juice concentrate')
   ,
  (DEFAULT, 2, '1/2 - 12 oz can lemonade concentrate')
   ,
  (DEFAULT, 2, '1 pkg. orange kool-aid');

INSERT INTO ingredients
VALUES
  (DEFAULT, 1, '1-2 liter bottle ginger ale')
  ,
  (DEFAULT, 1, '1-64 oz bottle Cranberry juice cocktail (any variety, Grandma uses cran-raspberry)')
  ,
  (DEFAULT, 3, '1-2 liter bottle lemon-lime soda')
  ,
  (DEFAULT, 3, '1 - 64 oz. bottle white grape juice')
  ,
  (DEFAULT, 9, '2 cups milk chocolate chips')
  ,
  (DEFAULT, 9, '1/2 - 12 oz. can orange juice concentrate')
  ,
  (DEFAULT, 9, '1/2 - 12 oz. can lemonade concentrate')
  ,
  (DEFAULT, 9, '1 cup sugar')
  ,
  (DEFAULT, 9, '6 1/2 cups water')
  ,
  (DEFAULT, 9, '1- 2 liter bottle lemon-lime soda')
  ,
  (DEFAULT, 9, '1 tsp vanilla extract')
  ,
  (DEFAULT, 9, '1 tsp almond extract');


INSERT INTO ingredients
VALUES
  (DEFAULT, 10, '4 1/4 cups self rising flour')
  ,
  (DEFAULT, 10, '2 cups buttermilk')
  ,
  (DEFAULT, 10, '1/2 cup butter')
  ,
  (DEFAULT, 10, '1/4 tsp. baking powder')
  ,
  (DEFAULT, 10, '1/8 tsp. baking soda')
  ,
  (DEFAULT, 10, '1 tbsp. sugar')
  ,
  (DEFAULT, 11, '2 cups all purpose flour')
  ,
  (DEFAULT, 11, '2 tsp. sugar')
  ,
  (DEFAULT, 11, '2 tsp. baking powder')
  ,
  (DEFAULT, 11, '1/2 tsp. salt')
  ,
  (DEFAULT, 11, '1 1/2 cups heavy cream')
  ,
  (DEFAULT, 12, '4 cups all-purpose flour')
  ,
  (DEFAULT, 12, '4 teaspoon baking powder')
  ,
  (DEFAULT, 12, '1/2 teaspoon salt')
  ,
  (DEFAULT, 12, '1 cup butter or margarine, softened')
  ,
  (DEFAULT, 12, '2 cups sugar')
  ,
  (DEFAULT, 12, '4 eggs')
  ,
  (DEFAULT, 12, '1 cup milk')
  ,
  (DEFAULT, 12, '2 teaspoon vanilla extract')
  ,
  (DEFAULT, 12, '2 cups frozen blueberries, unthawed')
  ,
  (DEFAULT, 12, 'TOPPING:')
  ,
  (DEFAULT, 12, '2 tablespoon sugar')
  ,
  (DEFAULT, 12, '1/2 teaspoon ground nutmeg');


INSERT INTO ingredients
VALUES
  (DEFAULT, 13, '1 cup oil')
  ,
  (DEFAULT, 13, '2 1/2 cup sugar')
  ,
  (DEFAULT, 13, '3 eggs')
  ,
  (DEFAULT, 13, '3 cup flour')
  ,
  (DEFAULT, 13, '1/2 cup buttermilk')
  ,
  (DEFAULT, 13, '3/4 tsp. baking soda')
  ,
  (DEFAULT, 13, '2 tsp. vanilla')
  ,
  (DEFAULT, 13, '1 cup mashed banana')
  ,
  (DEFAULT, 13, '1 cup chopped nuts (optional)')
  ,
  (DEFAULT, 13, '1/4 cup coconut (optional)')
  ,
  (DEFAULT, 14, '1 1/2 cups heavy cream')
  ,
  (DEFAULT, 14, '4 cups all-purpose flour')
  ,
  (DEFAULT, 14, '4 teaspoon baking powder')
  ,
  (DEFAULT, 14, '1/2 teaspoon salt')
  ,
  (DEFAULT, 14, '1 cup butter or margarine, softened')
  ,
  (DEFAULT, 14, '2 cups sugar')
  ,
  (DEFAULT, 14, '4 eggs')
  ,
  (DEFAULT, 14, '1 cup milk')
  ,
  (DEFAULT, 15, '1-2 heads of fresh broccoli')
  ,
  (DEFAULT, 15, '1/2lb of bacon, cooked, drained, and crumbled')
  ,
  (DEFAULT, 15, '1 cup smoked almonds')
  ,
  (DEFAULT, 15, '1/2 cup chopped red onion')
  ,
  (DEFAULT, 15, '1/2 cup raisins')
  ,
  (DEFAULT, 15, '1 cup mayonnaise or miracle whip')
  ,
  (DEFAULT, 15, '1/4 cup sugar')
  ,
  (DEFAULT, 15, '2 Tbsp red wine vinegar');

INSERT INTO ingredients
VALUES
  (DEFAULT, 16, '8 - 16 oz cans of pork & beans')
  ,
  (DEFAULT, 16, '3 cup brown sugar')
  ,
  (DEFAULT, 16, '1 lb. (24 slices) bacon, cut into small pieces. Precooked bacon works too.')
  ,
  (DEFAULT, 16, '4 tsp. yellow mustard')
  ,
  (DEFAULT, 16, '1 cup Ketchup')
  ,
  (DEFAULT, 16, '3 tsp. Liquid Smoke')
  ,
  (DEFAULT, 17, '1 large can refried beans')
  ,
  (DEFAULT, 17, '1 can cream of mushroom soup')
  ,
  (DEFAULT, 17, '1lb ground beef')
  ,
  (DEFAULT, 17, '1 small can enchilada sauce')
  ,
  (DEFAULT, 17, '2 cups shredded cheddar cheese')
  ,
  (DEFAULT, 18, '2 2/3 cups all-purpose flour')
  ,
  (DEFAULT, 18, '1/2 tsp. baking soda')
  ,
  (DEFAULT, 18, '1/4 tsp. salt')
  ,
  (DEFAULT, 18, '1 cup light brown sugar, firmly packed')
  ,
  (DEFAULT, 18, '1/2 cup white sugar')
  ,
  (DEFAULT, 18, '1 cup salted butter, softened')
  ,
  (DEFAULT, 18, '1 large egg')
  ,
  (DEFAULT, 18, '1 tsp. banana extract')
  ,
  (DEFAULT, 18, '3/4 cup (1 medium) mashed ripe banana')
  ,
  (DEFAULT, 18, '2 cups (12 oz.) semisweet chocolate chips')
  ,
  (DEFAULT, 18, '1 cup (4 oz.) chopped walnuts')
  ,
  (DEFAULT, 19, '3 cup powdered sugar')
  ,
  (DEFAULT, 19, '1/3 cup butter, softened')
  ,
  (DEFAULT, 19, '1 1/2 tsp vanilla')
  ,
  (DEFAULT, 19, 'About 2 tablespoons milk');


INSERT INTO ingredients
VALUES
  (DEFAULT, 20, '2 1/2 cups flour')
  ,
  (DEFAULT, 20, '1 tbsp sugar')
  ,
  (DEFAULT, 20, '1 1/2 tsp salt')
  ,
  (DEFAULT, 20, '7 tbsp. very cold butter, cut into small pieces')
  ,
  (DEFAULT, 20, '7 tbsp. very cold shortening, cut into pieces')
  ,
  (DEFAULT, 20, '1/2 cup ice water')
  ,
  (DEFAULT, 21, '3lbs apples (6 to 8), peeled, cored, and sliced')
  ,
  (DEFAULT, 21, '1/4 cup sugar')
  ,
  (DEFAULT, 21, '1 1/2 tbsp lemon juice')
  ,
  (DEFAULT, 21, '1/2 tsp grated lemon zest (opt)')
  ,
  (DEFAULT, 21, '3/4 cups oats')
  ,
  (DEFAULT, 21, '3/4 cup brown sugar')
  ,
  (DEFAULT, 21, '1/2 cup flour')
  ,
  (DEFAULT, 21, '1 tsp. cinnamon')
  ,
  (DEFAULT, 21, '1/4 tsp. salt')
  ,
  (DEFAULT, 21, '1/2 cup butter, softened');

CREATE TABLE recipes2
(
  recipe_id SERIAL PRIMARY KEY
  ,
  recipe_name text NOT NULL
,
  ingredients text
  [] NOT NULL
,
  instructions text NOT NULL
,
  category VARCHAR
  (20) REFERENCES category
  (category) NOT NULL);

  INSERT INTO recipes2
  VALUES
    (DEFAULT, 'Holiday Punch', '{"1-2 liter bottle ginger ale", "1-64 oz bottle Cranberry juice cocktail"}', 'Combine and serve cold.', ( SELECT category
      FROM category
      WHERE category ='Beverages' )) 
,
    (DEFAULT, 'Hot Punch', '{"5 quarts water", "3 1/2 cups sugar", "1 cinnamon stick", "1 tsp cloves, ground", "1 - 12 oz can orange juice concentrate", "1/2 - 12 oz can lemonade concentrate", "1 pkg. orange kool-aid"}', 'Add 4 quarts water, sugar, cinnamon stick, cloves, orange juice concentrate, lemonade concentrate and kool-aid to a 6 quart slow cooker. Stir to combine. Allow 1-2 hours for the punch to heat up. Note: the cloves will incorporate into the punch better if you make a paste with a little water before you add them to the mixture.', ( SELECT category
      FROM category
      WHERE category ='Beverages' ))
,
    (DEFAULT, 'Mom''s Brew', '{"1-2 liter bottle lemon-lime soda", "1 - 64 oz. bottle white grape juice"}', 'Combine and serve cold.', ( SELECT category
      FROM category
      WHERE category ='Beverages' ));