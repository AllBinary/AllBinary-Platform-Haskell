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
-- package org.allbinary.business.user.commerce.inventory.order.status
module OrderStatusEmail where

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
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons
import qualified StoreAdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons
import qualified UserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons
import qualified AdminEmailInfo -- org.allbinary.logic.communication.smtp.info.AdminEmailInfo
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified StoreEmailInfo -- org.allbinary.logic.communication.smtp.info.StoreEmailInfo
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OrderStatusEmail = OrderStatusEmail
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , orderHistory :: IORef (OrderHistory.OrderHistory)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , user :: IORef (UserInterface.UserInterface)
    }

instance JavaNull OrderStatusEmail where
    javaNull = javaNullRecord "OrderStatusEmail"

instance JavaEquals OrderStatusEmail where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderStatusEmail where
    (==) = jrecordEquals

instance JavaObjectClass OrderStatusEmail where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrderStatusEmail
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    orderHistory <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    user <- newIORef javaNull
    let this = OrderStatusEmail header_ logUtil commonStrings abeClientInformation orderHistory storeFrontInterface user
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "notifyStoreAdmin" (\() -> notifyStoreAdmin_impl this)
    jregisterMethod header_ "notifyUser" (\() -> notifyUser_impl this)
    pure this

initFields_ :: OrderStatusEmail -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abeClientInformation (javaNull)
    jset this.orderHistory (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.user (javaNull)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> OrderHistory.OrderHistory -> IO OrderStatusEmail
new_2 abeClientInformation orderHistory = do
    this <- newRecord_
    init_2 this abeClientInformation orderHistory
    pure this

init_2 :: OrderStatusEmail -> AbeClientInformationInterface.AbeClientInformationInterface -> OrderHistory.OrderHistory -> IO ()
init_2 this abeClientInformation orderHistory = do
        initFields_ this
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).orderHistory (orderHistory)
        storeName <- (OrderHistory.getStoreName orderHistory)
        assignedValue <- (StoreFrontFactory.getInstance storeName)
        jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (UserEntity.getUser ((jio (UserEntityFactory.getInstance))) (jio (OrderHistory.getUserName orderHistory)))
        jset (this).user (assignedValue)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OrderStatusEmail))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: OrderStatusEmail))

process_impl :: OrderStatusEmail -> IO (())
process_impl this = do
        Control.Monad.void (OrderStatusEmail.notifyStoreAdmin this)
        Control.Monad.void (OrderStatusEmail.notifyUser this)
        pure ()


-- throws Exception
notifyStoreAdmin :: (JavaObjectClass this_) => this_ -> IO (())
notifyStoreAdmin object_ = jmethod object_ "notifyStoreAdmin" (\() -> (notifyStoreAdmin_impl (javaCast object_ :: OrderStatusEmail))) ()

notifyStoreAdmin_super :: (JavaObjectClass this_) => this_ -> IO (())
notifyStoreAdmin_super object_ = (notifyStoreAdmin_impl (javaCast object_ :: OrderStatusEmail))

notifyStoreAdmin_impl :: OrderStatusEmail -> IO (())
notifyStoreAdmin_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "emailAdmin" e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Order Email" this "emailStoreAdmin")
            let adminEmailSubject = (("Order " ++ javaToString (jio (OrderHistory.getStatus ((jget (this).orderHistory))))) ++ " Attempt")
            let adminEmailTextBody = ((("Order attempt: " ++ javaToString (jio (OrderHistory.getId ((jget (this).orderHistory))))) ++ " Preprocessing by: ") ++ javaToString (jio (UserInterface.getUserName ((jget (this).user)))))
            let adminBasicEmailInfo = (javaCast (jio (AdminEmailInfo.new_2 adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
            let storeAdminBasicEmailInfo = (javaCast (jio (StoreEmailInfo.new_3 (jget (this).storeFrontInterface) adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
            storeAdminEmailInfo <- (EmailInfo.new_1 storeAdminBasicEmailInfo)
            adminEmailInfo <- (EmailInfo.new_1 adminBasicEmailInfo)
            userEmailEventNameData <- (UserEmailEventNameData.getInstance (jio (OrderHistory.getStatus ((jget (this).orderHistory)))))
            adminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (AdminUserEmailEventHandlerSingletons.getInstance ((jio (AdminUserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) userEmailEventNameData))
            storeAdminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (StoreAdminUserEmailEventHandlerSingletons.getInstance ((jio (StoreAdminUserEmailEventHandlerSingletons.getInstance))) userEmailEventNameData (jget (this).abeClientInformation) (jget (this).storeFrontInterface)))
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo storeAdminUserEmailEventHandler userEmailEventNameData storeAdminEmailInfo)
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo adminUserEmailEventHandler userEmailEventNameData adminEmailInfo)
        pure ()


-- throws Exception
notifyUser :: (JavaObjectClass this_) => this_ -> IO (())
notifyUser object_ = jmethod object_ "notifyUser" (\() -> (notifyUser_impl (javaCast object_ :: OrderStatusEmail))) ()

notifyUser_super :: (JavaObjectClass this_) => this_ -> IO (())
notifyUser_super object_ = (notifyUser_impl (javaCast object_ :: OrderStatusEmail))

notifyUser_impl :: OrderStatusEmail -> IO (())
notifyUser_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "notifyUser" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Email User" this "notifyUser()")
            let subject = (("Order " ++ javaToString (jio (OrderHistory.getStatus ((jget (this).orderHistory))))) ++ " Attempt")
            let textBody = ((("Order attempt: " ++ javaToString (jio (OrderHistory.getId ((jget (this).orderHistory))))) ++ " Preprocessing by: ") ++ javaToString (jio (UserInterface.getUserName ((jget (this).user)))))
            let basicEmailInfo = (javaCast (jio (StoreEmailInfo.new_3 (jget (this).storeFrontInterface) subject textBody)) :: BasicEmailInfo.BasicEmailInfo)
            emailInfo <- (EmailInfo.new_1 basicEmailInfo)
            userEmailEventNameData <- (UserEmailEventNameData.getInstance (jio (OrderHistory.getStatus ((jget (this).orderHistory)))))
            userEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (UserEmailEventHandlerSingletons.getInstance ((jio (UserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) userEmailEventNameData (jget (this).user)))
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo userEmailEventHandler userEmailEventNameData emailInfo)
        pure ()


