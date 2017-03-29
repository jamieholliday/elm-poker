module App exposing (..)

import Navigation
import Html exposing (..)
import Types exposing (Model, Msg(UrlChange))
import Views


-- import Html.Events exposing (onInput, onClick)


initialModel : Navigation.Location -> Model
initialModel location =
    { history = [ location ]
    , user =
        { name = ""
        , id = ""
        , isHost = False
        }
    , nameInput = ""
    , route = "/"
    }


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
    (update (UrlChange location) (initialModel location))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( { model | route = location.pathname }, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ Views.page model ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
