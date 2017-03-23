# TodoMVC in Elm - [Try It!](http://evancz.github.io/elm-todomvc)

From [Elm todomvc](https://github.com/evancz/elm-todomvc), just a small handsone

## Requirements

 * [NodeJS](https://nodejs.org/en/download/)
 * Elm: `npm install -g elm`
 * Elm test: `npm install -g elm-test`

## Commands

### Test

```sh
elm-test
```


### Run the application

```sh
chokidar 'src/**/*.elm' -c 'elm-make Todo.elm --output elm.js' # rebuild the app for each change
open index.html
```


## Steps
