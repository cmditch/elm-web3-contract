module Contracts.ComplexStorage exposing
    ( StructThree
    , Test1
    , Test2
    , ValsSet
    , a
    , addressList
    , arrayOfString
    , b
    , boolVal
    , boolVectorVal
    , bytes16Val
    , bytes2Vector
    , bytes2VectorListVal
    , c
    , dynArrayOfDynVal
    , emptyArray
    , emptyBytes
    , emptyString
    , int224Val
    , intListVal
    , intVal
    , setValues
    , stringVal
    , structOne
    , structThree
    , structThreeDecoder
    , test1
    , test1Decoder
    , test2
    , test2Decoder
    , uintListVal
    , uintVal
    , valsSetDecoder
    , valsSetEvent
    )

import Eth.Abi.Decode as D exposing (abiDecode, andMap, data, toElmDecoder, topic)
import Eth.Abi.Encode as E exposing (Encoding(..), abiEncode)
import BigInt exposing (BigInt)
import Eth.Types exposing (..)
import Eth.Utils as U
import Json.Decode as Decode exposing (Decoder, succeed)
import Json.Decode.Pipeline exposing (custom)



{-

   This file was generated by https://github.com/cmditch/elm-ethereum-generator v3.0.0
   Compatible with elm-ethereum v4.0.0

-}
-- a() function


a : Address -> Call Hex
a contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "0dbe671f" []
    , nonce = Nothing
    , decoder = toElmDecoder (D.staticBytes 2)
    }


-- addressList(uint256) function


addressList : Address -> BigInt -> Call Address
addressList contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "b810fb43" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.address
    }


-- arrayOfString(uint256) function


arrayOfString : Address -> BigInt -> Call String
arrayOfString contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "cd6a89fc" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.string
    }


-- b() function


b : Address -> Call Hex
b contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "4df7e3d0" []
    , nonce = Nothing
    , decoder = toElmDecoder (D.staticBytes 2)
    }


-- boolVal() function


boolVal : Address -> Call Bool
boolVal contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "2316afea" []
    , nonce = Nothing
    , decoder = toElmDecoder D.bool
    }


-- boolVectorVal(uint256) function


boolVectorVal : Address -> BigInt -> Call Bool
boolVectorVal contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "c84a4100" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.bool
    }


-- bytes16Val() function


bytes16Val : Address -> Call Hex
bytes16Val contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "9eb7a6b2" []
    , nonce = Nothing
    , decoder = toElmDecoder (D.staticBytes 16)
    }


-- bytes2Vector(uint256) function


bytes2Vector : Address -> BigInt -> Call Hex
bytes2Vector contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "8d11e9c9" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder (D.staticBytes 2)
    }


-- bytes2VectorListVal(uint256,uint256) function


bytes2VectorListVal : Address -> BigInt -> BigInt -> Call Hex
bytes2VectorListVal contractAddress a_ b_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "f4f67ad7" [ E.uint a_, E.uint b_ ]
    , nonce = Nothing
    , decoder = toElmDecoder (D.staticBytes 2)
    }


-- c() function


c : Address -> Call Hex
c contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "c3da42b8" []
    , nonce = Nothing
    , decoder = toElmDecoder (D.staticBytes 2)
    }


-- dynArrayOfDynVal(uint256,uint256) function


dynArrayOfDynVal : Address -> BigInt -> BigInt -> Call String
dynArrayOfDynVal contractAddress a_ b_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "a61a4cbd" [ E.uint a_, E.uint b_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.string
    }


-- emptyArray(uint256) function


emptyArray : Address -> BigInt -> Call BigInt
emptyArray contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "fc430d5c" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.uint
    }


-- emptyBytes() function


emptyBytes : Address -> Call Hex
emptyBytes contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "55c4baff" []
    , nonce = Nothing
    , decoder = toElmDecoder D.dynamicBytes
    }


-- emptyString() function


emptyString : Address -> Call String
emptyString contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "5049975a" []
    , nonce = Nothing
    , decoder = toElmDecoder D.string
    }


-- int224Val() function


int224Val : Address -> Call BigInt
int224Val contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "9d49a304" []
    , nonce = Nothing
    , decoder = toElmDecoder D.int
    }


-- intListVal(uint256) function


intListVal : Address -> BigInt -> Call BigInt
intListVal contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "8ba27dca" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.int
    }


-- intVal() function


intVal : Address -> Call BigInt
intVal contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "82a35c77" []
    , nonce = Nothing
    , decoder = toElmDecoder D.int
    }


-- setValues(uint256,int256,bool,int224,bool[2],int256[],string,string,bytes16,bytes2[4][]) function


