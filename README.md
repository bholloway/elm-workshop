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

### Delete a Todo

The application is not compiling find out why and fix the problem. To make sure you implemented the feature correctly use test suite.


### Check a Todo

Your application should be up and running but you can't check or uncheck todos. Uncomment in `tests/Main.elm` the line `Todo.Update.Check.tests` You should have some failing test. Fix it and don't forget to create the view.
