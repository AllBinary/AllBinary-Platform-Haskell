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
-- package admin.taghelpers
module StoreFrontsRequestHelper (module StoreFrontsRequestHelper, module ModifyTable) where

import ModifyTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, update, update_super, update_impl, sendStoreCreatedEmails, sendStoreCreatedEmails_super, sendStoreCreatedEmails_impl, install, install_super, install_impl, insert, insert_super, insert_impl, delete, delete_super, delete_impl, logUtil, abeClientInformation, pageContext, request, weblisketSession, storeName, modifyingStoreFrontInterface, portion)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFront -- org.allbinary.business.context.modules.storefront.StoreFront
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified Portion -- org.allbinary.business.installer.Portion
import qualified StoreFrontsEntityFactory -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons
import qualified StoreAdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons
import qualified AdminEmailInfo -- org.allbinary.logic.communication.smtp.info.AdminEmailInfo
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified StoreEmailInfo -- org.allbinary.logic.communication.smtp.info.StoreEmailInfo
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified ModifyTable

data StoreFrontsRequestHelper = StoreFrontsRequestHelper
    { header_ :: JavaHeader
    , base :: ModifyTable.ModifyTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , pageContext :: IORef (PageContext.PageContext)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeName :: IORef (String)
    , modifyingStoreFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull StoreFrontsRequestHelper where
    javaNull = javaNullRecord "StoreFrontsRequestHelper"

instance JavaEquals StoreFrontsRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontsRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontsRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFrontsRequestHelper
newRecord_ = do
    base <- ModifyTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    pageContext <- newIORef javaNull
    request <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeName <- newIORef ""
    modifyingStoreFrontInterface <- newIORef javaNull
    portion <- newIORef javaNull
    let this = StoreFrontsRequestHelper header_ base logUtil abeClientInformation pageContext request weblisketSession storeName modifyingStoreFrontInterface portion
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "sendStoreCreatedEmails" (\() -> sendStoreCreatedEmails_impl this)
    jregisterMethod header_ "install" (\() -> install_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    pure this

initFields_ :: StoreFrontsRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.pageContext (javaNull)
    jset this.request (javaNull)
    jset this.weblisketSession (javaNull)
    jset this.storeName ("")
    jset this.modifyingStoreFrontInterface (javaNull)
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO StoreFrontsRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: StoreFrontsRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        ModifyTable.init_ this.base
        initFields_ this
        jset (this).pageContext (pageContext)
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        assignedValue <- (Portion.new_1 hashMap)
        jset (this).portion (assignedValue)
        Control.Monad.void (StoreFrontsRequestHelper.getFormData this)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: StoreFrontsRequestHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: StoreFrontsRequestHelper))

getFormData_impl :: StoreFrontsRequestHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (WeblisketSession.getStoreName ((jget (this).weblisketSession)))
        jset (this).storeName (assignedValue)
        jset (this).modifyingStoreFrontInterface ((javaCast (jio (StoreFront.new_1 (jget (this).request))) :: StoreFrontInterface.StoreFrontInterface))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StoreFrontsRequestHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: StoreFrontsRequestHelper))

update_impl :: StoreFrontsRequestHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to update storefronts table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "Updated Successfully"
            hashMapData <- (StoreFrontInterface.toHashMap ((jget (this).modifyingStoreFrontInterface)))
            Control.Monad.void (StoreFrontsEntity.update ((jio (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance)))))) hashMapData)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "update()")
            pure (success)


-- throws Exception
sendStoreCreatedEmails :: (JavaObjectClass this_) => this_ -> IO (())
sendStoreCreatedEmails object_ = jmethod object_ "sendStoreCreatedEmails" (\() -> (sendStoreCreatedEmails_impl (javaCast object_ :: StoreFrontsRequestHelper))) ()

sendStoreCreatedEmails_super :: (JavaObjectClass this_) => this_ -> IO (())
sendStoreCreatedEmails_super object_ = (sendStoreCreatedEmails_impl (javaCast object_ :: StoreFrontsRequestHelper))

