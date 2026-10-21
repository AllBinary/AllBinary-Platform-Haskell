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
module NormalJ2MEGameInputMapping (module NormalJ2MEGameInputMapping, module J2MEGameInputMapping) where

import J2MEGameInputMapping hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDefault, getDefault_super, getDefault_impl)
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
import qualified NormalJ2MEDefaultGameInputMapping -- same package or java.lang
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified J2MEGameInputMapping

data NormalJ2MEGameInputMapping = NormalJ2MEGameInputMapping
    { header_ :: JavaHeader
    , base :: J2MEGameInputMapping.J2MEGameInputMapping
    }

instance JavaNull NormalJ2MEGameInputMapping where
    javaNull = javaNullRecord "NormalJ2MEGameInputMapping"

instance JavaEquals NormalJ2MEGameInputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NormalJ2MEGameInputMapping where
    (==) = jrecordEquals

instance JavaObjectClass NormalJ2MEGameInputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NormalJ2MEGameInputMapping
newRecord_ = do
    base <- J2MEGameInputMapping.newRecord_
    let header_ = base.header_
    let this = NormalJ2MEGameInputMapping header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    pure this

initFields_ :: NormalJ2MEGameInputMapping -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NormalJ2MEGameInputMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NormalJ2MEGameInputMapping -> IO ()
init_ this = do
    J2MEGameInputMapping.init_ this.base
    initFields_ this


getDefault :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: NormalJ2MEGameInputMapping))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: NormalJ2MEGameInputMapping))

getDefault_impl :: NormalJ2MEGameInputMapping -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault_impl this = do
        (NormalJ2MEDefaultGameInputMapping.getInputMapping ((jio (NormalJ2MEDefaultGameInputMapping.new_))))


