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
-- package org.allbinary.business.installer
module InitDbCrypted (module InitDbCrypted, module AbDatabaseManagement) where

import AbDatabaseManagement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addUsers, addUsers_super, addUsers_impl, addDatabases, addDatabases_super, addDatabases_impl, addTables, addTables_super, addTables_impl, logUtil, userDbInitInfo, inventoryDbInitInfo, historyDbInitInfo, staticpagesDbInitInfo, logDbInitInfo, sQL_FILE)
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
import qualified StringUtil -- same package or java.lang
import qualified InitInfoEntity -- org.allbinary.business.init.InitInfoEntity
import qualified DatabaseConnectionInfoInterface -- org.allbinary.business.init.db.DatabaseConnectionInfoInterface
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified HistoryDbInitInfo -- org.allbinary.business.init.db.HistoryDbInitInfo
import qualified InventoryDbInitInfo -- org.allbinary.business.init.db.InventoryDbInitInfo
import qualified LogDbInitInfo -- org.allbinary.business.init.db.LogDbInitInfo
import qualified StaticPagesDbInitInfo -- org.allbinary.business.init.db.StaticPagesDbInitInfo
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StoreFrontsEntityFactory -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory
import qualified LogTableEntityFactory -- org.allbinary.data.tables.log.LogTableEntityFactory
import qualified StaticPagesEntityFactory -- org.allbinary.data.tables.staticpages.StaticPagesEntityFactory
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified BillingAddressesEntityFactory -- org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory
import qualified ShippingAddressesEntityFactory -- org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified OrderItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory
import qualified PaymentEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory
import qualified PaymentGatewayEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory
import qualified TransactionEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory
import qualified TransactionResultEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityFactory
import qualified QuoteRequestEntityFactory -- org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbDatabaseManagement -- org.allbinary.logic.communication.sql.AbDatabaseManagement
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data InitDbCrypted = InitDbCrypted
    { header_ :: JavaHeader
    , base :: AbDatabaseManagement.AbDatabaseManagement
    , logUtil :: IORef (LogUtil.LogUtil)
    , userDbInitInfo :: IORef (UserDbInitInfo.UserDbInitInfo)
    , inventoryDbInitInfo :: IORef (InventoryDbInitInfo.InventoryDbInitInfo)
    , historyDbInitInfo :: IORef (HistoryDbInitInfo.HistoryDbInitInfo)
    , staticpagesDbInitInfo :: IORef (StaticPagesDbInitInfo.StaticPagesDbInitInfo)
    , logDbInitInfo :: IORef (LogDbInitInfo.LogDbInitInfo)
    , sQL_FILE :: IORef (String)
    }

instance JavaNull InitDbCrypted where
    javaNull = javaNullRecord "InitDbCrypted"

instance JavaEquals InitDbCrypted where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitDbCrypted where
    (==) = jrecordEquals

instance JavaObjectClass InitDbCrypted where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InitDbCrypted
newRecord_ = do
    base <- AbDatabaseManagement.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    userDbInitInfo <- newIORef javaNull
    inventoryDbInitInfo <- newIORef javaNull
    historyDbInitInfo <- newIORef javaNull
    staticpagesDbInitInfo <- newIORef javaNull
    logDbInitInfo <- newIORef javaNull
    sQL_FILE <- newIORef ""
    let this = InitDbCrypted header_ base logUtil userDbInitInfo inventoryDbInitInfo historyDbInitInfo staticpagesDbInitInfo logDbInitInfo sQL_FILE
    jregisterLevel header_ this
    jregisterMethod header_ "addUsers" (\() -> addUsers_impl this)
    jregisterMethod header_ "addDatabases" (\() -> addDatabases_impl this)
    jregisterMethod header_ "addTables" (\() -> addTables_impl this)
    pure this

initFields_ :: InitDbCrypted -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userDbInitInfo (javaNull)
    jset this.inventoryDbInitInfo (javaNull)
    jset this.historyDbInitInfo (javaNull)
    jset this.staticpagesDbInitInfo (javaNull)
    jset this.logDbInitInfo (javaNull)
    jset this.sQL_FILE ("initWeblisket.sql")
    pure ()

new_1 :: DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO InitDbCrypted
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: InitDbCrypted -> DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO ()
init_1 this databaseConnectionInfoInterface = do
        AbDatabaseManagement.init_1 this.base (javaCast databaseConnectionInfoInterface :: DbConnectionInfo.DbConnectionInfo)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


addUsers :: (JavaObjectClass this_) => this_ -> IO (Bool)
addUsers object_ = jmethod object_ "addUsers" (\() -> (addUsers_impl (javaCast object_ :: InitDbCrypted))) ()

addUsers_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addUsers_super object_ = (addUsers_impl (javaCast object_ :: InitDbCrypted))

