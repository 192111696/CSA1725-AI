% Rules defining diet suggestions based on diseases

% Diet suggestions for diabetes
diet_suggestion(diabetes) :-
    write('Diet Plan for Diabetes:'), nl,
    write('1. Focus on eating vegetables, fruits, and whole grains.'), nl,
    write('2. Limit intake of foods high in sugar and refined carbohydrates.'), nl,
    write('3. Choose healthy fats, such as those from nuts, seeds, and olive oil.'), nl,
    write('4. Control portion sizes and eat regularly throughout the day.'), nl.

% Diet suggestions for hypertension
diet_suggestion(hypertension) :-
    write('Diet Plan for Hypertension:'), nl,
    write('1. Reduce sodium intake by avoiding processed foods and adding less salt to meals.'), nl,
    write('2. Eat a diet rich in fruits, vegetables, and whole grains.'), nl,
    write('3. Include low-fat dairy products, poultry, fish, and nuts in your diet.'), nl,
    write('4. Limit consumption of red meat, sweets, and sugary beverages.'), nl.

% Diet suggestions for obesity
diet_suggestion(obesity) :-
    write('Diet Plan for Obesity:'), nl,
    write('1. Consume a balanced diet with a variety of nutrient-dense foods.'), nl,
    write('2. Control portion sizes and avoid overeating.'), nl,
    write('3. Increase intake of fruits, vegetables, and whole grains.'), nl,
    write('4. Limit consumption of high-calorie and processed foods.'), nl.

% Query example:
% ?- diet_suggestion(diabetes).
