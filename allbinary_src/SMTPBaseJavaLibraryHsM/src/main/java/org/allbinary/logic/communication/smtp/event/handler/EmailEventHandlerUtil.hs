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
-- package org.allbinary.logic.communication.smtp.event.handler
module EmailEventHandlerUtil where

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
import qualified UserEmailEventHandler -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserConfigurationInterface -- org.allbinary.business.user.modules.configuration.UserConfigurationInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface
import qualified UserEmailEventsConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified LogUserEmailEventListenerModule -- org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data EmailEventHandlerUtil = EmailEventHandlerUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull EmailEventHandlerUtil where
    javaNull = javaNullRecord "EmailEventHandlerUtil"

instance JavaEquals EmailEventHandlerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailEventHandlerUtil where
    (==) = jrecordEquals

instance JavaObjectClass EmailEventHandlerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EmailEventHandlerUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = EmailEventHandlerUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getEventHandler" (\() -> getEventHandler_impl this)
    pure this

initFields_ :: EmailEventHandlerUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (EmailEventHandlerUtil)
getInstance = do
        pure (EmailEventHandlerUtil.instance_)

new_ :: IO EmailEventHandlerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EmailEventHandlerUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getEventHandler :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> BasicArrayList.BasicArrayList -> IO (UserEmailEventHandler.UserEmailEventHandler)
getEventHandler object_ a1 a2 a3 = jmethod object_ "getEventHandler" (\() -> (getEventHandler_impl (javaCast object_ :: EmailEventHandlerUtil))) () a1 a2 a3

getEventHandler_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> BasicArrayList.BasicArrayList -> IO (UserEmailEventHandler.UserEmailEventHandler)
getEventHandler_super object_ a1 a2 a3 = (getEventHandler_impl (javaCast object_ :: EmailEventHandlerUtil)) a1 a2 a3

getEventHandler_impl :: EmailEventHandlerUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> BasicArrayList.BasicArrayList -> IO (UserEmailEventHandler.UserEmailEventHandler)
getEventHandler_impl this abeClientInformation userEmailEventNameData userVector = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Returning UserEmailEventHandler for ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size userVector)))
            Control.Monad.void (StringMaker.append stringBuffer " users.")
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getEventHandler")
        userEmailEventHandler <- (UserEmailEventHandler.new_)
        Control.Monad.void (UserEmailEventHandler.addListener userEmailEventHandler (jio (LogUserEmailEventListenerModule.new_)))
        size <- (BasicArrayList.size userVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userInterface = (javaCast (jio (BasicArrayList.get userVector index)) :: UserInterface.UserInterface)
            vector <- (EmailEventHandlerUtil.getUserEmailEventListenerVector abeClientInformation userEmailEventNameData userInterface)
            Control.Monad.void (UserEmailEventHandler.addListener userEmailEventHandler vector)
        pure (userEmailEventHandler)


-- throws Exception
getUserEmailEventListenerVector :: AbeClientInformationInterface.AbeClientInformationInterface -> UserEmailEventNameData.UserEmailEventNameData -> UserInterface.UserInterface -> IO (BasicArrayList.BasicArrayList)
getUserEmailEventListenerVector abeClientInformation userEmailEventNameData userInterface = do
        userConfigurationInterface <- (UserInterface.getUserConfigurationInterface userInterface)
        userEmailConfigurationInterface <- (UserConfigurationInterface.getUserEmailConfigurationInterface userConfigurationInterface)
        userEmailEventsConfigurationInterface <- (UserEmailConfigurationInterface.getUserEmailEventsConfigurationInterface userEmailConfigurationInterface)
        userEmailEventListenerInterface <- (UserEmailEventsConfigurationInterface.getEventListener userEmailEventsConfigurationInterface abeClientInformation userEmailEventNameData userInterface)
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector userEmailEventListenerInterface)
        pure (vector)


