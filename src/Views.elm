module Views exposing (..)

import Html exposing (..)
import Types exposing (Model, Msg)


page : Model -> Html Msg
page model =
    case model.route of
        "/" ->
            home model

        _ ->
            notFound model


home : Model -> Html Msg
home model =
    div []
        [ text "home"
        ]


notFound : Model -> Html Msg
notFound model =
    div []
        [ text "404"
        ]
