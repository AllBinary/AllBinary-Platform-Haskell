{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module AndroidGameKey (module AndroidGameKey, module Input) where

import Input hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, getString, getString_super, getString_impl)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified InputFactory -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Input

data AndroidGameKey = AndroidGameKey
    { header_ :: JavaHeader
    , base :: Input.Input
    }

instance JavaNull AndroidGameKey where
    javaNull = javaNullRecord "AndroidGameKey"

instance JavaEquals AndroidGameKey where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidGameKey where
    (==) = jrecordEquals

instance JavaObjectClass AndroidGameKey where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AndroidGameKey
newRecord_ = do
    base <- Input.newRecord_
    let header_ = base.header_
    let this = AndroidGameKey header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AndroidGameKey -> IO ()
initFields_ this = do
    pure ()

new_2 :: Int -> String -> IO AndroidGameKey
new_2 keyCode name = do
    this <- newRecord_
    init_2 this keyCode name
    pure this

init_2 :: AndroidGameKey -> Int -> String -> IO ()
init_2 this keyCode name = do
        Input.init_2 this.base (keyCode) (name)
        initFields_ this
        pure () -- super(...) is in the record above
        inputFactory <- (InputFactory.getInstance)
        jsetIndex ((jget (inputFactory).inputIntegerArray)) ((jio (Input.getId this))) (this)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AndroidGameKey))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AndroidGameKey))

toString_impl :: AndroidGameKey -> IO (String)
toString_impl this = do
        pure (("AndroidGameKey: " ++ (jio (Input.toString_super this.base))))


getString :: Int -> IO (String)
getString keyCode = do
    javaCatchReturn $ do
        input <- (InputFactory.getInstanceById ((jio (InputFactory.getInstance))) keyCode)
        if (input /= javaNull) then do
            javaReturn =<< (Input.getName input)
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


