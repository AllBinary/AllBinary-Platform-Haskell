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
-- package org.allbinary.direction
module DirectionCompositeInterface where

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
import qualified Direction -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data DirectionCompositeInterface = DirectionCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull DirectionCompositeInterface where
    javaNull = javaNullRecord "DirectionCompositeInterface"

instance JavaEquals DirectionCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectionCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass DirectionCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DirectionCompositeInterface
fromHeader_ header = DirectionCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DirectionCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDirection :: (JavaObjectClass this_) => this_ -> IO (Direction.Direction)
getDirection object_ = jmethod object_ "getDirection" (\() -> (getDirection_impl (javaCast object_ :: DirectionCompositeInterface))) ()

getDirection_super :: (JavaObjectClass this_) => this_ -> IO (Direction.Direction)
getDirection_super object_ = (getDirection_impl (javaCast object_ :: DirectionCompositeInterface))

getDirection_impl :: DirectionCompositeInterface -> IO (Direction.Direction)
getDirection_impl this = javaAbstractMethod "getDirection"


