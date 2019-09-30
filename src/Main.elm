module HomePage exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)



--Easy Minesweeper board is 8X10


oneAdjacentMine : Int
oneAdjacentMine =
    1


twoAdjacentMine : Int
twoAdjacentMine =
    2


threeAdjacentMine : Int
threeAdjacentMine =
    3


coveredBlock : String
coveredBlock =
    "X"


emptyString : String
emptyString =
    ""


mine : String
mine =
    "."


type alias Block =
    { typeOfBlock : String, covered : Bool, coordinate : List String }


type alias Gameboard =
    List Block


initialGameboard : Gameboard
initialGameboard =
    [ block1 = { typeOfBlock = "1", covered = True, coordinate = [ 1, 1 ] }, block2 = { typeOfBlock = "1", covered = True, coordinate = [ 1, 1 ] } ]


type Msg
    = ClickBlock
    | Reset
    | Start


view : Gameboard -> Html Msg
view model =
    div [ class "col-md-4" ]
        [ makeHeader
        , makeMinesweeperTable
        ]



--tr : List (Attribute msg) -> List (Html msg) -> Html msg


makeHeader : Html msg
makeHeader =
    h1 [] [ text "Minesweeper" ]


makeMinesweeperTable : Html msg
makeMinesweeperTable =
    table [ class "table table-striped" ]
        [ thead []
            [ tr []
                []
            ]
        , tbody []
            [ makeRow
            , makeRow
            , makeRow
            , makeRow
            , makeRow
            , makeRow
            , makeRow
            , makeRow
            ]
        ]


makeRow : Html msg
makeRow =
    tr []
        [ td [] [ text "Value 1" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        , td [] [ text "Value 2" ]
        ]


update : Msg -> Gameboard -> Gameboard
update msg model =
    [ { typeOfBlock = "1", covered = True, coordinate = [ 1, 1 ] }, { typeOfBlock = "1", covered = True, coordinate = [ 1, 1 ] } ]



--case msg of
--ClickBlock ->
--Reset ->
--Start ->


main : Program () Gameboard Msg
main =
    Browser.sandbox
        { init = initialGameboard
        , view = view
        , update = update
        }
