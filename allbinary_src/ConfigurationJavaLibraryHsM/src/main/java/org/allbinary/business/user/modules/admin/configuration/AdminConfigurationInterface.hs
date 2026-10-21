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
-- package org.allbinary.business.user.modules.admin.configuration
module AdminConfigurationInterface where

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
import qualified ContextConfigurationInterface -- org.allbinary.business.context.configuration.ContextConfigurationInterface

-- Java interface: the classes that implement it have these functions
data AdminConfigurationInterface = AdminConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdminConfigurationInterface where
    javaNull = javaNullRecord "AdminConfigurationInterface"

instance JavaEquals AdminConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdminConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdminConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdminConfigurationInterface
fromHeader_ header = AdminConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdminConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: AdminConfigurationInterface))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: AdminConfigurationInterface))

write_impl :: AdminConfigurationInterface -> IO (())
write_impl this = javaAbstractMethod "write"


getContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface object_ = jmethod object_ "getContextConfigurationInterface" (\() -> (getContextConfigurationInterface_impl (javaCast object_ :: AdminConfigurationInterface))) ()

getContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_super object_ = (getContextConfigurationInterface_impl (javaCast object_ :: AdminConfigurationInterface))

getContextConfigurationInterface_impl :: AdminConfigurationInterface -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_impl this = javaAbstractMethod "getContextConfigurationInterface"


setContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface object_ a1 = jmethod object_ "setContextConfigurationInterface" (\() -> (setContextConfigurationInterface_impl (javaCast object_ :: AdminConfigurationInterface))) () a1

setContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_super object_ a1 = (setContextConfigurationInterface_impl (javaCast object_ :: AdminConfigurationInterface)) a1

setContextConfigurationInterface_impl :: AdminConfigurationInterface -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_impl this contextConfigurationInterface = javaAbstractMethod "setContextConfigurationInterface"


