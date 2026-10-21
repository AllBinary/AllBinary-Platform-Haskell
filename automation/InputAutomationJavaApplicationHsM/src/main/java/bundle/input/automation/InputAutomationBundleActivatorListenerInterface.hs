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
-- package bundle.input.automation
module InputAutomationBundleActivatorListenerInterface where

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
data InputAutomationBundleActivatorListenerInterface = InputAutomationBundleActivatorListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationBundleActivatorListenerInterface where
    javaNull = javaNullRecord "InputAutomationBundleActivatorListenerInterface"

instance JavaEquals InputAutomationBundleActivatorListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationBundleActivatorListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationBundleActivatorListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InputAutomationBundleActivatorListenerInterface
fromHeader_ header = InputAutomationBundleActivatorListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InputAutomationBundleActivatorListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
registerAsService :: (JavaObjectClass this_) => this_ -> IO (())
registerAsService object_ = jmethod object_ "registerAsService" (\() -> (registerAsService_impl (javaCast object_ :: InputAutomationBundleActivatorListenerInterface))) ()

registerAsService_super :: (JavaObjectClass this_) => this_ -> IO (())
registerAsService_super object_ = (registerAsService_impl (javaCast object_ :: InputAutomationBundleActivatorListenerInterface))

registerAsService_impl :: InputAutomationBundleActivatorListenerInterface -> IO (())
registerAsService_impl this = javaAbstractMethod "registerAsService"


-- throws Exception
useServices :: (JavaObjectClass this_) => this_ -> IO (())
useServices object_ = jmethod object_ "useServices" (\() -> (useServices_impl (javaCast object_ :: InputAutomationBundleActivatorListenerInterface))) ()

useServices_super :: (JavaObjectClass this_) => this_ -> IO (())
useServices_super object_ = (useServices_impl (javaCast object_ :: InputAutomationBundleActivatorListenerInterface))

useServices_impl :: InputAutomationBundleActivatorListenerInterface -> IO (())
useServices_impl this = javaAbstractMethod "useServices"


