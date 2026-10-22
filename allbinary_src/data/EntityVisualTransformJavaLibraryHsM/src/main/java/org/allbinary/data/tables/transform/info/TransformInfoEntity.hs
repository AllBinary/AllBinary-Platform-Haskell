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
-- package org.allbinary.data.tables.transform.info
module TransformInfoEntity (module TransformInfoEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, get, get_super, get_impl, getObjectConfigs, getObjectConfigs_super, getObjectConfigs_impl, getNames, getNames_super, getNames_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, update, update_super, update_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName, abeClientInformation, transformInfoFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoObjectConfigGeneratorFactoryInterface)
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
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified Encoder -- org.allbinary.logic.control.crypt.Encoder
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoFactoryInterface -- org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfigAndManipulatorFactoryBase -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase
import qualified TransformInfoObjectConfigGeneratorFactoryInterface -- org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface
import qualified TransformInfoEntityInterface

-- implements TransformInfoEntityInterface
data TransformInfoEntity = TransformInfoEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , transformInfoFactoryInterface :: IORef (TransformInfoFactoryInterface.TransformInfoFactoryInterface)
    , transformInfoObjectConfigAndManipulatorFactoryInterface :: IORef (TransformInfoObjectConfigAndManipulatorFactoryBase.TransformInfoObjectConfigAndManipulatorFactoryBase)
    , transformInfoObjectConfigGeneratorFactoryInterface :: IORef (TransformInfoObjectConfigGeneratorFactoryInterface.TransformInfoObjectConfigGeneratorFactoryInterface)
    }

instance JavaNull TransformInfoEntity where
    javaNull = javaNullRecord "TransformInfoEntity"

instance JavaEquals TransformInfoEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoEntity where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    abeClientInformation <- newIORef javaNull
    transformInfoFactoryInterface <- newIORef javaNull
    transformInfoObjectConfigAndManipulatorFactoryInterface <- newIORef javaNull
    transformInfoObjectConfigGeneratorFactoryInterface <- newIORef javaNull
    let this = TransformInfoEntity header_ base logUtil tableName abeClientInformation transformInfoFactoryInterface transformInfoObjectConfigAndManipulatorFactoryInterface transformInfoObjectConfigGeneratorFactoryInterface
    jregisterLevel header_ this
    TransformInfoEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getObjectConfigs" (\() -> getObjectConfigs_impl this)
    jregisterMethod header_ "getNames" (\() -> getNames_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: TransformInfoEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("transforminfo")
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.transformInfoFactoryInterface (javaNull)
    jset this.transformInfoObjectConfigAndManipulatorFactoryInterface (javaNull)
    jset this.transformInfoObjectConfigGeneratorFactoryInterface (javaNull)
    pure ()

new_3 :: TransformInfoObjectConfigGeneratorFactoryInterface.TransformInfoObjectConfigGeneratorFactoryInterface -> TransformInfoObjectConfigAndManipulatorFactoryBase.TransformInfoObjectConfigAndManipulatorFactoryBase -> TransformInfoFactoryInterface.TransformInfoFactoryInterface -> IO TransformInfoEntity
new_3 transformInfoObjectConfigGeneratorFactoryInterface transformInfoObjectConfigAndManipulatorFactoryInterface transformInfoFactoryInterface = do
    this <- newRecord_
    init_3 this transformInfoObjectConfigGeneratorFactoryInterface transformInfoObjectConfigAndManipulatorFactoryInterface transformInfoFactoryInterface
    pure this

init_3 :: TransformInfoEntity -> TransformInfoObjectConfigGeneratorFactoryInterface.TransformInfoObjectConfigGeneratorFactoryInterface -> TransformInfoObjectConfigAndManipulatorFactoryBase.TransformInfoObjectConfigAndManipulatorFactoryBase -> TransformInfoFactoryInterface.TransformInfoFactoryInterface -> IO ()
init_3 this transformInfoObjectConfigGeneratorFactoryInterface transformInfoObjectConfigAndManipulatorFactoryInterface transformInfoFactoryInterface = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        jset (this).transformInfoObjectConfigGeneratorFactoryInterface (transformInfoObjectConfigGeneratorFactoryInterface)
        jset (this).transformInfoObjectConfigAndManipulatorFactoryInterface (transformInfoObjectConfigAndManipulatorFactoryInterface)
        jset (this).transformInfoFactoryInterface (transformInfoFactoryInterface)
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: TransformInfoEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: TransformInfoEntity)) a1

insert_impl :: TransformInfoEntity -> BasicArrayList.BasicArrayList -> IO (())
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
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: TransformInfoEntity))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: TransformInfoEntity)) a1

delete_impl :: TransformInfoEntity -> String -> IO (())
delete_impl this value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete) e)
            ) $ do
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base (jget ((jio (TransformInfoData.getInstance))).nAME) value)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this (jget ((jget (this).base.base.base.base.base.commonStrings)).delete))
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
get object_ a1 a2 a3 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: TransformInfoEntity))) () a1 a2 a3

