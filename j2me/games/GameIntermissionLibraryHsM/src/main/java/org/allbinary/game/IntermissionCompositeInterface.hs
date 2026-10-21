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
-- package org.allbinary.game
module IntermissionCompositeInterface where

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
import qualified IntermissionInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data IntermissionCompositeInterface = IntermissionCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull IntermissionCompositeInterface where
    javaNull = javaNullRecord "IntermissionCompositeInterface"

instance JavaEquals IntermissionCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IntermissionCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass IntermissionCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> IntermissionCompositeInterface
fromHeader_ header = IntermissionCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (IntermissionCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getStartIntermissionInterface :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getStartIntermissionInterface object_ = jmethod object_ "getStartIntermissionInterface" (\() -> (getStartIntermissionInterface_impl (javaCast object_ :: IntermissionCompositeInterface))) ()

getStartIntermissionInterface_super :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getStartIntermissionInterface_super object_ = (getStartIntermissionInterface_impl (javaCast object_ :: IntermissionCompositeInterface))

getStartIntermissionInterface_impl :: IntermissionCompositeInterface -> IO (IntermissionInterface.IntermissionInterface)
getStartIntermissionInterface_impl this = javaAbstractMethod "getStartIntermissionInterface"


getEndLevelIntermissionInterface :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getEndLevelIntermissionInterface object_ = jmethod object_ "getEndLevelIntermissionInterface" (\() -> (getEndLevelIntermissionInterface_impl (javaCast object_ :: IntermissionCompositeInterface))) ()

getEndLevelIntermissionInterface_super :: (JavaObjectClass this_) => this_ -> IO (IntermissionInterface.IntermissionInterface)
getEndLevelIntermissionInterface_super object_ = (getEndLevelIntermissionInterface_impl (javaCast object_ :: IntermissionCompositeInterface))

getEndLevelIntermissionInterface_impl :: IntermissionCompositeInterface -> IO (IntermissionInterface.IntermissionInterface)
getEndLevelIntermissionInterface_impl this = javaAbstractMethod "getEndLevelIntermissionInterface"


