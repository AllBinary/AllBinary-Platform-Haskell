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
module DemoPaintableInterface where

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

-- Java interface: the classes that implement it have these functions
data DemoPaintableInterface = DemoPaintableInterface
    { header_ :: JavaHeader
    }

instance JavaNull DemoPaintableInterface where
    javaNull = javaNullRecord "DemoPaintableInterface"

instance JavaEquals DemoPaintableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoPaintableInterface where
    (==) = jrecordEquals

instance JavaObjectClass DemoPaintableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DemoPaintableInterface
fromHeader_ header = DemoPaintableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DemoPaintableInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


showGamePaintable :: (JavaObjectClass this_) => this_ -> IO (())
showGamePaintable object_ = jmethod object_ "showGamePaintable" (\() -> (showGamePaintable_impl (javaCast object_ :: DemoPaintableInterface))) ()

showGamePaintable_super :: (JavaObjectClass this_) => this_ -> IO (())
showGamePaintable_super object_ = (showGamePaintable_impl (javaCast object_ :: DemoPaintableInterface))

showGamePaintable_impl :: DemoPaintableInterface -> IO (())
showGamePaintable_impl this = javaAbstractMethod "showGamePaintable"


