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
-- package org.allbinary.graphics.paint
module StatePaintable (module StatePaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setState, setState_super, setState_impl)
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
import qualified StateControlledInterface -- org.allbinary.graphics.displayable.StateControlledInterface
import qualified Paintable

-- implements StateControlledInterface
data StatePaintable = StatePaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    }

instance JavaNull StatePaintable where
    javaNull = javaNullRecord "StatePaintable"

instance JavaEquals StatePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StatePaintable where
    (==) = jrecordEquals

instance JavaObjectClass StatePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StatePaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    let this = StatePaintable header_ base
    jregisterLevel header_ this
    StateControlledInterface.registerInterface_ header_
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    pure this

initFields_ :: StatePaintable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StatePaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StatePaintable -> IO ()
init_ this = do
        Paintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


setState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: StatePaintable))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: StatePaintable)) a1

setState_impl :: StatePaintable -> Int -> IO (())
setState_impl this state = do
        pure ()


