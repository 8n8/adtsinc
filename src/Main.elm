module Main exposing (main)

import Html
import Browser
import Url
    

main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        }

type Model
    = Home
    | ArrayType
    | ArrayAverage
    | Array


init : () -> Url -> Key -> (Model, Cmd Msg)
init () url key =
         

view : Model -> Document Msg

update : Msg -> Model -> (Model, Cmd Msg)

subscriptions : Model -> Sub Msg

onUrlRequest : UrlRequest -> Msg

onUrlChange : Url -> Msg
