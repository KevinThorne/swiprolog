% Minecraft Help Desk - Created in Prolog
%Authors: Mitch Talmadge & Kevin Thorne
%Credit: Minecraft Wiki

%Startup
start :-
        use_module(library(pce)),
        cls,
        write('**********'),
        nl,
        write('Credits to http://www.minecraftwiki.net/ for some info and definitions.'),
        nl,
        write('**********'),
        nl,nl,
        display_menu_1,
        recieve(_select, start),
        cls,
        response(_select).


%Extras

%Clear Screen
cls :-  put(27), put("["), put("2"), put("J").

%Menus to display

display_menu_1 :- % 'start' Menu 1
        write('Welcome to the Minecraft Help Desk.'),
        nl,
        write('--Main Menu'),
        nl,
        write('Please type the number corresponding to the topics below and press enter.'),
        nl,
        write('1. Crafting'),
        nl,
        write('2. Surviving'),
        nl,
        write('3. Gamemodes'),
        nl,
        write('4. Test GUI'),
        nl.
display_menu_2 :- % 'crafting' Menu 1
        write('--Main Menu->Crafting'),
        nl,
        write('Please type the number corresponding to the topics below and press enter.'),
        nl,
        write('1. What is Crafting?'),
        nl,
        write('2. How do I craft?'),
        nl,
        write('3. Where do I craft?'),
        nl,
        write('4. Go Back'),
        nl.
display_menu_3 :- % 'survival' Menu 1
        write('--Main Menu->Survival'),
        nl,
        write('Please type the number corresponding to the topics below and press enter.'),
        nl,
        write('1. What is survival?'),
        nl,
        write('2. How do I survive the first night?'),
        nl,
        write('3. Where do I get the supplies I need to survive?'),
        nl,
        write('4. Go Back'),
        nl.
display_menu_4 :- % 'survival' Menu 2
        write('--Main Menu->Survival->How to Survive'),
        nl,
        write('Please type the number corresponding to the topics below and press enter.'),
        nl,
        write('1. Section 1 - The basics'),
        nl,
        write('2. Section 2'),
        nl,
        write('3. Section 3'),
        nl,
        write('4. Go Back'),
        nl.
%Recievers and Decoders
%48 = 0
%49 = 1
%50 = 2
%51 = 3... etc

recieve(_select, _name) :- % 'start'
        get(_input),
        decode(_input, _name, _select).
%decode(<ascii dec>, <who called recieve>, <goal to execute>).
decode(49, start, crafting).
decode(50, start, survival).
decode(51, start, gamemode).
decode(52, start, gui).
decode(49, crafting, crafting2).
decode(50, crafting, crafting3).
decode(51, crafting, crafting4).
decode(52, crafting, start).
decode(49, survival, survival2).
decode(50, survival, survival3).
decode(51, survival, survival4).
decode(52, survival, start).
decode(49, survival2, survival3_1).
decode(50, survival2, survival3_2).
decode(51, survival2, survival3_3).
decode(52, survival2, survival).



%Knowledge Base

response(start) :- %Used as the "Go Back" option.
        display_menu_1,
        recieve(_select, start),
        cls,
        response(_select).

%Crafting
response(crafting) :- %Menu 1, option 1.
        display_menu_2,
        recieve(_select, crafting),
        cls,
        response(_select).
response(crafting2) :- %Menu 2, option 1.
        write('Crafting is the method by which many blocks, tools, and other resources are made in Minecraft.'),
        nl,
        nl,
        response(crafting).
response(crafting3) :- %Menu 2, option 2.
        write('In order to craft something, the player must move items from their inventory into a crafting grid. A grid can be accessed in the player\'s inventory or on a Crafting Table. The player must then arrange them into the pattern representing the item(s) they wish to create. As long as the proper pattern of resources is placed, it will not matter where within the grid the ingredients are placed. Crafting recipes can also be flipped horizontally from their depictions in the graphs below: for instance, you can make a bow with the strings on the right instead of the left. Crafting recipes come in two types: definite and indefinite. A defined item such as the bow has to have the sticks and string in the right places. An indefinite item like a Fermented Spider eye can have the ingredients anywhere within the grid.'),
        nl,
        nl,
        response(crafting).
