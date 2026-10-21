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
-- package org.allbinary.physics.movement
module MovementCompositeInterface where

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
import qualified Movement -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data MovementCompositeInterface = MovementCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull MovementCompositeInterface where
    javaNull = javaNullRecord "MovementCompositeInterface"

instance JavaEquals MovementCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MovementCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass MovementCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MovementCompositeInterface
fromHeader_ header = MovementCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MovementCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMovement :: (JavaObjectClass this_) => this_ -> IO (Movement.Movement)
getMovement object_ = jmethod object_ "getMovement" (\() -> (getMovement_impl (javaCast object_ :: MovementCompositeInterface))) ()

getMovement_super :: (JavaObjectClass this_) => this_ -> IO (Movement.Movement)
getMovement_super object_ = (getMovement_impl (javaCast object_ :: MovementCompositeInterface))

getMovement_impl :: MovementCompositeInterface -> IO (Movement.Movement)
getMovement_impl this = javaAbstractMethod "getMovement"


