{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.media.audio
module NullJ2SEControl (module NullJ2SEControl, module Control) where

import Control hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified Type -- same package or java.lang
import qualified Control -- javax.sound.sampled.Control

data NullJ2SEControl = NullJ2SEControl
    { header_ :: JavaHeader
    , base :: Control.Control
    }

instance JavaNull NullJ2SEControl where
    javaNull = javaNullRecord "NullJ2SEControl"

instance JavaEquals NullJ2SEControl where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullJ2SEControl where
    (==) = jrecordEquals

instance JavaObjectClass NullJ2SEControl where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NullJ2SEControl
newRecord_ = do
    base <- Control.newRecord_
    let header_ = base.header_
    let this = NullJ2SEControl header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: NullJ2SEControl -> IO ()
initFields_ this = do
    pure ()

new_1 :: Type.Type -> IO NullJ2SEControl
new_1 type_ = do
    this <- newRecord_
    init_1 this type_
    pure this

init_1 :: NullJ2SEControl -> Type.Type -> IO ()
init_1 this type_ = do
        Control.init_1 this.base (type_)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


