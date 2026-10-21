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
-- package org.allbinary.animation.resource
module ResourceAnimationInterfaceFactoryInterface where

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
import qualified BasicAnimationInterfaceFactoryInterface -- org.allbinary.animation.BasicAnimationInterfaceFactoryInterface

-- Java interface: the classes that implement it have these functions
data ResourceAnimationInterfaceFactoryInterface = ResourceAnimationInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull ResourceAnimationInterfaceFactoryInterface where
    javaNull = javaNullRecord "ResourceAnimationInterfaceFactoryInterface"

instance JavaEquals ResourceAnimationInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceAnimationInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass ResourceAnimationInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ResourceAnimationInterfaceFactoryInterface
fromHeader_ header = ResourceAnimationInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ResourceAnimationInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getBasicAnimationInterfaceFactoryInstance :: (JavaObjectClass this_) => this_ -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance object_ a1 = jmethod object_ "getBasicAnimationInterfaceFactoryInstance" (\() -> (getBasicAnimationInterfaceFactoryInstance_impl (javaCast object_ :: ResourceAnimationInterfaceFactoryInterface))) () a1

getBasicAnimationInterfaceFactoryInstance_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance_super object_ a1 = (getBasicAnimationInterfaceFactoryInstance_impl (javaCast object_ :: ResourceAnimationInterfaceFactoryInterface)) a1

getBasicAnimationInterfaceFactoryInstance_impl :: ResourceAnimationInterfaceFactoryInterface -> String -> IO (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface)
getBasicAnimationInterfaceFactoryInstance_impl this resource = javaAbstractMethod "getBasicAnimationInterfaceFactoryInstance"


