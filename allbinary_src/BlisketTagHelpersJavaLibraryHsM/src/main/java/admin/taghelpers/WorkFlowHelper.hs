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
-- package admin.taghelpers
module WorkFlowHelper (module WorkFlowHelper, module BasicTable) where

import BasicTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, drop, drop_super, drop_impl, create, create_super, create_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, logUtil, hashMap, pageContext, portion)
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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified Portion -- org.allbinary.business.installer.Portion
import qualified WorkFlowEntityFactory -- org.allbinary.data.tables.workflow.WorkFlowEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlTableUtil -- org.allbinary.logic.communication.sql.AbSqlTableUtil
import qualified BasicTable

data WorkFlowHelper = WorkFlowHelper
    { header_ :: JavaHeader
    , base :: BasicTable.BasicTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , hashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull WorkFlowHelper where
    javaNull = javaNullRecord "WorkFlowHelper"

instance JavaEquals WorkFlowHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowHelper where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WorkFlowHelper
newRecord_ = do
    base <- BasicTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    hashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    portion <- newIORef javaNull
    let this = WorkFlowHelper header_ base logUtil hashMap pageContext portion
    jregisterLevel header_ this
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    pure this

initFields_ :: WorkFlowHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hashMap (javaNull)
    jset this.pageContext (javaNull)
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO WorkFlowHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: WorkFlowHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        BasicTable.init_ this.base
        initFields_ this
        jset (this).hashMap (hashMap)
        jset (this).pageContext (pageContext)
        assignedValue <- (Portion.new_1 hashMap)
        jset (this).portion (assignedValue)
        pure ()


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: WorkFlowHelper))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: WorkFlowHelper))

drop_impl :: WorkFlowHelper -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop view info table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            (WorkFlowEntity.dropTable ((jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))))


create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: WorkFlowHelper))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: WorkFlowHelper))

create_impl :: WorkFlowHelper -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create workflow table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            (WorkFlowEntity.createTable ((jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))))


restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: WorkFlowHelper))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: WorkFlowHelper))

restore_impl :: WorkFlowHelper -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.restoreTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))) (jget (this).portion))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "restore()")
            pure (result)


backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: WorkFlowHelper))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: WorkFlowHelper))

backup_impl :: WorkFlowHelper -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.backupTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "backup()")
            pure (result)


