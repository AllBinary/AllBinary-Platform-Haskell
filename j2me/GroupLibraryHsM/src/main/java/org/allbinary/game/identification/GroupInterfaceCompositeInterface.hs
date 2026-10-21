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
-- package org.allbinary.game.identification
module GroupInterfaceCompositeInterface where

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
import qualified Group -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GroupInterfaceCompositeInterface = GroupInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull GroupInterfaceCompositeInterface where
    javaNull = javaNullRecord "GroupInterfaceCompositeInterface"

instance JavaEquals GroupInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GroupInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass GroupInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GroupInterfaceCompositeInterface
fromHeader_ header = GroupInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GroupInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getGroupInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface object_ = jmethod object_ "getGroupInterface" (\() -> (getGroupInterface_impl (javaCast object_ :: GroupInterfaceCompositeInterface))) ()

getGroupInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface_super object_ = (getGroupInterface_impl (javaCast object_ :: GroupInterfaceCompositeInterface))

getGroupInterface_impl :: GroupInterfaceCompositeInterface -> IO (JavaArray (Group.Group))
getGroupInterface_impl this = javaAbstractMethod "getGroupInterface"


