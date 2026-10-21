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
module BillingAddressHelper (module BillingAddressHelper, module Table) where

import Table hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAddressForm, getAddressForm_super, getAddressForm_impl, drop, drop_super, drop_impl, create, create_super, create_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, insert, insert_super, insert_impl, update, update_super, update_impl, setToShippingAddress, setToShippingAddress_super, setToShippingAddress_impl, delete, delete_super, delete_impl, set, set_super, set_impl, logUtil, stringUtil, weblisketSession, request, userName, streetAddress, portion)
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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified Portion -- org.allbinary.business.installer.Portion
import qualified UserData -- org.allbinary.business.user.UserData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified BillingAddressesEntity -- org.allbinary.data.tables.user.address.billing.BillingAddressesEntity
import qualified BillingAddressesEntityFactory -- org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory
import qualified ShippingAddressesEntityFactory -- org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified WeblisketSessionData -- org.allbinary.logic.communication.http.request.session.WeblisketSessionData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlTableUtil -- org.allbinary.logic.communication.sql.AbSqlTableUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Table

data BillingAddressHelper = BillingAddressHelper
    { header_ :: JavaHeader
    , base :: Table.Table
    , logUtil :: IORef (LogUtil.LogUtil)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , userName :: IORef (String)
    , streetAddress :: IORef (StreetAddress.StreetAddress)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull BillingAddressHelper where
    javaNull = javaNullRecord "BillingAddressHelper"

instance JavaEquals BillingAddressHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BillingAddressHelper where
    (==) = jrecordEquals

instance JavaObjectClass BillingAddressHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BillingAddressHelper
newRecord_ = do
    base <- Table.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    stringUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    request <- newIORef javaNull
    userName <- newIORef ""
    streetAddress <- newIORef javaNull
    portion <- newIORef javaNull
    let this = BillingAddressHelper header_ base logUtil stringUtil weblisketSession request userName streetAddress portion
    jregisterLevel header_ this
    jregisterMethod header_ "getAddressForm" (\() -> getAddressForm_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setToShippingAddress" (\() -> setToShippingAddress_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: BillingAddressHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.request (javaNull)
    jset this.userName ("")
    jset this.streetAddress (javaNull)
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BillingAddressHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: BillingAddressHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        Table.init_ this.base
        initFields_ this
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        assignedValue <- (Portion.new_1 hashMap)
        jset (this).portion (assignedValue)
        Control.Monad.void (BillingAddressHelper.getAddressForm this)
        pure ()


getAddressForm :: (JavaObjectClass this_) => this_ -> IO (())
getAddressForm object_ = jmethod object_ "getAddressForm" (\() -> (getAddressForm_impl (javaCast object_ :: BillingAddressHelper))) ()

getAddressForm_super :: (JavaObjectClass this_) => this_ -> IO (())
getAddressForm_super object_ = (getAddressForm_impl (javaCast object_ :: BillingAddressHelper))

getAddressForm_impl :: BillingAddressHelper -> IO (())
getAddressForm_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (UserData.uSERNAME))
        jset (this).userName (assignedValue)
        when ((jget (this).userName) == javaNull) $ do
            assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (WeblisketSessionData.rEMOVABLEUSERNAME))
            jset (this).userName (assignedValue)
        assignedValue <- (StreetAddress.new_1 (jget (this).request))
        jset (this).streetAddress (assignedValue)
        pure ()


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: BillingAddressHelper))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: BillingAddressHelper))

drop_impl :: BillingAddressHelper -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop Admin table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            success <- (BillingAddressesEntity.drop ((jio (BillingAddressesEntity.new_1 (jget ((jget (this).stringUtil)).eMPTY_STRING)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this (jget ((jget (this).base.commonStrings)).dROP))
            pure (success)


create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: BillingAddressHelper))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: BillingAddressHelper))

create_impl :: BillingAddressHelper -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create user table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            success <- (BillingAddressesEntity.createTable ((jio (BillingAddressesEntity.new_1 (jget ((jget (this).stringUtil)).eMPTY_STRING)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "create()")
            pure (success)


restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: BillingAddressHelper))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: BillingAddressHelper))

