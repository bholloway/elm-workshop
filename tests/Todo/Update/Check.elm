module Todo.Update.Check exposing (..)

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
            [ describe "Check one event"
              [ test "if present, should check the correct todos" <|
                  \() ->
                    let
                      (actual, _ ) = update (Check 2 True) currentModel
                      expected = { emptyModel |
                                          entries = [ newEntry "TODO 1" 1
                                                    , { description= "TODO 2"
                                                      , id= 2
                                                      , completed = True
                                                      , editing = False
                                                      }
                                                    , newEntry "TODO 3" 3
                                                    ]}
                    in
                      Expect.equal actual expected
              , test "if not present, should check nothing" <|
                  \() ->
                    let
                      (actual, _ ) = update (Check 5 True) currentModel
                      expected = currentModel
                    in
                      Expect.equal actual  currentModel
                ]
            ]
        ]
