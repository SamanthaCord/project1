# README

**BiteRite APPLICATION**

BiteRite is a digital menu assist application, designed to improve the user experience of deciding what to order at restaurants and cafes and also relieve the staff from answering so many questions about each dish. The test client for this application is a health food cafe.

We know people are time poor, and looking to improve their health by choosing to eat at the cafe. BiteRite allows the customer to gain information quickly and easily, and also based on what best suits their needs at the time.

The customer can view the menu in 4 different ways:
1. By selecting a 'health kick' or 'problem area' and have the application recommend meals targeting that problem.
2. They can ask the application to select meals based on what's most suited to the current weather.
3. They can request a random or surprise selection.
4. Or normally, by selecting the full menu option.

The application includes a simple CMS, where administrators can add / edit the menu and health benefit list and also add new administrators.

**CURRENT BUGS**

1. The weather API is not pulling the correct temperature. The data is pulled correctly through the API but the data itself appears to be incorrect.

2. When admin create a new team member, upon creating the new member it signs in as them, it should really just add them to the user list.

**FUTURE UPDATES**

1. Add success alerts (using Bootstrap) when adding to the menu or health list so a user can see their item was added straight away.

2. Make the price next to the menu items all sit in one line for better viewing.

3. When you update a menu item it moves to the bottom of the section list. It would be better if new items added to the bottom, but updated ones retained their position.

4. Admin should be able to add new menu categories (this would just mean creating a 'Categories' table and linking menu items to it, or adding 'category' as a record to the menu table).

5. Extend clickable area inside main homepage buttons so you can click anywhere inside them.

6. Update the way the random meal function works so it pulls the name, description, and price separately. This will allow for nicer styling.