restore_impl :: BillingAddressHelper -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            billingAddressesEntity <- (BillingAddressesEntity.new_1 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            result <- (AbSqlTableUtil.restoreTable ((jio (AbSqlTableUtil.getInstance))) billingAddressesEntity (jget (this).portion))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "restore()")
            pure (result)


backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: BillingAddressHelper))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: BillingAddressHelper))

backup_impl :: BillingAddressHelper -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            let success = "Backup Successful"
            result <- (AbSqlTableUtil.backupTable ((jio (AbSqlTableUtil.getInstance))) (jio (BillingAddressesEntity.new_1 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "backup()")
            pure (result)


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: BillingAddressHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: BillingAddressHelper))

insert_impl :: BillingAddressHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add Billing Address"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "add()" e)
            pure (error)
            ) $ do
            let success = "Successfully Added Billing Address"
            Control.Monad.void (BillingAddressesEntityFactory.add ((jio (BillingAddressesEntityFactory.getInstance ((jio (BillingAddressesEntityFactory.getInstance))) (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) (jget (this).streetAddress))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "add()")
            pure (success)


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BillingAddressHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: BillingAddressHelper))

update_impl :: BillingAddressHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed update of a User Billing Address Table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "Successfully Updated Billing Address"
            Control.Monad.void (BillingAddressesEntityFactory.update ((jio (BillingAddressesEntityFactory.getInstance ((jio (BillingAddressesEntityFactory.getInstance))) (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) (jget (this).streetAddress))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Successfull update of a user Billing Address table" this "update()")
            pure (success)


setToShippingAddress :: (JavaObjectClass this_) => this_ -> IO (String)
setToShippingAddress object_ = jmethod object_ "setToShippingAddress" (\() -> (setToShippingAddress_impl (javaCast object_ :: BillingAddressHelper))) ()

setToShippingAddress_super :: (JavaObjectClass this_) => this_ -> IO (String)
setToShippingAddress_super object_ = (setToShippingAddress_impl (javaCast object_ :: BillingAddressHelper))

setToShippingAddress_impl :: BillingAddressHelper -> IO (String)
setToShippingAddress_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            let error = "Failed to Set Billing address to Shipping Address"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "setToShippingAddress()" e)
            pure (error)
            ) $ do
            shippingAddressesEntityFactory <- (ShippingAddressesEntityFactory.getInstance)
            streetAddress <- (ShippingAddressesEntityFactory.getDefault ((jio (ShippingAddressesEntityFactory.getInstance shippingAddressesEntityFactory (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))))
            if (streetAddress /= javaNull) then do
                Control.Monad.void (ShippingAddressesEntityFactory.add ((jio (ShippingAddressesEntityFactory.getInstance shippingAddressesEntityFactory (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) streetAddress)
            else do
                javaReturn ("No Shipping Address")
            pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: BillingAddressHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: BillingAddressHelper))

delete_impl :: BillingAddressHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to remove Billing Address"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e)
            pure (error)
            ) $ do
            let success = "Successfully Removed Billing Address"
            Control.Monad.void (BillingAddressesEntityFactory.remove ((jio (BillingAddressesEntityFactory.getInstance ((jio (BillingAddressesEntityFactory.getInstance))) (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) (Prelude.fromIntegral ((jio (StreetAddress.getId ((jget (this).streetAddress))))) :: Int))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure (success)


set :: (JavaObjectClass this_) => this_ -> IO (String)
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: BillingAddressHelper))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (String)
set_super object_ = (set_impl (javaCast object_ :: BillingAddressHelper))

set_impl :: BillingAddressHelper -> IO (String)
set_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to set billing Address"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "set()" e)
            pure (error)
            ) $ do
            let success = "Successfully Set Billing Address"
            Control.Monad.void (BillingAddressesEntityFactory.setDefault ((jio (BillingAddressesEntityFactory.getInstance ((jio (BillingAddressesEntityFactory.getInstance))) (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) (jio (StreetAddress.getId ((jget (this).streetAddress)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "set()")
            pure (success)