addUsers_impl :: InitDbCrypted -> IO (Bool)
addUsers_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget (this).base.mETHOD_ADD_USERS) e)
            pure (True)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget (this).base.mETHOD_ADD_USERS))
            assignedValue <- (UserDbInitInfo.new_)
            jset (this).userDbInitInfo (assignedValue)
            assignedValue <- (InventoryDbInitInfo.new_)
            jset (this).inventoryDbInitInfo (assignedValue)
            assignedValue <- (HistoryDbInitInfo.new_)
            jset (this).historyDbInitInfo (assignedValue)
            assignedValue <- (StaticPagesDbInitInfo.new_)
            jset (this).staticpagesDbInitInfo (assignedValue)
            assignedValue <- (LogDbInitInfo.new_)
            jset (this).logDbInitInfo (assignedValue)
            cUSTOMERDB <- (UserDbInitInfo.getName ((jget (this).userDbInitInfo)))
            cUSTOMERDBUSER <- (UserDbInitInfo.getUserName ((jget (this).userDbInitInfo)))
            cUSTOMERDBPASSWORD <- (UserDbInitInfo.getPassword ((jget (this).userDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDbUser_3 this cUSTOMERDB cUSTOMERDBUSER cUSTOMERDBPASSWORD))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_USER) ++ cUSTOMERDBUSER) this (jget (this).base.mETHOD_ADD_USERS))
                javaReturn (False)
            iNVENTORYDB <- (InventoryDbInitInfo.getName ((jget (this).inventoryDbInitInfo)))
            iNVENTORYDBUSER <- (InventoryDbInitInfo.getUserName ((jget (this).inventoryDbInitInfo)))
            iNVENTORYDBPASSWORD <- (InventoryDbInitInfo.getPassword ((jget (this).inventoryDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDbUser_3 this iNVENTORYDB iNVENTORYDBUSER iNVENTORYDBPASSWORD))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_USER) ++ iNVENTORYDBUSER) this (jget (this).base.mETHOD_ADD_USERS))
                javaReturn (False)
            hISTORYDB <- (HistoryDbInitInfo.getName ((jget (this).historyDbInitInfo)))
            hISTORYDBUSER <- (HistoryDbInitInfo.getUserName ((jget (this).historyDbInitInfo)))
            hISTORYDBPASSWORD <- (HistoryDbInitInfo.getPassword ((jget (this).historyDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDbUser_3 this hISTORYDB hISTORYDBUSER hISTORYDBPASSWORD))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_USER) ++ hISTORYDBUSER) this (jget (this).base.mETHOD_ADD_USERS))
                javaReturn (False)
            sTATICPAGESDB <- (StaticPagesDbInitInfo.getName ((jget (this).staticpagesDbInitInfo)))
            sTATICPAGESDBUSER <- (StaticPagesDbInitInfo.getUserName ((jget (this).staticpagesDbInitInfo)))
            sTATICPAGESDBPASSWORD <- (StaticPagesDbInitInfo.getPassword ((jget (this).staticpagesDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDbUser_3 this sTATICPAGESDB sTATICPAGESDBUSER sTATICPAGESDBPASSWORD))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_USER) ++ sTATICPAGESDBUSER) this (jget (this).base.mETHOD_ADD_USERS))
                javaReturn (False)
            lOGDB <- (LogDbInitInfo.getName ((jget (this).logDbInitInfo)))
            lOGDBUSER <- (LogDbInitInfo.getUserName ((jget (this).logDbInitInfo)))
            lOGDBPASSWORD <- (LogDbInitInfo.getPassword ((jget (this).logDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDbUser_3 this lOGDB lOGDBUSER lOGDBPASSWORD))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_USER) ++ lOGDBUSER) this (jget (this).base.mETHOD_ADD_USERS))
                javaReturn (False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eND) this (jget (this).base.mETHOD_ADD_USERS))
            pure (True)


addDatabases :: (JavaObjectClass this_) => this_ -> IO (Bool)
addDatabases object_ = jmethod object_ "addDatabases" (\() -> (addDatabases_impl (javaCast object_ :: InitDbCrypted))) ()

addDatabases_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addDatabases_super object_ = (addDatabases_impl (javaCast object_ :: InitDbCrypted))

