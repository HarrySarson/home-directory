module Main exposing (..)

import Platform

main =
    Platform.worker
        { init = \() -> ((), Cmd.none)
        , update = \model _ -> (model, Cmd.none)
        , subscriptions = \_ -> Sub.none
        }
