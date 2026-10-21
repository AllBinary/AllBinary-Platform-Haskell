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
module QuoteHelper (module QuoteHelper, module BasicTable) where

import BasicTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, emailUser, emailUser_super, emailUser_impl, emailAdmins, emailAdmins_super, emailAdmins_impl, email, email_super, email_impl, drop, drop_super, drop_impl, create, create_super, create_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, logUtil, abeClientInformation, weblisketSession, storeFrontInterface, portion)
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
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFront -- org.allbinary.business.context.modules.storefront.StoreFront
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified Portion -- org.allbinary.business.installer.Portion
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified QuoteRequest -- org.allbinary.business.user.quoterequest.QuoteRequest
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified QuoteRequestEntity -- org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity
import qualified QuoteRequestEntityFactory -- org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons
import qualified StoreAdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons
import qualified UserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified StoreEmailInfo -- org.allbinary.logic.communication.smtp.info.StoreEmailInfo
import qualified AbSqlTableUtil -- org.allbinary.logic.communication.sql.AbSqlTableUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified BasicTable

data QuoteHelper = QuoteHelper
    { header_ :: JavaHeader
    , base :: BasicTable.BasicTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull QuoteHelper where
    javaNull = javaNullRecord "QuoteHelper"

instance JavaEquals QuoteHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq QuoteHelper where
    (==) = jrecordEquals

instance JavaObjectClass QuoteHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO QuoteHelper
newRecord_ = do
    base <- BasicTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    portion <- newIORef javaNull
    let this = QuoteHelper header_ base logUtil abeClientInformation weblisketSession storeFrontInterface portion
    jregisterLevel header_ this
    jregisterMethod header_ "emailUser" (\() -> emailUser_impl this)
    jregisterMethod header_ "emailAdmins" (\() -> emailAdmins_impl this)
    jregisterMethod header_ "email" (\() -> email_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    pure this

initFields_ :: QuoteHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.storeFrontInterface (javaNull)
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO QuoteHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: QuoteHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        BasicTable.init_ this.base
        initFields_ this
        let storeName = (javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        if (storeName /= javaNull) then do
            assignedValue <- (StoreFrontFactory.getInstance storeName)
            jset (this).storeFrontInterface (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFront.new_))
            jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        assignedValue <- (Portion.new_1 hashMap)
        jset (this).portion (assignedValue)
        pure ()


-- throws Exception
emailUser :: (JavaObjectClass this_) => this_ -> QuoteRequest.QuoteRequest -> IO (())
emailUser object_ a1 = jmethod object_ "emailUser" (\() -> (emailUser_impl (javaCast object_ :: QuoteHelper))) () a1

emailUser_super :: (JavaObjectClass this_) => this_ -> QuoteRequest.QuoteRequest -> IO (())
emailUser_super object_ a1 = (emailUser_impl (javaCast object_ :: QuoteHelper)) a1

emailUser_impl :: QuoteHelper -> QuoteRequest.QuoteRequest -> IO (())
emailUser_impl this quoteRequest = do
        user <- (UserEntity.getUser ((jio (UserEntityFactory.getInstance))) (jio (QuoteRequest.getUserName quoteRequest)))
        let userEmailSubject = "Quote Request Receipt"
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "This is just a verification email. ")
        Control.Monad.void (StringMaker.append stringBuffer "We usually respond to quote request within 24 hours.")
        Control.Monad.void (StringMaker.append stringBuffer "\n\nThank You For Your Business.")
        userEmailTextBody <- (StringMaker.toString stringBuffer)
        let basicEmailInfo = (javaCast (jio (StoreEmailInfo.new_3 (jget (this).storeFrontInterface) userEmailSubject userEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
        emailInfo <- (EmailInfo.new_1 basicEmailInfo)
        userEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (UserEmailEventHandlerSingletons.getInstance ((jio (UserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.qUOTEREQUEST) user))
        Control.Monad.void (UserEmailEventHandler.receiveEmailInfo userEmailEventHandler (UserEmailEventNameData.qUOTEREQUEST) emailInfo)
        pure ()


-- throws Exception
emailAdmins :: (JavaObjectClass this_) => this_ -> QuoteRequest.QuoteRequest -> IO (())
emailAdmins object_ a1 = jmethod object_ "emailAdmins" (\() -> (emailAdmins_impl (javaCast object_ :: QuoteHelper))) () a1

emailAdmins_super :: (JavaObjectClass this_) => this_ -> QuoteRequest.QuoteRequest -> IO (())
emailAdmins_super object_ a1 = (emailAdmins_impl (javaCast object_ :: QuoteHelper)) a1

emailAdmins_impl :: QuoteHelper -> QuoteRequest.QuoteRequest -> IO (())
emailAdmins_impl this quoteRequest = do
        let adminEmailSubject = "Quote Request"
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "\nUserName: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequest.getUserName quoteRequest)))
        Control.Monad.void (StringMaker.append stringBuffer "\nProject Info: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequest.getProjectInfo quoteRequest)))
        Control.Monad.void (StringMaker.append stringBuffer "\nUser Comments: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequest.getUserComments quoteRequest)))
        Control.Monad.void (StringMaker.append stringBuffer "\nBudget: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequest.getBudget quoteRequest)))
        Control.Monad.void (StringMaker.append stringBuffer "\nTime Frame: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequest.getTimeFrame quoteRequest)))
        Control.Monad.void (StringMaker.append stringBuffer "\nComments: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequest.getComments quoteRequest)))
        adminEmailTextBody <- (StringMaker.toString stringBuffer)
        let basicEmailInfo = (javaCast (jio (StoreEmailInfo.new_3 (jget (this).storeFrontInterface) adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
        emailInfo <- (EmailInfo.new_1 basicEmailInfo)
        storeAdminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (AdminUserEmailEventHandlerSingletons.getInstance ((jio (AdminUserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.qUOTEREQUEST)))
        adminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (StoreAdminUserEmailEventHandlerSingletons.getInstance ((jio (StoreAdminUserEmailEventHandlerSingletons.getInstance))) (UserEmailEventNameData.qUOTEREQUEST) (jget (this).abeClientInformation) (jget (this).storeFrontInterface)))
        Control.Monad.void (UserEmailEventHandler.receiveEmailInfo storeAdminUserEmailEventHandler (UserEmailEventNameData.qUOTEREQUEST) emailInfo)
        Control.Monad.void (UserEmailEventHandler.receiveEmailInfo adminUserEmailEventHandler (UserEmailEventNameData.qUOTEREQUEST) emailInfo)
        pure ()


-- throws Exception
email :: (JavaObjectClass this_) => this_ -> IO (String)
email object_ = jmethod object_ "email" (\() -> (email_impl (javaCast object_ :: QuoteHelper))) ()

email_super :: (JavaObjectClass this_) => this_ -> IO (String)
email_super object_ = (email_impl (javaCast object_ :: QuoteHelper))

email_impl :: QuoteHelper -> IO (String)
email_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "email" e)
            pure ("Thank You For Your Business.<p>")
            ) $ do
            quoteRequestEntity <- (QuoteRequestEntityFactory.getQuoteRequestEntityInstance ((jio (QuoteRequestEntityFactory.getInstance))))
            userName <- (WeblisketSession.getUserName ((jget (this).weblisketSession)))
            vector <- (QuoteRequestEntity.getIds quoteRequestEntity userName)
            id <- newIORef (0)
            size <- (BasicArrayList.size vector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                nextId <- (intValue (((javaCast (jio (BasicArrayList.get vector index)) :: Int))))
                when ((jget id) < nextId) $ do
                    jset id (nextId)
            quoteRequest <- (QuoteRequestEntity.get quoteRequestEntity userName (jget id))
            if (quoteRequest /= javaNull) then do
                Control.Monad.void (QuoteHelper.emailUser this quoteRequest)
                Control.Monad.void (QuoteHelper.emailAdmins this quoteRequest)
                javaReturn ("Thank You For Your Business.<p/>")
            else do
                javaThrow ((JavaException "Exception" "No Quote Request"))


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: QuoteHelper))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: QuoteHelper))

drop_impl :: QuoteHelper -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop QuoteRequest table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            success <- (QuoteRequestEntity.dropTable ((jio (QuoteRequestEntityFactory.getQuoteRequestEntityInstance ((jio (QuoteRequestEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this (jget ((jget (this).base.commonStrings)).dROP))
            pure (success)


create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: QuoteHelper))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: QuoteHelper))

create_impl :: QuoteHelper -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create new QuoteRequest table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            success <- (QuoteRequestEntity.createTable ((jio (QuoteRequestEntityFactory.getQuoteRequestEntityInstance ((jio (QuoteRequestEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "create()")
            pure (success)


restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: QuoteHelper))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: QuoteHelper))

restore_impl :: QuoteHelper -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.restoreTable ((jio (AbSqlTableUtil.getInstance))) (jio (QuoteRequestEntityFactory.getQuoteRequestEntityInstance ((jio (QuoteRequestEntityFactory.getInstance))))) (jget this.portion))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "restore()")
            pure (result)


backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: QuoteHelper))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: QuoteHelper))

backup_impl :: QuoteHelper -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.backupTable ((jio (AbSqlTableUtil.getInstance))) (jio (QuoteRequestEntityFactory.getQuoteRequestEntityInstance ((jio (QuoteRequestEntityFactory.getInstance))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "backup()")
            pure (result)