response(crafting4) :- %Menu 2, option 3.
        write('The player has access to a 2×2 crafting grid in their Inventory screen which can be used anytime the screen is brought up. Crafting recipes that are at most 2×2 materials wide and tall can be crafted there, like wooden planks, sticks and Crafting Tables. To craft with a 3×3 grid, create a Crafting Table, place it anywhere and right-click on it. This brings up a pop-up screen which allows the player to assemble any crafting recipe in the game, as the maximum size for a recipe is 3×3.'),
        nl,
        nl,
        response(crafting).

%Surviving
response(survival) :- %Menu 1, option 2.
        display_menu_3,
        recieve(_select, survival),
        cls,
        response(_select).
response(survival2) :- %Menu 3, option 1.
        write('Survival is a gamemode in which players can collect resources, build structures, battle mobs, fight hunger, and explore the land.'),
        nl,
        nl,
        response(survival).

        %%%%%%%%%Sections for Survival%%%%%%%%

response(survival3) :- %Menu 3, option 2.
        display_menu_4,
        recieve(_select, survival2),
        cls,
        response(_select).
response(survival3_1) :- %Menu 4, option 1.
        write('Survival in Minecraft is pretty similar to survival in the real world; you need to eat, you need tools, and you need shelter. To start out, you will need wood. Wood is the basic building block of all things you will do in Minecraft. You will constantly be using it to craft tools, build houses, etc. In the real world, to get wood, you would cut down a tree with an axe. In Minecraft, however, you have fists of steel! Rather than using an axe, you can just punch the trees to get wood.'),
        nl,
        write('-Find a tree and hold down your mouse button to punch it. Continue reading once you have 10 logs.'),
        nl,
        write('Okay, so you have 10 logs. Now what? Well, you will need to turn those logs into planks. Open your inventory by pressing the \'E\' key. See the 4 boxes in the top of your inventory, the ones under "Crafting"? This is where you will craft small items, such as torches, crafting tables (used to craft bigger items), and shears. We will be using it to turn our logs into planks. Drag your stack of 10 logs into one of the 4 squares. On the right of the 4 squares, the empty square should be filled with planks. You can click on the planks to make 4 planks (only using one log), or you can hold the \'Shift\' key while clicking on the planks to use all the logs. Each log gives you 4 planks. Hold the \'Shift\' key and click on the planks. You will now be holding 40 planks. Put them in the bottom bar in your inventory.'),
        nl,
        nl,
        response(survival3).
response(survival3_2) :- %Menu 4, option 2.
        write('Section 2!!!'),
        nl,
        nl,
        response(survival3).
response(survival3_3) :- %Menu 4, option 3.
        write('Section 3!!!'),
        nl,
        nl,
        response(survival3).

        %%%%%%%%%End Sections%%%%%%%%%%%

response(survival4) :- %Menu 3, option 3.
        write('Blah blah blah!!!'),
        nl,
        nl,
        response(survival).

%Gamemodes
response(gamemode) :- %Menu 1, option 3.
        write('gamemode is the boss').
%Weather

%Mobs hostile/friendly/passive

%Music

%Blocks

%Farming

%Other worlds o_0

%environment

%enchanting
%Items

%Smelting



response(gui) :-
         new(@main, dialog('Minecraft Help Desk')),
         send(@main, append(label('test_title'))),
         send(@main, append(label('test info', 'Test info'))),
         send(@main, append(text_item(query))),
         send(@main, append(button('Send', message(@main, destroy)))),
	 send(@main, append(pixmap
         send(@main, open).
entered_query(query):-
	      write('ok').