addDatabases_impl :: InitDbCrypted -> IO (Bool)
addDatabases_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget (this).base.mETHOD_ADD_DATABASES) e)
            pure (True)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget (this).base.mETHOD_ADD_DATABASES))
            assignedValue <- (UserDbInitInfo.new_)
            jset (this).userDbInitInfo (assignedValue)
            assignedValue <- (InventoryDbInitInfo.new_)
            jset (this).inventoryDbInitInfo (assignedValue)
            assignedValue <- (HistoryDbInitInfo.new_)
            jset (this).historyDbInitInfo (assignedValue)
            assignedValue <- (StaticPagesDbInitInfo.new_)
            jset (this).staticpagesDbInitInfo (assignedValue)
            assignedValue <- (LogDbInitInfo.new_)
            jset (this).logDbInitInfo (assignedValue)
            cUSTOMERDB <- (UserDbInitInfo.getName ((jget (this).userDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDb this cUSTOMERDB))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_DATABASE) ++ cUSTOMERDB) this (jget (this).base.mETHOD_ADD_DATABASES))
                javaReturn (False)
            iNVENTORYDB <- (InventoryDbInitInfo.getName ((jget (this).inventoryDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDb this iNVENTORYDB))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_DATABASE) ++ iNVENTORYDB) this (jget (this).base.mETHOD_ADD_DATABASES))
                javaReturn (False)
            hISTORYDB <- (HistoryDbInitInfo.getName ((jget (this).historyDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDb this hISTORYDB))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_DATABASE) ++ hISTORYDB) this (jget (this).base.mETHOD_ADD_DATABASES))
                javaReturn (False)
            sTATICPAGESDB <- (StaticPagesDbInitInfo.getName ((jget (this).staticpagesDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDb this sTATICPAGESDB))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_DATABASE) ++ sTATICPAGESDB) this (jget (this).base.mETHOD_ADD_DATABASES))
                javaReturn (False)
            lOGDB <- (LogDbInitInfo.getName ((jget (this).logDbInitInfo)))
            when (Prelude.not (jio (AbDatabaseManagement.addDb this lOGDB))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).base.uNABLE_TO_CREATE_DATABASE) ++ lOGDB) this (jget (this).base.mETHOD_ADD_DATABASES))
                javaReturn (False)
            file <- (fmap (\value_ -> javaCast value_ :: AbFile.AbFile) (FileFactory.getInstance_1 ((jio (FileFactory.getInstance))) (jget (this).sQL_FILE)))
            Control.Monad.void (AbFile.createNewFile file)
            idOutData <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) file)
            Control.Monad.void (AbDataOutputStream.writeBytes idOutData (jio (StringMaker.toString ((jget (this).base.sqlCommandLog)))))
            pure (True)


addTables :: (JavaObjectClass this_) => this_ -> IO (Bool)
addTables object_ = jmethod object_ "addTables" (\() -> (addTables_impl (javaCast object_ :: InitDbCrypted))) ()

addTables_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addTables_super object_ = (addTables_impl (javaCast object_ :: InitDbCrypted))

addTables_impl :: InitDbCrypted -> IO (Bool)
addTables_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget (this).base.mETHOD_ADD_TABLES) e)
            pure (False)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget (this).base.mETHOD_ADD_TABLES))
            Control.Monad.void (StringMaker.append stringBuffer (jio (UserEntity.createTable ((jio (UserEntityFactory.getInstance))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontsEntity.createTable ((jio (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (BillingAddressesEntityFactory.createTable ((jio (BillingAddressesEntityFactory.getInstance_1 ((jio (BillingAddressesEntityFactory.getInstance))) (jget ((jget (this).base.base.base.base.base.base.stringUtil)).eMPTY_STRING)))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (ShippingAddressesEntityFactory.createTable ((jio (ShippingAddressesEntityFactory.getInstance_1 ((jio (ShippingAddressesEntityFactory.getInstance))) (jget ((jget (this).base.base.base.base.base.base.stringUtil)).eMPTY_STRING)))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentEntity.createTable ((jio (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (QuoteRequestEntity.createTable ((jio (QuoteRequestEntityFactory.getQuoteRequestEntityInstance ((jio (QuoteRequestEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (OrderHistoryEntity.createTable ((jio (OrderHistoryEntityFactory.getInstance))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (OrderItemsEntity.createTable ((jio (OrderItemsEntityFactory.getInstance))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (TransactionEntity.createTable ((jio (TransactionEntityFactory.getTransactionEntityInstance ((jio (TransactionEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (TransactionResultEntity.createTable ((jio (TransactionResultEntityFactory.getTransactionResultEntityInstance ((jio (TransactionResultEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayEntity.createTable ((jio (PaymentGatewayEntityFactory.getInstance))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (InventoryEntity.createTable ((jio (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (InitInfoEntity.createTable ((jio (InitInfoEntity.new_))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (LogTableEntity.createTable ((jio (LogTableEntityFactory.getLogTableEntityInstance ((jio (LogTableEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StaticPagesEntity.createTable ((jio (StaticPagesEntityFactory.getStaticPagesEntityInstance ((jio (StaticPagesEntityFactory.getInstance)))))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoEntity.createTable ((jio (TransformInfoEntityBuilder.getInstance))))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (aDD_TABLES_RESULTS_LABEL ++ (jio (StringMaker.toString stringBuffer))) this (jget (this).base.mETHOD_ADD_TABLES))
            pure (True)


