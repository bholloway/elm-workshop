module Todo.Update.Delete exposing (..)

import Test exposing (..)
import Expect
import Updates exposing(..)
import Messages exposing(..)
import Models exposing(..)

currentModel: Model
currentModel = { emptyModel |
                    entries = [ newEntry "TODO 1" 1
                              , newEntry "TODO 2" 2
                              , newEntry "TODO 3" 3
                              ]}


tests : Test
tests =
    describe "Todo Module"
        [ describe "Updates"
            [ describe "Delete one event"
              [ test "if present, should delete the correct todo" <|
                  \() ->
                    let
                      (actual, _ ) = update (Delete 2) currentModel
                      expected = { emptyModel |
                                          entries = [ newEntry "TODO 1" 1
                                                    , newEntry "TODO 3" 3
                                                    ]}
                    in
                      Expect.equal actual expected
              , test "if not present, should delete nothing" <|
                  \() ->
                    let
                      (actual, _ ) = update (Delete 5) currentModel
                      expected = currentModel
                    in
                      Expect.equal actual  currentModel
                ]
            ]
        ]
