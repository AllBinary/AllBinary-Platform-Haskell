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
-- package org.allbinary.game.ag.life
module LifeInterfaceCompositeInterface where

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
import qualified Life -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data LifeInterfaceCompositeInterface = LifeInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull LifeInterfaceCompositeInterface where
    javaNull = javaNullRecord "LifeInterfaceCompositeInterface"

instance JavaEquals LifeInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LifeInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass LifeInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LifeInterfaceCompositeInterface
fromHeader_ header = LifeInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LifeInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getLifeInterface :: (JavaObjectClass this_) => this_ -> IO (Life.Life)
getLifeInterface object_ = jmethod object_ "getLifeInterface" (\() -> (getLifeInterface_impl (javaCast object_ :: LifeInterfaceCompositeInterface))) ()

getLifeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Life.Life)
getLifeInterface_super object_ = (getLifeInterface_impl (javaCast object_ :: LifeInterfaceCompositeInterface))

getLifeInterface_impl :: LifeInterfaceCompositeInterface -> IO (Life.Life)
getLifeInterface_impl this = javaAbstractMethod "getLifeInterface"


