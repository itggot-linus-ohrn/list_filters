# Filter #

Den här uppgiften går ut på att skriva ett tre olika funktioner för att manipulera listor.

Ni skriva tre funktioner: `filter`, `exclude`, och `unique`.

Filtrera: `filter`

`filter` tar en lista (`array`) och ett värde (`value`) *som argument*, och *returnerar* en ny lista där alla andra värden i `array` än `value` saknas.

Utesluta: `exclude`

`exclude` tar en lista (`array`) och ett värde (`value`) *som argument*, och *returnerar* en ny lista där alla värden i `array` som är  samma som `value` saknas.

Unika: `unique`

`unique` tar en lista (`array`) *som argument*, och *returnerar* en ny lista där varje värde från `array` enbart förekommer en gång.

### Exempel ###

#### Ruby ####

    filter(['bosse', 'daniel', 'edvard', 'bosse', 'bosse'], 'bosse')
    #=> ['bosse', 'bosse', 'bosse']

    exclude(['bosse', 'daniel', 'edvard', 'bosse', 'bosse'], 'bosse')
    #=> ['daniel', 'edvard']

    unique(['bosse', 'daniel', 'edvard', 'bosse', 'bosse'])
    #=> ['bosse', 'daniel', 'edvard']

### Flödesschema ###

Innan ni börjar koda ska du skapa ett flödesschema för funktionen.

Testa flödesschemat med penna och papper

### Testning ###

Kör `bundle install` i projektets rotmapp om du inte redan har alla gems installerade.

Kör `rake` eller `rake test function_name` för att köra testerna.

### Länkar ###

Läs mer om loopar och listor i övningar 32, 34, och 38 i [*Learn Ruby the Hard Way*](http://ruby.learncodethehardway.org/book)

* [Learn Ruby the Hard Way - Exercise 32: Loops and Arrays](http://learnrubythehardway.org/book/ex32.html)
* [Learn Ruby the Hard Way - Exercise 34: Accessing Elements of Arrays](http://learnrubythehardway.org/book/ex34.html)
* [Learn Ruby the Hard Way - Exercise 38: Doing Things to Arrays](http://learnrubythehardway.org/book/ex38.html)

