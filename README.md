# json-schema-talk
Build an ice cream machine. Alpacajs forms library and prmd demo.

## The ice cream machine

An Ice cream machine makes ice cream out of
- Ice from the [ice man](http://mentalfloss.com/article/22407/surprisingly-cool-history-ice)
- Cream from the cow
- Sugar, Vanilla, and Extras from the grocer
- Egg yolks from the hen

## Examine...
the schema in /schema/schemata/ice-cream.yml

## Display...
... the schema as a visual click through thingy. 
Run the server with 
`ruby application.rb`

[Thingy](http://localhost:3000/docson)

[schema.json](http://localhost:3000/schema.json)

## Fill out a form...
...Make your selections for your kind of ice cream.

[ingredients](http://localhost:3000/ingredients-from.html)

## Submit, and enjoy some ice cream!
Submit send a post request to create some ice cream with the machine using the ingredients you chose.

# Do it again, but using references ($ref)
[schema-with-refs](http://localhost:3000/schema-with-refs.json)

[ice-man](http:localhost:3000/schema/ice-man.json)

[cow](http://localhost:3000/schema/cow.json)

[hen](http://localhost:3000/schema/hen.json)

[grocer](http://localhost:3000/schema/grocer.json)



(feel free to use and change this project and code freely with no attribution)
