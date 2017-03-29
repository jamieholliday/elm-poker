module Types exposing (..)

import Navigation


type alias Model =
    { history : List Navigation.Location
    , user : User
    , nameInput : String
    , route : String
    }


type Msg
    = UrlChange Navigation.Location


type alias User =
    { name : String
    , id : String
    , isHost : Bool
    }
