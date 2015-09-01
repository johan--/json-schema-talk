# json-schema-talk
Build an ice cream machine. Alpacajs forms library and prmd demo.

## The ice cream machine

An Ice cream machine makes ice cream out of
- Ice from the [ice man](http://mentalfloss.com/article/22407/surprisingly-cool-history-ice)
- Cream from the cow
- Sugar, Vanilla, and Extras from the grocer
- Egg yolks from the hen

## Examine...
the schema in [/simple.json](http://localhost:4567/simple.yml)

## Display...
... the schema as a visual click through thingy. 
Run the server with 
`ruby application.rb`

[Thingy](http://localhost:4567/docson/index.html#/schema.json)

[schema.json](http://localhost:4567/schema.json)

## Fill out a form...
...Make your selections for your kind of ice cream.

[ingredients](http://localhost:4567/ingredients-form)

## Submit, and enjoy some ice cream!
Submit send a post request to create some ice cream with the machine using the ingredients you chose.

# Do it again, but using references ($ref)

[ice-man](http:localhost:4567/schemata/ice-man.yml)

[cow](http://localhost:4567/schemata/cow.yml)

[hen](http://localhost:4567/schemata/hen.yml)

[grocer](http://localhost:4567/schemata/grocer.yml)

[ingredients](http://localhost:4567/ingredients-form-with-refs)

[Compile with refs](http://localhost:4567/)
(feel free to use and change this project and code freely with no attribution)
