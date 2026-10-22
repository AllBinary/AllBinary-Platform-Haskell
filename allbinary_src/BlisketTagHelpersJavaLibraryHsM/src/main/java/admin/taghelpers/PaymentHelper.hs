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
module PaymentHelper (module PaymentHelper, module Table) where

import Table hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, insert, insert_super, insert_impl, select, select_super, select_impl, delete, delete_super, delete_impl, drop, drop_super, drop_impl, create, create_super, create_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, update, update_super, update_impl, logUtil, weblisketSession, request, value, portion)
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
import qualified PaymentFactory -- org.allbinary.business.user.commerce.money.payment.PaymentFactory
import qualified PaymentInterface -- org.allbinary.business.user.commerce.money.payment.PaymentInterface
import qualified PaymentEntity -- org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity
import qualified PaymentEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlTableUtil -- org.allbinary.logic.communication.sql.AbSqlTableUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified Table

data PaymentHelper = PaymentHelper
    { header_ :: JavaHeader
    , base :: Table.Table
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , value :: IORef (String)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull PaymentHelper where
    javaNull = javaNullRecord "PaymentHelper"

instance JavaEquals PaymentHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentHelper where
    (==) = jrecordEquals

instance JavaObjectClass PaymentHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentHelper
newRecord_ = do
    base <- Table.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    request <- newIORef javaNull
    value <- newIORef ""
    portion <- newIORef javaNull
    let this = PaymentHelper header_ base logUtil weblisketSession request value portion
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "select" (\() -> select_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: PaymentHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.request (javaNull)
    jset this.value ("")
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO PaymentHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: PaymentHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        Table.init_ this.base
        initFields_ this
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
        jset (this).weblisketSession (assignedValue)
        assignedValue <- (Portion.new_1 hashMap)
        jset (this).portion (assignedValue)
        Control.Monad.void (PaymentHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: PaymentHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: PaymentHelper))

getFormData_impl :: PaymentHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) "VALUE")
        jset (this).value (assignedValue)
        pure ()


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: PaymentHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: PaymentHelper))

insert_impl :: PaymentHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add Payment"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "addPayment()" e)
            pure (error)
            ) $ do
            let success = "Successfully Added Payment"
            paymentEntity <- (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance))))
            paymentInterface <- (PaymentFactory.getInstance (javaCast (jget (this).request)))
            Control.Monad.void (PaymentEntity.add paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))) paymentInterface)
            Control.Monad.void (PaymentEntity.setDefault paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))) (Prelude.fromIntegral ((jio (PaymentEntity.getLastId paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) :: Int))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "addPayment()")
            pure (success)


select :: (JavaObjectClass this_) => this_ -> IO (String)
select object_ = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: PaymentHelper))) ()

select_super :: (JavaObjectClass this_) => this_ -> IO (String)
select_super object_ = (select_impl (javaCast object_ :: PaymentHelper))

select_impl :: PaymentHelper -> IO (String)
select_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to select Payment"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "selectPayment()" e)
            pure (error)
            ) $ do
            let success = "Successfully Selected Payment"
            paymentEntity <- (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance))))
            Control.Monad.void (PaymentEntity.setDefault paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))) (Prelude.fromIntegral ((jget (this).value)) :: Int))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "selectPayment()")
            pure (success)


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: PaymentHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: PaymentHelper))

delete_impl :: PaymentHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to remove Payment"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "removePayment()" e)
            pure (error)
            ) $ do
            let success = "Successfully Removed Payment"
            paymentEntity <- (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance))))
            Control.Monad.void (PaymentEntity.remove paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))) (Prelude.fromIntegral ((jget (this).value)) :: Int))
            paymentInterface <- (PaymentEntity.getDefault paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))))
            when (paymentInterface == javaNull) $ do
                Control.Monad.void (PaymentEntity.setDefault paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession)))) (Prelude.fromIntegral ((jio (PaymentEntity.getLastId paymentEntity (jio (WeblisketSession.getUserName ((jget (this).weblisketSession))))))) :: Int))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "removePayment()")
            pure (success)


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: PaymentHelper))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: PaymentHelper))

drop_impl :: PaymentHelper -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop Admin table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            paymentEntity <- (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance))))
            success <- (PaymentEntity.dropTable paymentEntity)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this (jget ((jget (this).base.commonStrings)).dROP))
            pure (success)


create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: PaymentHelper))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: PaymentHelper))

create_impl :: PaymentHelper -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create user table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            paymentEntity <- (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance))))
            success <- (PaymentEntity.createTable paymentEntity)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "create()")
            pure (success)


restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: PaymentHelper))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: PaymentHelper))

restore_impl :: PaymentHelper -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.restoreTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance)))))) (jget this.portion))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "restore()")
            pure (result)


backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: PaymentHelper))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: PaymentHelper))

backup_impl :: PaymentHelper -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            let success = "Backup Successful"
            result <- (AbSqlTableUtil.backupTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (PaymentEntityFactory.getPaymentEntityInstance ((jio (PaymentEntityFactory.getInstance)))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "backup()")
            pure (result)


-- throws LicensingException
update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PaymentHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: PaymentHelper))

update_impl :: PaymentHelper -> IO (String)
update_impl this = do
        pure ((jget ((jget this.base.commonStrings)).nOT_IMPLEMENTED))


