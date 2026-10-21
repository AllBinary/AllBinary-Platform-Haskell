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
-- package org.allbinary.game.displayable.canvas
module NullDemoPaintable where

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
import qualified DemoPaintableInterface

-- implements DemoPaintableInterface
data NullDemoPaintable = NullDemoPaintable
    { header_ :: JavaHeader
    }

instance JavaNull NullDemoPaintable where
    javaNull = javaNullRecord "NullDemoPaintable"

instance JavaEquals NullDemoPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullDemoPaintable where
    (==) = jrecordEquals

instance JavaObjectClass NullDemoPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_DEMO_PAINTABLE #-}
nULL_DEMO_PAINTABLE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullDemoPaintable
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullDemoPaintable header_
    jregisterLevel header_ this
    DemoPaintableInterface.registerInterface_ header_
    jregisterMethod header_ "showGamePaintable" (\() -> showGamePaintable_impl this)
    pure this

initFields_ :: NullDemoPaintable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullDemoPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullDemoPaintable -> IO ()
init_ this = do
    initFields_ this


showGamePaintable :: (JavaObjectClass this_) => this_ -> IO (())
showGamePaintable object_ = jmethod object_ "showGamePaintable" (\() -> (showGamePaintable_impl (javaCast object_ :: NullDemoPaintable))) ()

showGamePaintable_super :: (JavaObjectClass this_) => this_ -> IO (())
showGamePaintable_super object_ = (showGamePaintable_impl (javaCast object_ :: NullDemoPaintable))

showGamePaintable_impl :: NullDemoPaintable -> IO (())
showGamePaintable_impl this = do
        pure ()


