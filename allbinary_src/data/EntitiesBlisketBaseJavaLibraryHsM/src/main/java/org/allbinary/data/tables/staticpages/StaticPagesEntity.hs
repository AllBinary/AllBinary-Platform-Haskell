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
-- package org.allbinary.data.tables.staticpages
module StaticPagesEntity (module StaticPagesEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, getFile, getFile_super, getFile_impl, delete, delete_super, delete_impl, dropTable, dropTable_super, dropTable_impl, update, update_super, update_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, logUtil, basicItemData, tABLENAME)
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
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StaticPagesDbInitInfo -- org.allbinary.business.init.db.StaticPagesDbInitInfo
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified SearchData -- org.allbinary.logic.control.search.SearchData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StaticPagesEntityInterface

-- implements StaticPagesEntityInterface
data StaticPagesEntity = StaticPagesEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , tABLENAME :: IORef (String)
    }

instance JavaNull StaticPagesEntity where
    javaNull = javaNullRecord "StaticPagesEntity"

instance JavaEquals StaticPagesEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticPagesEntity where
    (==) = jrecordEquals

instance JavaObjectClass StaticPagesEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StaticPagesEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    tABLENAME <- newIORef ""
    let this = StaticPagesEntity header_ base logUtil basicItemData tABLENAME
    jregisterLevel header_ this
    StaticPagesEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "getFile" (\() -> getFile_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    pure this

initFields_ :: StaticPagesEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.tABLENAME ("staticpages")
    pure ()

new_ :: IO StaticPagesEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticPagesEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (StaticPagesDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tABLENAME))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: StaticPagesEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: StaticPagesEntity)) a1

insert_impl :: StaticPagesEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


getFile :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
getFile object_ a1 a2 = jmethod object_ "getFile" (\() -> (getFile_impl (javaCast object_ :: StaticPagesEntity))) () a1 a2

getFile_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
getFile_super object_ a1 a2 = (getFile_impl (javaCast object_ :: StaticPagesEntity)) a1 a2

getFile_impl :: StaticPagesEntity -> String -> String -> IO (String)
getFile_impl this store keywords = do
        whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put whereHashMap (jget ((jio (StoreFrontData.getInstance))).nAME) store)
        Control.Monad.void (HashMap.put whereHashMap (jget ((jget this.basicItemData)).kEYWORDS) keywords)
        file <- (AbSqlBean.getField_super this.base whereHashMap (SearchData.pAGE))
        pure (file)


delete :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: StaticPagesEntity))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: StaticPagesEntity)) a1

delete_impl :: StaticPagesEntity -> String -> IO (())
delete_impl this keywords = do
        Control.Monad.void (AbSqlBean.deleteWhere_super this.base (jget ((jget this.basicItemData)).kEYWORDS) keywords)
        pure ()


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: StaticPagesEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: StaticPagesEntity))

dropTable_impl :: StaticPagesEntity -> IO (String)
dropTable_impl this = do
        returnStr <- (AbSqlBean.dropTable_super this.base)
        pure (returnStr)


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StaticPagesEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: StaticPagesEntity)) a1

update_impl :: StaticPagesEntity -> HashMap.HashMap -> IO (())
update_impl this updatedValues = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (jget ((jget this.basicItemData)).kEYWORDS) (javaCast (jio (HashMap.get updatedValues (jget ((jget this.basicItemData)).kEYWORDS))) :: String) updatedValues)
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: StaticPagesEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: StaticPagesEntity))

createTableStatement_impl :: StaticPagesEntity -> IO (String)
createTableStatement_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tABLENAME)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (jget ((jio (StoreFrontData.getInstance))).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).sIXTY_CHAR_COLUMN_NOT_NULL)))) (jget ((jget this.basicItemData)).kEYWORDS)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (SearchData.pAGE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (jget ((jio (StoreFrontData.getInstance))).nAME)))) (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)))) (jget ((jget this.basicItemData)).kEYWORDS)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: StaticPagesEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: StaticPagesEntity))

createTable_impl :: StaticPagesEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (StaticPagesEntity.createTableStatement this)))


