-- IMPORTS
--could have used import Html exposing (...) same as *
import Html exposing (Html, button, div, br, span, text)
import Html.Events exposing (onClick)


-- Main program just like a `public static void main` for JAVA or constructor for a class
main = 
  Html.beginnerProgram { model=model, view=view, update=update }
  
-- MODEL: truth of source  OR Data
--enforcing Model is an integer type

type alias Model = Int

-- model will return a value of type Model

model: Model

model =
  0
  
-- UPDATE

-- Msg values must be either Increment or Decrement
type Msg = Increment | Decrement 

-- update method should take inputs of type Msg and Model respectively and returns a value of type Model as output

update: Msg -> Model -> Model

update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1

--VIEW

-- view takes input of type Model and return a value of Type Html which indeed returns Msg type
view: Model -> Html Msg
view model =
  div []
  [
    button [onClick Decrement] [ text "-" ]
  , span [] [text (toString model) ]
  , button [onClick Increment] [ text "+" ]
  ]