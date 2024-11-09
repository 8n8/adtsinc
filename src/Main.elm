module Main exposing (main)

import Html
import Browser
import Url
import Browser.Navigation exposing (Key)
import Url exposing (Url)
    

main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        }

type alias Model =
    { page : Page
    , urlKey : Navigation.Key
    }
    

type Page
    = Home
    | ArrayTypeForm
    | ArrayMeanSizeForm ArrayType
    | ArrayMaxCountForm { type_ : ArrayType, meanSize : Int }
    | ArrayResult { type_ : ArrayType, meanSize : Int, maxCount : Int }


init : () -> Url -> Navigation.Key -> (Model, Cmd Msg)
init () url key =


view : Model -> Document Msg

update : Msg -> Model -> (Model, Cmd Msg)

subscriptions : Model -> Sub Msg

onUrlRequest : UrlRequest -> Msg

onUrlChange : Url -> Msg
