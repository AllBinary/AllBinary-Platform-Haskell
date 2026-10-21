{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.logic.system.security.licensing
module InputAutomationClientInformationFactory where

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
import qualified InputAutomationClientInformation -- same package or java.lang

data InputAutomationClientInformationFactory = InputAutomationClientInformationFactory
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationClientInformationFactory where
    javaNull = javaNullRecord "InputAutomationClientInformationFactory"

instance JavaEquals InputAutomationClientInformationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationClientInformationFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationClientInformationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((InputAutomationClientInformation.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationClientInformationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = InputAutomationClientInformationFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: InputAutomationClientInformationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputAutomationClientInformationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationClientInformationFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InputAutomationClientInformation.InputAutomationClientInformation)
getInstance = do
        pure (InputAutomationClientInformationFactory.instance_)


