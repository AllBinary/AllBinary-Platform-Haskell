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
-- package org.allbinary.logic.communication.smtp.event.handler.factory
module StoreAdminUserEmailEventHandlerSingletons where

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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified EmailEventHandlerUtil -- org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StoreAdminUserEmailEventHandlerSingletons = StoreAdminUserEmailEventHandlerSingletons
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , userEmailEventHandlerHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull StoreAdminUserEmailEventHandlerSingletons where
    javaNull = javaNullRecord "StoreAdminUserEmailEventHandlerSingletons"

instance JavaEquals StoreAdminUserEmailEventHandlerSingletons where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreAdminUserEmailEventHandlerSingletons where
    (==) = jrecordEquals

instance JavaObjectClass StoreAdminUserEmailEventHandlerSingletons where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreAdminUserEmailEventHandlerSingletons
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    userEmailEventHandlerHashMap <- newIORef javaNull
    let this = StoreAdminUserEmailEventHandlerSingletons header_ logUtil commonStrings userEmailEventHandlerHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: StoreAdminUserEmailEventHandlerSingletons -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.userEmailEventHandlerHashMap =<< (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
    pure ()


getInstance :: IO (StoreAdminUserEmailEventHandlerSingletons)
getInstance = do
        pure (StoreAdminUserEmailEventHandlerSingletons.instance_)

new_ :: IO StoreAdminUserEmailEventHandlerSingletons
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreAdminUserEmailEventHandlerSingletons -> IO ()
init_ this = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> UserEmailEventNameData.UserEmailEventNameData -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO (UserEmailEventHandler.UserEmailEventHandler)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: StoreAdminUserEmailEventHandlerSingletons))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> UserEmailEventNameData.UserEmailEventNameData -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO (UserEmailEventHandler.UserEmailEventHandler)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: StoreAdminUserEmailEventHandlerSingletons)) a1 a2 a3

getInstance_impl :: StoreAdminUserEmailEventHandlerSingletons -> UserEmailEventNameData.UserEmailEventNameData -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO (UserEmailEventHandler.UserEmailEventHandler)
getInstance_impl this userEmailEventNameData abeClientInformation storeFrontInterface = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
        let userEmailEventHandler = (javaCast (jio (HashMap.get ((jget (this).userEmailEventHandlerHashMap)) userEmailEventNameData)) :: UserEmailEventHandler.UserEmailEventHandler)
        if (userEmailEventHandler == javaNull) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Creating New Named UserEmailEventHandler" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            userVector <- (UserEntity.getStoreManagers ((jio (UserEntityFactory.getInstance))) storeFrontInterface)
            newUserEmailEventHandler <- (EmailEventHandlerUtil.getEventHandler ((jio (EmailEventHandlerUtil.getInstance))) abeClientInformation userEmailEventNameData userVector)
            Control.Monad.void (HashMap.put ((jget (this).userEmailEventHandlerHashMap)) userEmailEventNameData newUserEmailEventHandler)
            javaReturn (newUserEmailEventHandler)
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Returning existing UserEmailEventHandler" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            javaReturn (userEmailEventHandler)