get_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
get_super object_ a1 a2 a3 = (get_impl (javaCast object_ :: TransformInfoEntity)) a1 a2 a3

get_impl :: TransformInfoEntity -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
get_impl this name propertiesHashMap pageContext = do
    javaCatchReturn $ do
        transformInfoData <- (TransformInfoData.getInstance)
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put keysAndValues (jget (transformInfoData).nAME) name)
        hashMap <- (AbSqlBean.getRow_super this.base keysAndValues)
        if (hashMap /= javaNull) then do
            anyType <- (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIG))
            when (anyType /= javaNull) $ do
                let string = (javaCast anyType :: String)
                Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).oBJECTCONFIG) (jio (jnewString (jio (Encoder.decode string)))))
            objectData <- (HashMap.get hashMap (jget (transformInfoData).dATA))
            when (objectData /= javaNull) $ do
                let string = (javaCast objectData :: String)
                Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).dATA) (jio (jnewString (jio (Encoder.decode string)))))
            javaReturn =<< (TransformInfoFactoryInterface.getInstance ((jget (this).transformInfoFactoryInterface)) hashMap propertiesHashMap pageContext)
        else do
            javaReturn (javaNull)


-- throws Exception
getObjectConfigs :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getObjectConfigs object_ a1 = jmethod object_ "getObjectConfigs" (\() -> (getObjectConfigs_impl (javaCast object_ :: TransformInfoEntity))) () a1

getObjectConfigs_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getObjectConfigs_super object_ a1 = (getObjectConfigs_impl (javaCast object_ :: TransformInfoEntity)) a1

getObjectConfigs_impl :: TransformInfoEntity -> String -> IO (BasicArrayList.BasicArrayList)
getObjectConfigs_impl this storeName = do
        objectConfigVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        objectConfigColumnVector <- (AbSqlBean.getColumnWhere this (jget ((jio (TransformInfoData.getInstance))).oBJECTCONFIG) (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
        size <- (BasicArrayList.size objectConfigColumnVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            objectConfigString <- newIORef ((javaCast (jio (BasicArrayList.get objectConfigColumnVector i)) :: String))
            assignedValue <- (jnewString (jio (Encoder.decode (jget objectConfigString))))
            jset objectConfigString (assignedValue)
            Control.Monad.void (BasicArrayList.add objectConfigVector (jio (TransformInfoObjectConfigAndManipulatorFactoryBase.getInstance ((jget (this).transformInfoObjectConfigAndManipulatorFactoryInterface)) (jget (this).abeClientInformation) (javaCast this :: TransformInfoInterface.TransformInfoInterface) (jio (DomDocumentHelper.create_1 (jget objectConfigString))))))
        pure (objectConfigVector)


-- throws Exception
getNames :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getNames object_ a1 = jmethod object_ "getNames" (\() -> (getNames_impl (javaCast object_ :: TransformInfoEntity))) () a1

getNames_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getNames_super object_ a1 = (getNames_impl (javaCast object_ :: TransformInfoEntity)) a1

getNames_impl :: TransformInfoEntity -> String -> IO (BasicArrayList.BasicArrayList)
getNames_impl this storeName = do
        viewNameVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        columnVector <- (AbSqlBean.getColumnWhere this (jget ((jio (TransformInfoData.getInstance))).nAME) (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
        size <- (BasicArrayList.size columnVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let viewNameString = (javaCast (jio (BasicArrayList.get columnVector i)) :: String)
            Control.Monad.void (BasicArrayList.add viewNameVector viewNameString)
        pure (viewNameVector)


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: TransformInfoEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: TransformInfoEntity))

createTableStatement_impl :: TransformInfoEntity -> IO (String)
createTableStatement_impl this = do
        transformInfoData <- (TransformInfoData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (StoreFrontData.getInstance))).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).oBJECTFILENAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).oBJECT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).oBJECTCONFIGFILENAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).oBJECTCONFIG))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).tEMPLATEFILENAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).tEMPLATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).dATAFILENAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).dATA))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).lASTMODIFIED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).tIMECREATED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY))
        Control.Monad.void (StringMaker.append stringBuffer (jget (transformInfoData).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: TransformInfoEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: TransformInfoEntity))

createTable_impl :: TransformInfoEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (TransformInfoEntity.createTableStatement this)))


update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TransformInfoEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: TransformInfoEntity)) a1

update_impl :: TransformInfoEntity -> HashMap.HashMap -> IO (())
update_impl this updatedValues = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (jget ((jio (TransformInfoData.getInstance))).nAME) (javaCast (jio (HashMap.get updatedValues (jget ((jio (TransformInfoData.getInstance))).nAME))) :: String) updatedValues)
        pure ()


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: TransformInfoEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: TransformInfoEntity))

dropTable_impl :: TransformInfoEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


