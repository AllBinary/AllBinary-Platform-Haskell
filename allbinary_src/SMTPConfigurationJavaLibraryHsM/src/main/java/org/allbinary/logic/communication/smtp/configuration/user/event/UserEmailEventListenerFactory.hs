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
-- package org.allbinary.logic.communication.smtp.configuration.user.event
module UserEmailEventListenerFactory where

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
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified UserEmailEventConfigurationInterface -- same package or java.lang
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data UserEmailEventListenerFactory = UserEmailEventListenerFactory
    { header_ :: JavaHeader
    }

instance JavaNull UserEmailEventListenerFactory where
    javaNull = javaNullRecord "UserEmailEventListenerFactory"

instance JavaEquals UserEmailEventListenerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventListenerFactory where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventListenerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventListenerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = UserEmailEventListenerFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: UserEmailEventListenerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO UserEmailEventListenerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserEmailEventListenerFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventConfigurationInterface.UserEmailEventConfigurationInterface -> UserInterface.UserInterface -> IO (UserEmailEventListenerInterface.UserEmailEventListenerInterface)
getInstance abeClientInformation userEmailEventConfigurationInterface userInterface = do
        let params = (jnewArray (1) javaNull)
        let classes = (jnewArray (1) javaNull)
        jsetIndex classes (0) ("UserInterface")
        jsetIndex params (0) ((jtoObject (javaCast userInterface :: Any.Any)))
        pure ((javaCast (jio (AbeFactory.getInstance_4 ((jio (AbeFactory.getInstance))) abeClientInformation (jio (UserEmailEventConfigurationInterface.getEventListenerClassPath userEmailEventConfigurationInterface)) classes params)) :: UserEmailEventListenerInterface.UserEmailEventListenerInterface))


