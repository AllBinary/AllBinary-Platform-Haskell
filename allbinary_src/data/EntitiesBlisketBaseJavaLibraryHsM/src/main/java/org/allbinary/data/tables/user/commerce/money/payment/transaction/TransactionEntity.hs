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
module TransactionEntity (module TransactionEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, remove, remove_super, remove_impl, add, add_super, add_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName)
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
import qualified PaymentTransactionInterface -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface
import qualified PaymentTransactionKeysFactory -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransactionEntityInterface

-- implements TransactionEntityInterface
data TransactionEntity = TransactionEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull TransactionEntity where
    javaNull = javaNullRecord "TransactionEntity"

instance JavaEquals TransactionEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionEntity where
    (==) = jrecordEquals

instance JavaObjectClass TransactionEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransactionEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = TransactionEntity header_ base logUtil tableName
    jregisterLevel header_ this
    TransactionEntityInterface.registerInterface_ header_
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: TransactionEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("vtrans")
    pure ()

new_ :: IO TransactionEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransactionEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


remove :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: TransactionEntity))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: TransactionEntity)) a1 a2

remove_impl :: TransactionEntity -> String -> String -> IO (())
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


add :: (JavaObjectClass this_) => this_ -> String -> String -> PaymentTransactionInterface.PaymentTransactionInterface -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: TransactionEntity))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> String -> String -> PaymentTransactionInterface.PaymentTransactionInterface -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: TransactionEntity)) a1 a2 a3

add_impl :: TransactionEntity -> String -> String -> PaymentTransactionInterface.PaymentTransactionInterface -> IO (())
add_impl this userName orderNumber paymentTransactionInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "add" e)
            ) $ do
            values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add values orderNumber)
            Control.Monad.void (BasicArrayList.add values userName)
            Control.Monad.void (BasicArrayList.addAllList values (jio (PaymentTransactionInterface.toVector paymentTransactionInterface)))
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "add")
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: TransactionEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: TransactionEntity))

createTableStatement_impl :: TransactionEntity -> IO (String)
createTableStatement_impl this = do
        paymentTransactionKeysFactory <- (PaymentTransactionKeysFactory.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (OrderData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (UserData.uSERNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).tRXTYPE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).tENDER))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aCCT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXPDATE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aMT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aUTHCODE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).mICR))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cHECKNUM))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).nAME))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sTREET))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cITY))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sTATE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).zIP))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).dL))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eMAIL))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cOMMENT1))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cOMMENT2))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).oRIGID))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).pONUM))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).dESC))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).dESC1TO4))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).iNVNUM))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPTOZIP))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sWIPE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).tAXAMT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cOMMCARD))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).dUTYAMT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).fREIGHTAMT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).oRDERDATE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).tAXEXEMPT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cOUNTRYCODE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cUSTCODE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cVV2))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aBA))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aCCTTYPE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).dISCOUNT))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).fIRSTNAME))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).lASTNAME))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPFROMZIP))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).pRENOTE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cHKTYPE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).dOB))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).pHONENUM))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sS))))))) " VARCHAR(30) NOT NULL,"))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cOMPANYNAME))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).cOUNTRY))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPTOCITY))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPTOFIRSTNAME))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPTOLASTNAME))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPTOSTATE))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sHIPTOSTREET))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sPECIAL1))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sPECIAL2))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sPECIAL3))))))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).lASTMODIFIED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (OrderData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: TransactionEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: TransactionEntity))

createTable_impl :: TransactionEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (TransactionEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: TransactionEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: TransactionEntity))

dropTable_impl :: TransactionEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


