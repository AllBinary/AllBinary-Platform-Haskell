{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module GameKey (module GameKey, module Input) where

import Input hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, nULL_GAME_KEY)
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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Input

data GameKey = GameKey
    { header_ :: JavaHeader
    , base :: Input.Input
    }

instance JavaNull GameKey where
    javaNull = javaNullRecord "GameKey"

instance JavaEquals GameKey where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKey where
    (==) = jrecordEquals

instance JavaObjectClass GameKey where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GAME_KEY #-}
nULL_GAME_KEY = unsafePerformIO ((new_2 (Prelude.negate 1) (jget ((jio (StringUtil.getInstance))).nULL_STRING)))

newRecord_ :: IO GameKey
newRecord_ = do
    base <- Input.newRecord_
    let header_ = base.header_
    let this = GameKey header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameKey -> IO ()
initFields_ this = do
    pure ()

new_2 :: Int -> String -> IO GameKey
new_2 key name = do
    this <- newRecord_
    init_2 this key name
    pure this

init_2 :: GameKey -> Int -> String -> IO ()
init_2 this key name = do
        Input.init_2 this.base (key) (name)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameKey))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameKey))

toString_impl :: GameKey -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "GameKey "))) (jio (Input.toString_super this.base))))))


