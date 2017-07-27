# Hands-on for Elm

Introduction hands-on workshop for Elm

## Requirements

 * [NodeJS](https://nodejs.org/en/download/)
 * Elm: `npm install -g elm`
 * Elm test: `npm install -g elm-test`
 * Chokidar: `npm install -g chokidar-cli`

## Commands

### Test

```sh
chokidar 'src/**/*.elm' -c 'elm-test' # re-run the test for each change
elm-test
```


### Run the application

```sh
chokidar 'src/**/*.elm' -c 'elm-make src/Todo.elm --output elm.js' # rebuild the app for each change
open index.html
```

### A few Commands

```sh
elm-package install # install dependencies
elm-make src/Todo.elm --output elm.js # build the app
elm-test #run the tests
```

## IDE plugins

* For Atom https://atom.io/packages/language-elm
* For Sublime https://atom.io/packages/language-elm (not tested)
* For IDEA https://plugins.jetbrains.com/plugin/8192-elm-language-plugin

## Steps

### Delete a Todo

The application is not compiling find out why and fix the problem. To make sure you implemented the feature correctly use test suite.


### Check a Todo

Your application should be up and running but you can't check or uncheck todos. Uncomment in `tests/Main.elm` the line `Todo.Update.Check.tests` You should have some failing test. Fix it and don't forget to update the view.

### Add the number of task in the view
Add in the view, the number of tasks created
