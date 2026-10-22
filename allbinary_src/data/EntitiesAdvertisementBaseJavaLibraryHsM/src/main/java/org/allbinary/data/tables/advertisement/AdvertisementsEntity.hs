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
-- package org.allbinary.data.tables.advertisement
module AdvertisementsEntity (module AdvertisementsEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, delete, delete_super, delete_impl, get, get_super, get_impl, get_2, get_2_super, get_2_impl, get, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, update, update_super, update_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName, _INDEX)
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
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified AdvertisementData -- org.allbinary.business.advertisement.AdvertisementData
import qualified AdvertisementInterface -- org.allbinary.business.advertisement.AdvertisementInterface
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AdvertisementsEntityInterface

-- implements AdvertisementsEntityInterface
data AdvertisementsEntity = AdvertisementsEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    , _INDEX :: IORef (String)
    }

instance JavaNull AdvertisementsEntity where
    javaNull = javaNullRecord "AdvertisementsEntity"

instance JavaEquals AdvertisementsEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementsEntity where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementsEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdvertisementsEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    _INDEX <- newIORef ""
    let this = AdvertisementsEntity header_ base logUtil tableName _INDEX
    jregisterLevel header_ this
    AdvertisementsEntityInterface.registerInterface_ header_
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "get_2" (\() -> get_2_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: AdvertisementsEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("advertisements")
    jset this._INDEX ("_index")
    pure ()

new_ :: IO AdvertisementsEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvertisementsEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


delete :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: AdvertisementsEntity))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: AdvertisementsEntity)) a1

delete_impl :: AdvertisementsEntity -> String -> IO (())
delete_impl this value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete) e)
            ) $ do
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base (jget ((jio (EntryData.getInstance))).iD) value)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete))
        pure ()


get :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AdvertisementsEntity))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get_super object_ a1 = (get_impl (javaCast object_ :: AdvertisementsEntity)) a1

get_impl :: AdvertisementsEntity -> String -> IO (BasicArrayList.BasicArrayList)
get_impl this storeName = do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
        hashMapVector <- (AbSqlBean.getRows_super this.base keysAndValues)
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size hashMapVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let hashMap = (javaCast (jio (BasicArrayList.get hashMapVector index)) :: HashMap.HashMap)
        pure (vector)


get_2 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AdvertisementInterface.AdvertisementInterface)
get_2 object_ a1 a2 = jmethod object_ "get_2" (\() -> (get_2_impl (javaCast object_ :: AdvertisementsEntity))) () a1 a2

get_2_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AdvertisementInterface.AdvertisementInterface)
get_2_super object_ a1 a2 = (get_2_impl (javaCast object_ :: AdvertisementsEntity)) a1 a2

get_2_impl :: AdvertisementsEntity -> String -> String -> IO (AdvertisementInterface.AdvertisementInterface)
get_2_impl this storeName advertismentName = do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
        Control.Monad.void (HashMap.put keysAndValues (jget ((jio (AdvertisementData.getInstance))).nAME) advertismentName)
        hashMap <- (AbSqlBean.getRow_super this.base keysAndValues)
        pure (javaNull)


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: AdvertisementsEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: AdvertisementsEntity))

createTableStatement_impl :: AdvertisementsEntity -> IO (String)
createTableStatement_impl this = do
        advertisementData <- (AdvertisementData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (AbSqlBean.getTableName this))))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (jget (advertisementData).nAME)))) (jget this._INDEX)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget (advertisementData).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget ((jio (StoreFrontData.getInstance))).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (advertisementData).dESCRIPTION)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (DynamicObjectData.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).lASTMODIFIED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (jget (advertisementData).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: AdvertisementsEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: AdvertisementsEntity))

createTable_impl :: AdvertisementsEntity -> IO (String)
createTable_impl this = do
        returnStr <- (AbSqlBean.createTable_super this.base (jio (AdvertisementsEntity.createTableStatement this)))
        pure (returnStr)


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AdvertisementsEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: AdvertisementsEntity)) a1

update_impl :: AdvertisementsEntity -> HashMap.HashMap -> IO (())
update_impl this updatedValues = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (jget ((jio (EntryData.getInstance))).iD) (javaCast (jio (HashMap.get updatedValues (jget ((jio (EntryData.getInstance))).iD))) :: String) updatedValues)
        pure ()


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: AdvertisementsEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: AdvertisementsEntity))

dropTable_impl :: AdvertisementsEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


