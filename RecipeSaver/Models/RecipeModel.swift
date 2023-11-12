//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by kwon eunji on 11/10/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe (
                    name: "Sun-Dried Tomato and Chickpea Sliders",
                    image: "https://www.forksoverknives.com/uploads/fly-images/157340/sun-dried-chickpea-sliders-wordpress-1366x566-c.jpg",
                    description: "with these produce-packed sliders. Mushrooms, chickpeas, zucchini, onion, garlic, and sun-dried tomatoes come together to form the succulent, savory patties, while balsamic-infused zucchini slices serve as buns. These sliders are on the smaller side; if you place them directly on the grill, you run the risk of losing them through the grates. We recommend using a grill pan when cooking them on the grill or on the stove.",
                    ingredients: "½ cup chopped onion\n½ cup coarsely chopped fresh mushrooms\n½ cup coarsely chopped zucchini\n1 clove garlic, minced\n¾ cup no-salt-added chickpeas, rinsed and drained, and liquid (aquafaba) reserved\n¼ cup chopped sun-dried tomatoes (not oil packed)\n1 teaspoon Italian seasoning, crushed\n½ teaspoon lemon zest\nSea salt and freshly ground black pepper, to taste\n¼ cup cornmeal\n1large zucchini, cut lengthwise into ½-inch-thick planks\n2 tablespoons balsamic vinegar\n8 slices roma tomato",
                    directions: "In a large skillet cook the first four ingredients (through garlic) over medium 3 to 4 minutes, stirring occasionally and adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking. Place in a food processor with the chickpeas, sun-dried tomatoes, Italian seasoning, and lemon zest. Cover and pulse until chunky but not pureed. Add 1 to 2 Tbsp. of the aquafaba if the mixture seems dry or isn’t sticking together. Mixture should be moist but not wet. Season with salt and pepper.\nWith wet hands, shape bean mixture into eight patties. Chill at least 20 minutes. Lightly dredge patties in cornmeal to coat.\nHeat a grill pan over medium-high. Cook sliders 8 to 10 minutes or until browned and heated through, turning once. Brush zucchini planks with some of the balsamic vinegar. Cook in grill pan 4 to 6 minutes or until crisp-tender and grill marks appear, turning once. Cut planks into 16 pieces for “buns.” Place sliders and tomato slices between plank pieces. Drizzle with any remaining vinegar.",
                    category: "Breakfast",
                    datePublished: "2019-11-11",
                    url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/sun-dried-tomato-and-chickpea-sliders/"
                    ),
                Recipe(
                    name: "Vegan Spaghetti Marinara with Lentil Balls",
                    image: "https://www.forksoverknives.com/uploads/fly-images/138584/spaghetti-meatballs-wordpress-1366x566-c.jpg",
                    description: "This whole-food vegan take on classic spaghetti and meatballs is as healthy as it is satisfying. The lentil “meatballs” take some time to make, but they’re well worth the effort. They also freeze beautifully for up to a month: After baking, freeze them in an airtight container. Reheat in a 350°F oven 20 to 30 minutes.",
                    ingredients: "1 cup dry brown lentils, rinsed and drained\n1 8-oz. package button or cremini mushrooms, trimmed and chopped\n1 onion, chopped (1 cup)\n3 small cloves garlic, minced\n¼ cup whole wheat flour\n3 tablespoons reduced-sodium tamari or soy sauce\n2 tablespoons no-salt-added tomato paste\n1 tablespoon nutritional yeast\n1 teaspoon dried oregano, crushed\n1 teaspoon onion powder\nSea salt and freshly ground black pepper, to taste\n1 lb. dry whole grain spaghetti\n6 cups purchased oil-free marinara sauce\n2 Tbsp. chopped fresh basil",
                    directions: "In a large saucepan combine lentils and 1 cup water. Bring to boiling; reduce heat. Cover and simmer 15 minutes. Add mushrooms, onion, and garlic. Cover and cook about 15 minutes more or until lentils are tender. Uncover and cook until any remaining liquid has evaporated.\nStir in the next seven ingredients (through salt and pepper). Cook, uncovered, over low about 10 minutes or until liquid is absorbed and pan is very dry, stirring occasionally. (Watch carefully so lentils do not scorch.) Spread mixture in a shallow baking pan; cool completely.\nPreheat oven to 250°F. Line a 15×10-inch baking pan with parchment paper. Scoop out 2 Tbsp. lentil mixture, shape into a ball, and place in prepared pan. Repeat to make about 20 lentil balls. Bake 45 minutes or until lightly browned and crisp.\nMeanwhile, cook spaghetti according to package directions. In a saucepan heat marinara sauce. Drain spaghetti, return to pot, and toss with 3 cups of the warm marinara sauce.\nTo serve, top spaghetti with lentil balls and top with the remaining sauce. Sprinkle with basil." ,
                    category: "Main",
                    datePublished: "2015-06-28",
                    url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/spaghetti-marinara-with-lentil-balls/"
                ),
                Recipe(
                    name: "Orzo Salad with Kale Ribs",
                    image: "https://www.forksoverknives.com/uploads/fly-images/162556/Orzo-Salad-with-Kale-Ribs-wordpress-1366x566-c.jpg",
                    description: "Kale ribs are often discarded during the cooking process because they’re tougher than the tender leaves. Instead of throwing them in the bin, toss them into boiling water with some whole wheat orzo to add a subtle crunch in this colorful pasta salad. Vibrant orange bell pepper, creamy artichoke hearts, and tangy shallot transform the simple base into a garden feast that is packed with good-for-you ingredients. Nutritional yeast gives this 30-minute dish a subtle cheesiness while sun-dried tomatoes offer bursts of rich umami flavor to round everything out. Feel free to get creative with this versatile recipe and change up the produce depending on the season. It’s a great catchall meal that can reduce food waste in your kitchen by using up straggler ingredients!",
                    ingredients: "1 cup dry whole wheat orzo\nRibs from 1 bunch kale, cut into ¼-inch pieces (about 1 cup)\n1 cup chopped orange bell pepper\n½ cup quartered artichoke hearts\n2 tablespoons thinly sliced shallot\n2 tablespoons finely chopped sun-dried tomatoes (not oil-packed)\n2 tablespoons nutritional yeast\n2 tablespoons pine nuts\n2 tablespoons white wine vinegar\n1 tablespoons finely chopped fresh basil\n½ teaspoon garlic powder\nPinch freshly ground black pepper\nSea salt, to taste",
                    directions: "Bring a pot of water to boiling. Add orzo and kale ribs and cook according to pasta package directions. Drain. Rinse under cold water; drain well.\nTransfer orzo mixture to a large bowl. Add the remaining ingredients. Mix well; taste and adjust seasoning. Serve immediately, or cover and chill 1 hour before serving.",
                    category: "Main",
                    datePublished: "2019-11-05",
                    url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/orzo-salad-with-kale-ribs/"
                ),
                Recipe(
                    name: "Southwestern Vegan Mac and “Cheese”",
                    image: "https://www.forksoverknives.com/uploads/fly-images/128076/southwestern-mac-reupload-1366x566-c.jpg",
                    description: "Macaroni and “cheese” gets a kick with corn, peppers, black beans, and spices.",
                    ingredients: "1 medium yellow onion, peeled and diced\n1 medium red bell pepper, seeded and diced\n2 cups corn kernels (from about 3 ears)\n1 jalapeño pepper, seeded and minced\n2 teaspoons ground cumin\n2 teaspoons ancho chile powder\nSalt to taste\n1 batch No-Cheese Sauce\n2 cups cooked black beans or one 15 ounce can, drained and rinsed\n½ pound whole-grain elbow macaroni, cooked according to package directions, drained, and kept warm",
                    directions: "Preheat the oven to 350° F.\nPlace the onion and red pepper in a large saucepan and sauté over medium heat for 10 minutes. Add water 1 to 2 tablespoons at a time to keep the vegetables from sticking to the pan.\nAdd the corn, jalapeño pepper, cumin, and chile powder and cook for 30 seconds. Remove from the heat and season with salt. Stir in the No-Cheese Sauce, beans, and cooked macaroni.\nSpoon the mixture into a 9 × 13-inch baking dish and bake for 30 minutes, or until bubbly.",
                    category: "Main",
                    datePublished:"2019-03-19",
                    url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/southwestern-mac-and-cheese/"
                ),
                Recipe(
                    name: "Mac and Cheese with Roasted Veggies",
                    image: "https://www.forksoverknives.com/uploads/fly-images/140812/Vegan-Mac-and-Cheese-with-Queso-wordpress-1366x566-c.jpg",
                    description: "This gorgeous dish takes vegan mac and cheese to a whole new level and is sure to please the young and not-so-young. Pasta and an assortment of juicy, tender-roasted vegetables get drenched in our velvety Vegan Queso. A sprinkling of Aleppo pepper, a popular spice in the Middle East, adds heat and a subtle sweetness similar to sun-dried tomatoes.",
                    ingredients: "2 cups grape or cherry tomatoes\nFreshly ground black pepper, to taste\n12 oz. dry short whole wheat pasta, such as macaroni\n1¼ to 1½ cups Vegan Queso\n6 cups sliced fresh cremini mushrooms\n1 bell pepper, any color, chopped (1 cup)\n1 small sweet onion, chopped (¾ cup)\n4 cloves garlic, minced\n¼ cup shredded fresh basil\n½ teaspoon ground Aleppo pepper",
                    directions: "Preheat oven to 450°F. Line a 15x10-inch baking pan with parchment paper. Spread tomatoes in prepared pan. Roast 10 to 12 minutes or until lightly browned and skins begin to pop. Season with black pepper.\nCook pasta according to package directions; drain. Return pasta to pot. Add Queso Sauce; toss to coat, adding water, 1 Tbsp. at a time, as needed to make creamy.\nMeanwhile, in an extra-large nonstick skillet cook mushrooms, bell pepper, onion, and garlic over medium 5 minutes or until tender and any liquid has evaporated, stirring occasionally.\nSpoon pasta mixture into bowls. Top with mushroom mixture and tomatoes. Sprinkle with basil and Aleppo pepper.",
                    category: "Main",
                    datePublished: "2021-10-05",
                    url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/mac-and-cheese-with-roasted-veggies/"
                ),
                Recipe(
                    name: "Individual Grilled Pesto Pizzas",
                    image: "https://www.forksoverknives.com/uploads/fly-images/158370/Indiviaul-grilled-pesto-pizzas-wordpress-1366x566-c.jpg",
                    description:  "Did someone say pizza party? Homemade dough, a savory ricotta-like bean spread, and fresh pesto make these tasty flatbreads feel like an extra special treat. Throwing them on the grill for a few minutes before and after adding the toppings gives them a delightfully smoky flavor. If you’re cooking with guests, let everyone mix and match which veggies they put on top! Feel free to use anything that’s in season, and drizzle with balsamic vinegar just before serving for a flavorful finishing touch.",
                    ingredients: "2 to 2½ cups white whole wheat flour\n\n1½ teaspoons instant yeast\n1 teaspoon pure cane sugar\n½ teaspoon sea salt\n1 15-oz. can no-salt-added cannellini beans, rinsed and drained (1½ cups)\n1 tablespoon lemon juice\n1 recipe Homemade Vegan Pesto\n½ of a yellow bell pepper, cut into thin strips\n¼ cup chopped red onion\n1½ cups cherry tomatoes, halved\nCrushed red pepper (optional)",
                    directions: "In a large bowl combine 2 cups flour, the yeast, sugar, and salt. Add 1 cup warm water (120°F to 130°F); mix well. Gradually add up to ½ cup flour to make a soft dough. On a lightly floured surface, knead dough 2 to 3 minutes or until smooth and elastic. Divide dough into four portions. Cover and let rest for 10 minutes.\n\nMeanwhile, in a medium bowl mash together beans, lemon juice, and 1 tablespoon water until nearly smooth.\nOn a lightly floured surface, roll each dough portion into an 11×8-inch oval. Place ovals on baking sheets that have been very lightly sprinkled with flour.\nCarefully slide crusts onto grill. Grill pizza crusts, covered, over medium 2 to 3 minutes or until bottoms are well browned. Transfer crusts to baking sheets. Turn crusts browned side up. Spread bean mixture over crusts; spread Easy Vegan Pesto Sauce over bean mixture. Top with bell pepper strips, onion, and tomatoes.\nSlide pizzas onto grill. Grill, covered, 2 to 3 minutes or until crust bottoms are well browned. Transfer pizzas to baking sheets; cut into wedges. If desired, sprinkle with crushed red pepper.",
                    category: "Main",
                    datePublished: "2014-02-10",
                    url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/individual-grilled-pesto-pizzas/"
                ),
                Recipe(
                    name: "Pineapple Sherbet",
                    image: "https://www.forksoverknives.com/uploads/fly-images/162860/Pineapple-Sherbet-wordpress-1366x566-c.jpg",
                    description:  "Inspired by his grandmother Florence, a big sherbet fan who served it often for dessert, Chef Del Sroufe created this healthy version of his favorite sherbet flavor, pineapple. The tangy fruit is balanced out by blending it with creamy banana, sweet maple syrup, and citrusy lemon zest. Each spoonful of this delicious treat tastes like frozen sunshine, and the bright flavors are enhanced further with a sprinkling of fresh mint. Feel free to drizzle extra maple syrup over the top of each serving if you want to indulge your sweet tooth a little more. Additional topping ideas include chopped basil, if you’re going for a more savory route, or slivered almonds, shredded unsweetened coconut, or pumpkin seeds!",
                    ingredients: "3 bananas, sliced\n1½ cups chopped pineapple\n½ cup well-chilled unsweetened, unflavored almond milk, plus more as needed\n2 tablespoons pure maple syrup (optional)\nZest of 1 lemon\nChopped fresh mint (optional)",
                    directions: "Spread sliced bananas and chopped pineapple on separate baking sheets. Freeze 2 hours or until fruit is hard.\nIn a food processor combine frozen bananas, almond milk, maple syrup (if using), and lemon zest. Puree until thick and creamy, adding more milk as needed to get a creamy consistency. Add the frozen pineapple; pulse until well incorporated. Serve immediately. If desired, drizzle with additional maple syrup and sprinkle with mint.",
                    category: "Dessert",
                    datePublished: "2014-02-10",
                    url: ""
                )
        ]
}