sendStoreCreatedEmails_impl :: StoreFrontsRequestHelper -> IO (())
sendStoreCreatedEmails_impl this = do
        let storeManagerEmailSubject = ("Store Manager Nofification For Store: " ++ (jio (StoreFrontInterface.getName ((jget (this).modifyingStoreFrontInterface)))))
        let adminEmailSubject = ("Admin Notification For Store: " ++ (jio (StoreFrontInterface.getName ((jget (this).modifyingStoreFrontInterface)))))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Store Created: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName ((jget (this).modifyingStoreFrontInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer "\n\n")
        Control.Monad.void (StringMaker.append stringBuffer "Click here for the Admin Interface:\n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHomeHostName ((jget (this).modifyingStoreFrontInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer "/admin/login.jsp\n\n")
        Control.Monad.void (StringMaker.append stringBuffer "Goto Your Store:\n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHomeHostName ((jget (this).modifyingStoreFrontInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName ((jget (this).modifyingStoreFrontInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer "/index.jsp")
        Control.Monad.void (StringMaker.append stringBuffer "\n\n")
        Control.Monad.void (StringMaker.append stringBuffer "UserName: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))))
        adminEmailTextBody <- (StringMaker.toString stringBuffer)
        let adminBasicEmailInfo = (javaCast (jio (AdminEmailInfo.new_2 adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
        let storeAdminBasicEmailInfo = (javaCast (jio (StoreEmailInfo.new_3 (jget (this).modifyingStoreFrontInterface) storeManagerEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
        storeAdminEmailInfo <- (EmailInfo.new_1 storeAdminBasicEmailInfo)
        adminEmailInfo <- (EmailInfo.new_1 adminBasicEmailInfo)
        adminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (AdminUserEmailEventHandlerSingletons.getInstance_2 ((jio (AdminUserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.sTORECREATED)))
        storeAdminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (StoreAdminUserEmailEventHandlerSingletons.getInstance_3 ((jio (StoreAdminUserEmailEventHandlerSingletons.getInstance))) (UserEmailEventNameData.sTORECREATED) (jget (this).abeClientInformation) (jget (this).modifyingStoreFrontInterface)))
        Control.Monad.void (UserEmailEventHandler.receiveEmailInfo storeAdminUserEmailEventHandler (UserEmailEventNameData.sTORECREATED) storeAdminEmailInfo)
        Control.Monad.void (UserEmailEventHandler.receiveEmailInfo adminUserEmailEventHandler (UserEmailEventNameData.sTORECREATED) adminEmailInfo)
        pure ()


install :: (JavaObjectClass this_) => this_ -> IO (String)
install object_ = jmethod object_ "install" (\() -> (install_impl (javaCast object_ :: StoreFrontsRequestHelper))) ()

install_super :: (JavaObjectClass this_) => this_ -> IO (String)
install_super object_ = (install_impl (javaCast object_ :: StoreFrontsRequestHelper))

install_impl :: StoreFrontsRequestHelper -> IO (String)
install_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to Install storefront"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "install()" e)
            pure (error)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Intall StoreFront Successfully: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (Portion.getCurrent ((jget (this).portion)))))
            Control.Monad.void (StringMaker.append stringBuffer " of ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (Portion.getTotal ((jget (this).portion)))))
            success <- (StringMaker.toString stringBuffer)
            Control.Monad.void (StoreFrontInterface.install ((jget (this).modifyingStoreFrontInterface)) (jio (Portion.getCurrent ((jget (this).portion)))) (jio (Portion.getTotal ((jget (this).portion)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "install()")
            pure (success)


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: StoreFrontsRequestHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: StoreFrontsRequestHelper))

insert_impl :: StoreFrontsRequestHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add storefront"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "insert()" e)
            pure (error)
            ) $ do
            let success = "Added Successfully"
            values <- (StoreFrontInterface.toVector ((jget (this).modifyingStoreFrontInterface)))
            Control.Monad.void (StoreFrontsEntity.insert ((jio (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance)))))) values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "insert()")
            pure (success)


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: StoreFrontsRequestHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: StoreFrontsRequestHelper))

delete_impl :: StoreFrontsRequestHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to delete storefronts table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e)
            pure (error)
            ) $ do
            let success = "Delete Successfully"
            Control.Monad.void (StoreFrontsEntity.delete ((jio (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance)))))) (jget (this).storeName))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure (success)


