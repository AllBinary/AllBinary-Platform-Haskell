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
-- package org.allbinary.data.tables.user.quoterequest
module QuoteRequestEntity (module QuoteRequestEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, get, get_super, get_impl, getIds, getIds_super, getIds_impl, deleteWhere, deleteWhere_super, deleteWhere_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, update, update_super, update_impl, logUtil, tableName)
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
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified QuoteRequestData -- org.allbinary.business.quoterequest.QuoteRequestData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified QuoteRequest -- org.allbinary.business.user.quoterequest.QuoteRequest
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified QuoteRequestEntityInterface

-- implements QuoteRequestEntityInterface
data QuoteRequestEntity = QuoteRequestEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull QuoteRequestEntity where
    javaNull = javaNullRecord "QuoteRequestEntity"

instance JavaEquals QuoteRequestEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq QuoteRequestEntity where
    (==) = jrecordEquals

instance JavaObjectClass QuoteRequestEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO QuoteRequestEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = QuoteRequestEntity header_ base logUtil tableName
    jregisterLevel header_ this
    QuoteRequestEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getIds" (\() -> getIds_impl this)
    jregisterMethod header_ "deleteWhere" (\() -> deleteWhere_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: QuoteRequestEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("quoterequest")
    pure ()

new_ :: IO QuoteRequestEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: QuoteRequestEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: QuoteRequestEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: QuoteRequestEntity)) a1

insert_impl :: QuoteRequestEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (QuoteRequest.QuoteRequest)
get object_ a1 a2 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: QuoteRequestEntity))) () a1 a2

get_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (QuoteRequest.QuoteRequest)
get_super object_ a1 a2 = (get_impl (javaCast object_ :: QuoteRequestEntity)) a1 a2

get_impl :: QuoteRequestEntity -> String -> Int -> IO (QuoteRequest.QuoteRequest)
get_impl this userName id = do
    javaCatchReturn $ do
        row <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put row (UserData.uSERNAME) userName)
        Control.Monad.void (HashMap.put row (jget ((jio (QuoteRequestData.getInstance))).iD) (javaToString id))
        quoteRequestHashMap <- (AbSqlBean.getRow_super this.base row)
        if (quoteRequestHashMap /= javaNull) then do
            javaReturn =<< (QuoteRequest.new_1 quoteRequestHashMap)
        else do
            javaReturn (javaNull)


getIds :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getIds object_ a1 = jmethod object_ "getIds" (\() -> (getIds_impl (javaCast object_ :: QuoteRequestEntity))) () a1

getIds_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getIds_super object_ a1 = (getIds_impl (javaCast object_ :: QuoteRequestEntity)) a1

getIds_impl :: QuoteRequestEntity -> String -> IO (BasicArrayList.BasicArrayList)
getIds_impl this userName = do
        (AbSqlBean.getColumnWhere_super this.base (jget ((jio (QuoteRequestData.getInstance))).iD) (UserData.uSERNAME) userName)


deleteWhere :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere object_ a1 a2 = jmethod object_ "deleteWhere" (\() -> (deleteWhere_impl (javaCast object_ :: QuoteRequestEntity))) () a1 a2

deleteWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere_super object_ a1 a2 = (deleteWhere_impl (javaCast object_ :: QuoteRequestEntity)) a1 a2

deleteWhere_impl :: QuoteRequestEntity -> String -> String -> IO (())
deleteWhere_impl this key value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "deleteWhere" e)
            ) $ do
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base key value)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "deleteWhere")
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: QuoteRequestEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: QuoteRequestEntity))

createTableStatement_impl :: QuoteRequestEntity -> IO (String)
createTableStatement_impl this = do
        quoteRequestData <- (QuoteRequestData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer (jget (quoteRequestData).iD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (UserData.uSERNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (quoteRequestData).pROJECT_INFO))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (quoteRequestData).cUSTOMER_COMMENTS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (quoteRequestData).bUDGET))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (quoteRequestData).tIMEFRAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (quoteRequestData).cOMMENTS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).tIMECREATED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).lASTMODIFIED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY))
        Control.Monad.void (StringMaker.append stringBuffer (jget (quoteRequestData).iD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: QuoteRequestEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: QuoteRequestEntity))

createTable_impl :: QuoteRequestEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (QuoteRequestEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: QuoteRequestEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: QuoteRequestEntity))

dropTable_impl :: QuoteRequestEntity -> IO (String)
dropTable_impl this = do
        result <- (jnewString (jio (AbSqlBean.dropTable_super this.base)))
        pure (result)


update :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: QuoteRequestEntity))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: QuoteRequestEntity)) a1 a2

update_impl :: QuoteRequestEntity -> String -> HashMap.HashMap -> IO (())
update_impl this userName updatedValues = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (UserData.uSERNAME) userName updatedValues)
        pure ()