setValues : Address -> BigInt -> BigInt -> Bool -> BigInt -> List (Bool) -> List (BigInt) -> String -> String -> Hex -> List (List (Hex)) -> Call ()
setValues contractAddress uintVal_ intVal_ boolVal_ int224Val_ boolVectorVal_ intListVal_ stringVal_ emptyString_ bytes16Val_ bytes2VectorListVal_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "de7ce269" [ E.uint uintVal_, E.int intVal_, E.bool boolVal_, E.int int224Val_, (E.list << List.map E.bool) boolVectorVal_, (E.list << List.map E.int) intListVal_, E.string stringVal_, E.string emptyString_, (E.staticBytes 16) bytes16Val_, (E.list << List.map (E.list << List.map (E.staticBytes 2))) bytes2VectorListVal_ ]
    , nonce = Nothing
    , decoder = Decode.succeed ()
    }


-- stringVal() function


stringVal : Address -> Call String
stringVal contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "579c738a" []
    , nonce = Nothing
    , decoder = toElmDecoder D.string
    }


-- structOne() function


structOne : Address -> Call Bool
structOne contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "af774e73" []
    , nonce = Nothing
    , decoder = toElmDecoder D.bool
    }


-- structThree() function


type alias StructThree =
    { aaa : BigInt
    , bbb : Bool
    , ccc : Address
    }


structThree : Address -> Call StructThree
structThree contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "0b0ccbf8" []
    , nonce = Nothing
    , decoder = structThreeDecoder
    }


structThreeDecoder : Decoder StructThree
structThreeDecoder =
    abiDecode StructThree
        |> andMap D.uint
        |> andMap D.bool
        |> andMap D.address
        |> toElmDecoder


-- test1() function


type alias Test1 =
    { v0 : BigInt
    , v1 : BigInt
    , v2 : Bool
    , v3 : BigInt
    , v4 : List (Bool)
    , v5 : List (BigInt)
    , v6 : List (BigInt)
    , v7 : String
    , v8 : String
    , v9 : Hex
    , v10 : List (List (Hex))
    , v11 : Hex
    }


test1 : Address -> Call Test1
test1 contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "6b59084d" []
    , nonce = Nothing
    , decoder = test1Decoder
    }


test1Decoder : Decoder Test1
test1Decoder =
    abiDecode Test1
        |> andMap D.uint
        |> andMap D.int
        |> andMap D.bool
        |> andMap D.int
        |> andMap (D.staticArray 2 D.bool)
        |> andMap (D.dynamicArray D.int)
        |> andMap (D.dynamicArray D.uint)
        |> andMap D.string
        |> andMap D.string
        |> andMap (D.staticBytes 16)
        |> andMap (D.dynamicArray (D.staticArray 4 (D.staticBytes 2)))
        |> andMap D.dynamicBytes
        |> toElmDecoder


-- test2() function


type alias Test2 =
    { v0 : List (List (String))
    , v1 : List (String)
    }


test2 : Address -> Call Test2
test2 contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "66e41cb7" []
    , nonce = Nothing
    , decoder = test2Decoder
    }


test2Decoder : Decoder Test2
test2Decoder =
    abiDecode Test2
        |> andMap (D.dynamicArray (D.dynamicArray D.string))
        |> andMap (D.dynamicArray D.string)
        |> toElmDecoder


-- uintListVal(uint256) function


uintListVal : Address -> BigInt -> Call BigInt
uintListVal contractAddress a_ =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "af1950e4" [ E.uint a_ ]
    , nonce = Nothing
    , decoder = toElmDecoder D.uint
    }


-- uintVal() function


uintVal : Address -> Call BigInt
uintVal contractAddress =
    { to = Just contractAddress
    , from = Nothing
    , gas = Nothing
    , gasPrice = Nothing
    , value = Nothing
    , data = Just <| E.functionCall "9a0283ed" []
    , nonce = Nothing
    , decoder = toElmDecoder D.uint
    }


-- ValsSet(uint256,int256,bool,int224,bool[2],int256[],string,string,bytes16,bytes2[4][]) event


type alias ValsSet =
    { a : BigInt
    , b : BigInt
    , c : Bool
    , d : BigInt
    , e : List (Bool)
    , f : List (BigInt)
    , g : String
    , h : String
    , i : Hex
    , somethingElse : List (List (Hex))
    }


valsSetEvent : Address -> LogFilter
valsSetEvent contractAddress = 
    { fromBlock = LatestBlock
    , toBlock = LatestBlock
    , address = contractAddress
    , topics = [ Just <| U.unsafeToHex "9d6ad400c7785d357de4a42ed7feaa2fed1f6f534fb4af223b5c9524149c7b79" ]
    }


valsSetDecoder : Decoder ValsSet
valsSetDecoder = 
    Decode.succeed ValsSet
        |> custom (data 0 D.uint)
        |> custom (data 1 D.int)
        |> custom (data 2 D.bool)
        |> custom (data 3 D.int)
        |> custom (data 4 (D.staticArray 2 D.bool))
        |> custom (data 5 (D.dynamicArray D.int))
        |> custom (data 6 D.string)
        |> custom (data 7 D.string)
        |> custom (data 8 (D.staticBytes 16))
        |> custom (data 9 (D.dynamicArray (D.staticArray 4 (D.staticBytes 2))))


