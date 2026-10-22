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
module CustomItemsHelper (module CustomItemsHelper, module BasicTable) where

import BasicTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, create, create_super, create_impl, drop, drop_super, drop_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, logUtil, portion)
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
import qualified CustomItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlTableUtil -- org.allbinary.logic.communication.sql.AbSqlTableUtil
import qualified BasicTable

data CustomItemsHelper = CustomItemsHelper
    { header_ :: JavaHeader
    , base :: BasicTable.BasicTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull CustomItemsHelper where
    javaNull = javaNullRecord "CustomItemsHelper"

instance JavaEquals CustomItemsHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomItemsHelper where
    (==) = jrecordEquals

instance JavaObjectClass CustomItemsHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomItemsHelper
newRecord_ = do
    base <- BasicTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    portion <- newIORef javaNull
    let this = CustomItemsHelper header_ base logUtil portion
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    pure this

initFields_ :: CustomItemsHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO CustomItemsHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: CustomItemsHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        BasicTable.init_ this.base
        initFields_ this
        assignedValue <- (Portion.new_1 hashMap)
        jset (this).portion (assignedValue)
        pure ()


create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: CustomItemsHelper))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: CustomItemsHelper))

create_impl :: CustomItemsHelper -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            success <- (CustomItemsEntity.createTable ((jio (CustomItemsEntityFactory.getCustomItemsEntityInstance ((jio (CustomItemsEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "create()")
            pure (success)


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: CustomItemsHelper))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: CustomItemsHelper))

drop_impl :: CustomItemsHelper -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop pricing tables"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            success <- (CustomItemsEntity.dropTable ((jio (CustomItemsEntityFactory.getCustomItemsEntityInstance ((jio (CustomItemsEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this (jget ((jget (this).base.commonStrings)).dROP))
            pure (success)


restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: CustomItemsHelper))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: CustomItemsHelper))

restore_impl :: CustomItemsHelper -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.restoreTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (CustomItemsEntityFactory.getCustomItemsEntityInstance ((jio (CustomItemsEntityFactory.getInstance)))))) (jget (this).portion))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "restore()")
            pure (result)


backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: CustomItemsHelper))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: CustomItemsHelper))

backup_impl :: CustomItemsHelper -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            let success = "Backup Successful"
            result <- (AbSqlTableUtil.backupTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (CustomItemsEntityFactory.getCustomItemsEntityInstance ((jio (CustomItemsEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "backup()")
            pure (result)


