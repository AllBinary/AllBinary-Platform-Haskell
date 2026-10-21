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
-- package org.allbinary.data.tables.context.module.storefronts
module StoreFrontsEntity (module StoreFrontsEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, getStoreFrontInterface, getStoreFrontInterface_super, getStoreFrontInterface_impl, getStoreFrontNames, getStoreFrontNames_super, getStoreFrontNames_impl, update, update_super, update_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName)
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
import qualified StoreFront -- org.allbinary.business.context.modules.storefront.StoreFront
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StoreFrontsEntityInterface

-- implements StoreFrontsEntityInterface
data StoreFrontsEntity = StoreFrontsEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull StoreFrontsEntity where
    javaNull = javaNullRecord "StoreFrontsEntity"

instance JavaEquals StoreFrontsEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontsEntity where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontsEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFrontsEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = StoreFrontsEntity header_ base logUtil tableName
    jregisterLevel header_ this
    StoreFrontsEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "getStoreFrontInterface" (\() -> getStoreFrontInterface_impl this)
    jregisterMethod header_ "getStoreFrontNames" (\() -> getStoreFrontNames_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: StoreFrontsEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("storefronts")
    pure ()

new_ :: IO StoreFrontsEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontsEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: StoreFrontsEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: StoreFrontsEntity)) a1

insert_impl :: StoreFrontsEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


delete :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: StoreFrontsEntity))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: StoreFrontsEntity)) a1

delete_impl :: StoreFrontsEntity -> String -> IO (())
delete_impl this value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete) e)
            ) $ do
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base (jget ((jio (StoreFrontData.getInstance))).nAME) value)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete))
        pure ()


-- throws Exception
getStoreFrontInterface :: (JavaObjectClass this_) => this_ -> String -> IO (StoreFront.StoreFront)
getStoreFrontInterface object_ a1 = jmethod object_ "getStoreFrontInterface" (\() -> (getStoreFrontInterface_impl (javaCast object_ :: StoreFrontsEntity))) () a1

getStoreFrontInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (StoreFront.StoreFront)
getStoreFrontInterface_super object_ a1 = (getStoreFrontInterface_impl (javaCast object_ :: StoreFrontsEntity)) a1

getStoreFrontInterface_impl :: StoreFrontsEntity -> String -> IO (StoreFront.StoreFront)
getStoreFrontInterface_impl this name = do
    javaCatchReturn $ do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) name)
        storeHashMap <- (AbSqlBean.getRow_super this.base keysAndValues)
        if (storeHashMap /= javaNull) then do
            javaReturn =<< (StoreFront.new_1 storeHashMap)
        else do
            javaReturn =<< (StoreFront.new_)


getStoreFrontNames :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreFrontNames object_ = jmethod object_ "getStoreFrontNames" (\() -> (getStoreFrontNames_impl (javaCast object_ :: StoreFrontsEntity))) ()

getStoreFrontNames_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreFrontNames_super object_ = (getStoreFrontNames_impl (javaCast object_ :: StoreFrontsEntity))

getStoreFrontNames_impl :: StoreFrontsEntity -> IO (BasicArrayList.BasicArrayList)
getStoreFrontNames_impl this = do
        storeFrontNames <- (AbSqlBean.getColumn_super this.base (jget ((jio (StoreFrontData.getInstance))).nAME))
        pure (storeFrontNames)


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StoreFrontsEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: StoreFrontsEntity)) a1

update_impl :: StoreFrontsEntity -> HashMap.HashMap -> IO (())
update_impl this updatedValues = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (jget ((jio (StoreFrontData.getInstance))).nAME) (javaCast (jio (HashMap.get updatedValues (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String) updatedValues)
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: StoreFrontsEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: StoreFrontsEntity))

createTableStatement_impl :: StoreFrontsEntity -> IO (String)
createTableStatement_impl this = do
        storeFrontData <- (StoreFrontData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).sIXTY_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).hOMEHOSTNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).hOMEHOSTNAMEPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).hOSTNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).hOSTNAMEPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTHOMEHOSTNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTHOMEHOSTNAMEPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTHOSTNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTHOSTNAMEPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).iMAGEPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).sTATICPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).cATEGORYPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).iNVENTORYCONTROL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).cONFIGURATION))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).sUBSTORES))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tAGLOCATION))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).pACKAGELOCATION))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).fTP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).fTPPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).fTPUSERNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).fTPPASSWORD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTFTP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTFTPPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTFTPUSERNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).tESTFTPPASSWORD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).tIMECREATED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance ((jio (EntryData.getInstance)))))).lASTMODIFIED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY))
        Control.Monad.void (StringMaker.append stringBuffer (jget (storeFrontData).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: StoreFrontsEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: StoreFrontsEntity))

createTable_impl :: StoreFrontsEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (StoreFrontsEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: StoreFrontsEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: StoreFrontsEntity))

dropTable_impl :: StoreFrontsEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


