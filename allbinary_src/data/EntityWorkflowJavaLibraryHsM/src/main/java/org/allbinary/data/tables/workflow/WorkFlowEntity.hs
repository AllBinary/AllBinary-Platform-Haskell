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
-- package org.allbinary.data.tables.workflow
module WorkFlowEntity (module WorkFlowEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, get, get_super, get_impl, get_1, get_1_super, get_1_impl, get, update, update_super, update_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, abeClientInformation, tableName, mETHOD_GET, mETHOD_UPDATE)
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
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified DbWorkFlowFactory -- org.allbinary.logic.control.workflow.DbWorkFlowFactory
import qualified WorkFlowData -- org.allbinary.logic.control.workflow.WorkFlowData
import qualified WorkFlowInterface -- org.allbinary.logic.control.workflow.WorkFlowInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified WorkFlowEntityInterface

-- implements WorkFlowEntityInterface
data WorkFlowEntity = WorkFlowEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , tableName :: IORef (String)
    , mETHOD_GET :: IORef (String)
    , mETHOD_UPDATE :: IORef (String)
    }

instance JavaNull WorkFlowEntity where
    javaNull = javaNullRecord "WorkFlowEntity"

instance JavaEquals WorkFlowEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowEntity where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WorkFlowEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    tableName <- newIORef ""
    mETHOD_GET <- newIORef ""
    mETHOD_UPDATE <- newIORef ""
    let this = WorkFlowEntity header_ base logUtil abeClientInformation tableName mETHOD_GET mETHOD_UPDATE
    jregisterLevel header_ this
    WorkFlowEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "get_1" (\() -> get_1_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: WorkFlowEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.tableName ("workflows")
    jset this.mETHOD_GET ("get()")
    jset this.mETHOD_UPDATE ("update")
    pure ()

new_ :: IO WorkFlowEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WorkFlowEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: WorkFlowEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: WorkFlowEntity)) a1

insert_impl :: WorkFlowEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


delete :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: WorkFlowEntity))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: WorkFlowEntity)) a1 a2

delete_impl :: WorkFlowEntity -> String -> String -> IO (())
delete_impl this name storeName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete) e)
            ) $ do
            keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keysAndValues (jget ((jio (WorkFlowData.getInstance))).nAME) name)
            Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base keysAndValues)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete))
        pure ()


-- throws Exception, LicensingException
get :: (JavaObjectClass this_) => this_ -> String -> String -> IO (WorkFlowInterface.WorkFlowInterface)
get object_ a1 a2 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: WorkFlowEntity))) () a1 a2

get_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (WorkFlowInterface.WorkFlowInterface)
get_super object_ a1 a2 = (get_impl (javaCast object_ :: WorkFlowEntity)) a1 a2

get_impl :: WorkFlowEntity -> String -> String -> IO (WorkFlowInterface.WorkFlowInterface)
get_impl this name storeName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget this.mETHOD_GET) e)
            javaThrow (e)
            ) $ do
            keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keysAndValues (jget ((jio (WorkFlowData.getInstance))).nAME) name)
            Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
            hashMap <- (AbSqlBean.getRow_super this.base keysAndValues)
            pure ((javaCast (jio (DbWorkFlowFactory.getInstance_2 ((jio (DbWorkFlowFactory.getInstance))) (jget (this).abeClientInformation) hashMap)) :: WorkFlowInterface.WorkFlowInterface))


get_1 :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get_1 object_ a1 = jmethod object_ "get_1" (\() -> (get_1_impl (javaCast object_ :: WorkFlowEntity))) () a1

get_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get_1_super object_ a1 = (get_1_impl (javaCast object_ :: WorkFlowEntity)) a1

get_1_impl :: WorkFlowEntity -> String -> IO (BasicArrayList.BasicArrayList)
get_1_impl this storeName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget (this).mETHOD_GET) e)
            pure (javaNull)
            ) $ do
            workFlowsVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
            hashMapVector <- (AbSqlBean.getRows_super this.base keysAndValues)
            size <- (BasicArrayList.size hashMapVector)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                let workFlowHashMap = (javaCast (jio (BasicArrayList.get hashMapVector i)) :: HashMap.HashMap)
                when (workFlowHashMap /= javaNull) $ do
                    Control.Monad.void (BasicArrayList.add workFlowsVector (jio (DbWorkFlowFactory.getInstance_2 ((jio (DbWorkFlowFactory.getInstance))) (jget this.abeClientInformation) workFlowHashMap)))
            pure (workFlowsVector)


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: WorkFlowEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: WorkFlowEntity)) a1

update_impl :: WorkFlowEntity -> HashMap.HashMap -> IO (())
update_impl this updatedValues = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget this.mETHOD_UPDATE) e)
            ) $ do
            wherekeysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put wherekeysAndValues (jget ((jio (WorkFlowData.getInstance))).nAME) (javaCast (jio (HashMap.get updatedValues (jget ((jio (WorkFlowData.getInstance))).nAME))) :: String))
            Control.Monad.void (HashMap.put wherekeysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) (javaCast (jio (HashMap.get updatedValues (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))
            Control.Monad.void (AbSqlBean.updateWhere_super this.base wherekeysAndValues updatedValues)
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: WorkFlowEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: WorkFlowEntity))

createTableStatement_impl :: WorkFlowEntity -> IO (String)
createTableStatement_impl this = do
        workFlowData <- (WorkFlowData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (jget (workFlowData).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget ((jio (StoreFrontData.getInstance))).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (DynamicObjectData.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (workFlowData).dATA)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jio (EntryData.getInstance))).lASTMODIFIED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (jget (workFlowData).nAME)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: WorkFlowEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: WorkFlowEntity))

createTable_impl :: WorkFlowEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (WorkFlowEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: WorkFlowEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: WorkFlowEntity))

dropTable_impl :: WorkFlowEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


