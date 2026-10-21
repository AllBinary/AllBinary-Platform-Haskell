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
-- package org.allbinary.data.tables.user.commerce.money.payment.transaction
module TransactionResultEntity (module TransactionResultEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, remove, remove_super, remove_impl, add, add_super, add_impl, getTransactionResultInterface, getTransactionResultInterface_super, getTransactionResultInterface_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName)
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
import qualified PaymentTransactionKeys -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified UserData -- org.allbinary.business.user.UserData
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified PaymentTransactionKeysFactory -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory
import qualified TransactionResult -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult
import qualified TransactionResultInterface -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransactionResultEntityInterface

-- implements TransactionResultEntityInterface
data TransactionResultEntity = TransactionResultEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull TransactionResultEntity where
    javaNull = javaNullRecord "TransactionResultEntity"

instance JavaEquals TransactionResultEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionResultEntity where
    (==) = jrecordEquals

instance JavaObjectClass TransactionResultEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransactionResultEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = TransactionResultEntity header_ base logUtil tableName
    jregisterLevel header_ this
    TransactionResultEntityInterface.registerInterface_ header_
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getTransactionResultInterface" (\() -> getTransactionResultInterface_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: TransactionResultEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("vresults")
    pure ()

new_ :: IO TransactionResultEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransactionResultEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


remove :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: TransactionResultEntity))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: TransactionResultEntity)) a1 a2

remove_impl :: TransactionResultEntity -> String -> String -> IO (())
remove_impl this userName orderNumber = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "remove" e)
            ) $ do
            whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereHashMap (OrderData.iD) (javaCast orderNumber :: String))
            Control.Monad.void (HashMap.put whereHashMap (UserData.uSERNAME) userName)
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base whereHashMap)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "remove")
        pure ()


add :: (JavaObjectClass this_) => this_ -> String -> String -> TransactionResultInterface.TransactionResultInterface -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: TransactionResultEntity))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> String -> String -> TransactionResultInterface.TransactionResultInterface -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: TransactionResultEntity)) a1 a2 a3

add_impl :: TransactionResultEntity -> String -> String -> TransactionResultInterface.TransactionResultInterface -> IO (())
add_impl this userName orderNumber transactionResultInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "add" e)
            ) $ do
            values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add values orderNumber)
            Control.Monad.void (BasicArrayList.add values userName)
            Control.Monad.void (BasicArrayList.addAllList values (jio (TransactionResultInterface.getValues transactionResultInterface)))
            calendar <- (Calendar.getInstance)
            let time = (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64))
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "add")
        pure ()


getTransactionResultInterface :: (JavaObjectClass this_) => this_ -> String -> IO (TransactionResultInterface.TransactionResultInterface)
getTransactionResultInterface object_ a1 = jmethod object_ "getTransactionResultInterface" (\() -> (getTransactionResultInterface_impl (javaCast object_ :: TransactionResultEntity))) () a1

getTransactionResultInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (TransactionResultInterface.TransactionResultInterface)
getTransactionResultInterface_super object_ a1 = (getTransactionResultInterface_impl (javaCast object_ :: TransactionResultEntity)) a1

getTransactionResultInterface_impl :: TransactionResultEntity -> String -> IO (TransactionResultInterface.TransactionResultInterface)
getTransactionResultInterface_impl this orderNumber = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "getTransactionResultInterface" e)
            pure (javaNull)
            ) $ do
            resultHashMap <- newIORef =<< (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            updateKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put updateKeyAndValue (OrderData.iD) orderNumber)
            assignedValue <- (AbSqlBean.getRow_super this.base updateKeyAndValue)
            jset resultHashMap (assignedValue)
            if ((jget resultHashMap) /= javaNull) then do
                transactionResult <- (TransactionResult.new_1 (jget resultHashMap))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "getTransactionResultInterface")
                javaReturn ((javaCast transactionResult :: TransactionResultInterface.TransactionResultInterface))
            else do
                javaReturn (javaNull)


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: TransactionResultEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: TransactionResultEntity))

createTableStatement_impl :: TransactionResultEntity -> IO (String)
createTableStatement_impl this = do
        paymentTransactionKeysFactory <- (PaymentTransactionKeysFactory.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (OrderData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (UserData.uSERNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rESULT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).pNREF))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).tWELVE_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rESPMSG))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aUTHCODE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).sIX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aVSADDR))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).oNE_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aVSZIP))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).oNE_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).oRIGRESULT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sTATUS))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).fRAUDCODE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).tWO_INT_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).fRAUDMSG))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_INT_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eRRCODE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_INT_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sCORE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).tHREE_INT_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rEASON1))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rEASON2))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rEASON3)))))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION1))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION2))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION3))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION4))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION5))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION6))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION7))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).fOUR_INT_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).lASTMODIFIED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (OrderData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: TransactionResultEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: TransactionResultEntity))

createTable_impl :: TransactionResultEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (TransactionResultEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: TransactionResultEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: TransactionResultEntity))

dropTable_impl :: TransactionResultEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


