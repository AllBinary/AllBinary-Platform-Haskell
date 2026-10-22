{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.data.tables.generator
module IdGeneratorEntity (module IdGeneratorEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, insert, insert_super, insert_impl, delete, delete_super, delete_impl, update, update_super, update_impl, update_1, update_1_super, update_1_impl, update, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName, tableData, nAME, vALUE)
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
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified IdGeneratorEntityInterface

-- implements IdGeneratorEntityInterface
data IdGeneratorEntity = IdGeneratorEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    , tableData :: IORef (String)
    , nAME :: IORef (String)
    , vALUE :: IORef (String)
    }

instance JavaNull IdGeneratorEntity where
    javaNull = javaNullRecord "IdGeneratorEntity"

instance JavaEquals IdGeneratorEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IdGeneratorEntity where
    (==) = jrecordEquals

instance JavaObjectClass IdGeneratorEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IdGeneratorEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    tableData <- newIORef ""
    nAME <- newIORef ""
    vALUE <- newIORef ""
    let this = IdGeneratorEntity header_ base logUtil tableName tableData nAME vALUE
    jregisterLevel header_ this
    IdGeneratorEntityInterface.registerInterface_ header_
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "update_1" (\() -> update_1_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: IdGeneratorEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("idgenerator")
    jset this.tableData (javaNull)
    jset this.nAME ("NAME")
    jset this.vALUE ("VALUE")
    pure ()

new_ :: IO IdGeneratorEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IdGeneratorEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (jget this.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget this.vALUE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (jget this.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND)))))
        jset (this).tableData (assignedValue)
        Control.Monad.void (AbSqlBean.setTableName_super this.base (jget (this).tableName))
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: IdGeneratorEntity))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
get_super object_ a1 = (get_impl (javaCast object_ :: IdGeneratorEntity)) a1

get_impl :: IdGeneratorEntity -> String -> IO (Int64)
get_impl this name = do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put keysAndValues (jget (this).nAME) name)
        hashMap <- (AbSqlBean.getRow_super this.base keysAndValues)
        when ((jio (compareTo (((javaCast (jio (HashMap.get hashMap (jget (this).nAME))) :: String))) name)) /= 0) $ do
            javaThrow ((JavaException "Exception" "results do not match"))
        let value = (javaCast (jio (HashMap.get hashMap (jget (this).vALUE))) :: String)
        pure ((Prelude.read value))


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: IdGeneratorEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: IdGeneratorEntity)) a1

insert_impl :: IdGeneratorEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


delete :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: IdGeneratorEntity))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: IdGeneratorEntity)) a1

delete_impl :: IdGeneratorEntity -> String -> IO (())
delete_impl this value = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete) e)
            ) $ do
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base (jget (this).nAME) value)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete))
        pure ()


update :: (JavaObjectClass this_) => this_ -> String -> Int64 -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: IdGeneratorEntity))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> String -> Int64 -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: IdGeneratorEntity)) a1 a2

update_impl :: IdGeneratorEntity -> String -> Int64 -> IO (())
update_impl this name value = do
        map <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put map (jget (this).nAME) name)
        Control.Monad.void (HashMap.put map (jget (this).vALUE) (javaToString value))
        Control.Monad.void (IdGeneratorEntity.update_1 this map)
        pure ()


update_1 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_1 object_ a1 = jmethod object_ "update_1" (\() -> (update_1_impl (javaCast object_ :: IdGeneratorEntity))) () a1

update_1_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_1_super object_ a1 = (update_1_impl (javaCast object_ :: IdGeneratorEntity)) a1

update_1_impl :: IdGeneratorEntity -> HashMap.HashMap -> IO (())
update_1_impl this hashMap = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (jget (this).nAME) (javaCast (jio (HashMap.get hashMap (jget (this).nAME))) :: String) hashMap)
        pure ()


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: IdGeneratorEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: IdGeneratorEntity))

createTable_impl :: IdGeneratorEntity -> IO (String)
createTable_impl this = do
        returnStr <- (AbSqlBean.createTable_super this.base (jget this.tableData))
        pure (returnStr)


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: IdGeneratorEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: IdGeneratorEntity))

dropTable_impl :: IdGeneratorEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


