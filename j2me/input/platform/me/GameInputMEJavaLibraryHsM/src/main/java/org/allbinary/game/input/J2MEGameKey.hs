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
module J2MEGameKey (module J2MEGameKey, module Input) where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Input

data J2MEGameKey = J2MEGameKey
    { header_ :: JavaHeader
    , base :: Input.Input
    }

instance JavaNull J2MEGameKey where
    javaNull = javaNullRecord "J2MEGameKey"

instance JavaEquals J2MEGameKey where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq J2MEGameKey where
    (==) = jrecordEquals

instance JavaObjectClass J2MEGameKey where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO J2MEGameKey
newRecord_ = do
    base <- Input.newRecord_
    let header_ = base.header_
    let this = J2MEGameKey header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: J2MEGameKey -> IO ()
initFields_ this = do
    pure ()

new_2 :: Int -> String -> IO J2MEGameKey
new_2 key keyName = do
    this <- newRecord_
    init_2 this key keyName
    pure this

init_2 :: J2MEGameKey -> Int -> String -> IO ()
init_2 this key keyName = do
        Input.init_2 this.base (key) (keyName)
        initFields_ this
        pure () -- super(...) is in the record above
        id <- (Input.getId this)
        when (id >= 0) $ do
            inputFactory <- (InputFactory.getInstance)
            Control.Monad.void (InputFactory.add inputFactory id this)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: J2MEGameKey))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: J2MEGameKey))

toString_impl :: J2MEGameKey -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "J2MEGameKey: "))) (jio (Input.toString_super this.base))))))


getString :: Int -> IO (String)
getString keyCode = do
    javaCatchReturn $ do
        input <- (InputFactory.getInstanceById ((jio (InputFactory.getInstance))) keyCode)
        if (input /= javaNull) then do
            javaReturn =<< (Input.getName input)
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


