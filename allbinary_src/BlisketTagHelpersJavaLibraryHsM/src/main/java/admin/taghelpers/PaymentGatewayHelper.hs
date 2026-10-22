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
module PaymentGatewayHelper (module PaymentGatewayHelper, module BasicTable) where

import BasicTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, update, update_super, update_impl, delete, delete_super, delete_impl, drop, drop_super, drop_impl, create, create_super, create_impl, restore, restore_super, restore_impl, backup, backup_super, backup_impl, logUtil, weblisketSession, httpServletRequest, portion)
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
import qualified PaymentGatewayInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface
import qualified PaymentGatewayInterfaceFactory -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory
import qualified BasicPaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil
import qualified PaymentGatewayEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlTableUtil -- org.allbinary.logic.communication.sql.AbSqlTableUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicTable

data PaymentGatewayHelper = PaymentGatewayHelper
    { header_ :: JavaHeader
    , base :: BasicTable.BasicTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , httpServletRequest :: IORef (HttpServletRequest.HttpServletRequest)
    , portion :: IORef (Portion.Portion)
    }

instance JavaNull PaymentGatewayHelper where
    javaNull = javaNullRecord "PaymentGatewayHelper"

instance JavaEquals PaymentGatewayHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayHelper where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewayHelper
newRecord_ = do
    base <- BasicTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    httpServletRequest <- newIORef javaNull
    portion <- newIORef javaNull
    let this = PaymentGatewayHelper header_ base logUtil weblisketSession httpServletRequest portion
    jregisterLevel header_ this
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "restore" (\() -> restore_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    pure this

initFields_ :: PaymentGatewayHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.httpServletRequest (javaNull)
    jset this.portion (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO PaymentGatewayHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: PaymentGatewayHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        BasicTable.init_ this.base
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            assignedValue <- (WeblisketSession.new_2 hashMap pageContext)
            jset (this).weblisketSession (assignedValue)
            jset (this).httpServletRequest ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
            assignedValue <- (Portion.new_1 hashMap)
            jset (this).portion (assignedValue)
        pure ()


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: PaymentGatewayHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: PaymentGatewayHelper))

insert_impl :: PaymentGatewayHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "add()" e)
            pure (((((error ++ "<br>") ++ "Exception: ") ++ javaToString e) ++ "<br>"))
            ) $ do
            paymentGatewayInterface <- (PaymentGatewayInterfaceFactory.getInstance ((jio (PaymentGatewayInterfaceFactory.new_))) (jget (this).httpServletRequest))
            Control.Monad.void (PaymentGatewayInterface.setStoreName paymentGatewayInterface (jio (WeblisketSession.getStoreName ((jget (this).weblisketSession)))))
            Control.Monad.void (PaymentGatewayEntity.add ((jio (PaymentGatewayEntityFactory.getInstance))) paymentGatewayInterface)
            let success = "Successfully Added New Payment Gateway"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "insert()")
            pure ((success ++ "<br/>"))


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PaymentGatewayHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: PaymentGatewayHelper))

update_impl :: PaymentGatewayHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to update payment gateway information"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (((((error ++ "<br/>") ++ "Exception: ") ++ javaToString e) ++ "<br/>"))
            ) $ do
            paymentGatewayInterface <- (PaymentGatewayInterfaceFactory.getInstance ((jio (PaymentGatewayInterfaceFactory.new_))) (jget (this).httpServletRequest))
            Control.Monad.void (PaymentGatewayInterface.setStoreName paymentGatewayInterface (jio (WeblisketSession.getStoreName ((jget (this).weblisketSession)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Gateway Name: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayInterface.getName paymentGatewayInterface)))
                Control.Monad.void (StringMaker.append stringBuffer " HashMap=")
                Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayInterface.toString ((jio (PaymentGatewayInterface.toHashMap paymentGatewayInterface True))))))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "update()")
            Control.Monad.void (PaymentGatewayEntity.update ((jio (PaymentGatewayEntityFactory.getInstance))) paymentGatewayInterface)
            let success = "Successfully Updated Payment Gateway information"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "update()")
            pure ((success ++ "<br/>"))


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: PaymentGatewayHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: PaymentGatewayHelper))

delete_impl :: PaymentGatewayHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to remove payment gateway from table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "remove()" e)
            pure (((((error ++ "<br/>") ++ "Exception: ") ++ javaToString e) ++ "<br>"))
            ) $ do
            paymentGatewayInterface <- (PaymentGatewayInterfaceFactory.getInstance ((jio (PaymentGatewayInterfaceFactory.new_))) (jget (this).httpServletRequest))
            Control.Monad.void (PaymentGatewayInterface.setStoreName paymentGatewayInterface (jio (WeblisketSession.getStoreName ((jget (this).weblisketSession)))))
            storeName <- (PaymentGatewayInterface.getStoreName paymentGatewayInterface)
            gatewayName <- (PaymentGatewayInterface.getName paymentGatewayInterface)
            Control.Monad.void (PaymentGatewayEntity.remove ((jio (PaymentGatewayEntityFactory.getInstance))) storeName (jio (BasicPaymentTypeUtil.get ((jio (BasicPaymentTypeUtil.getInstance))) gatewayName)))
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Successfully Removed payment gateway where store name=")
            Control.Monad.void (StringMaker.append stringBuffer storeName)
            Control.Monad.void (StringMaker.append stringBuffer " and gateway name=")
            Control.Monad.void (StringMaker.append stringBuffer gatewayName)
            success <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure ((success ++ "<br/>"))


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: PaymentGatewayHelper))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: PaymentGatewayHelper))

drop_impl :: PaymentGatewayHelper -> IO (String)
drop_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to drop payment transaction result table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).dROP) e)
            pure (error)
            ) $ do
            success <- (PaymentGatewayEntity.dropTable ((jio (PaymentGatewayEntityFactory.getInstance))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this (jget ((jget (this).base.commonStrings)).dROP))
            pure (success)


create :: (JavaObjectClass this_) => this_ -> IO (String)
create object_ = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: PaymentGatewayHelper))) ()

create_super :: (JavaObjectClass this_) => this_ -> IO (String)
create_super object_ = (create_impl (javaCast object_ :: PaymentGatewayHelper))

create_impl :: PaymentGatewayHelper -> IO (String)
create_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to create payment transaction result table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "create()" e)
            pure (error)
            ) $ do
            success <- (PaymentGatewayEntity.createTable ((jio (PaymentGatewayEntityFactory.getInstance))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "create()")
            pure (success)


restore :: (JavaObjectClass this_) => this_ -> IO (String)
restore object_ = jmethod object_ "restore" (\() -> (restore_impl (javaCast object_ :: PaymentGatewayHelper))) ()

restore_super :: (JavaObjectClass this_) => this_ -> IO (String)
restore_super object_ = (restore_impl (javaCast object_ :: PaymentGatewayHelper))

restore_impl :: PaymentGatewayHelper -> IO (String)
restore_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to restore backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "restore()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.restoreTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (PaymentGatewayEntityFactory.getInstance))) (jget (this).portion))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "restore()")
            pure (result)


backup :: (JavaObjectClass this_) => this_ -> IO (String)
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: PaymentGatewayHelper))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (String)
backup_super object_ = (backup_impl (javaCast object_ :: PaymentGatewayHelper))

backup_impl :: PaymentGatewayHelper -> IO (String)
backup_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to make backup"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "backup()" e)
            pure (error)
            ) $ do
            let success = "Restore Successful"
            result <- (AbSqlTableUtil.backupTable ((jio (AbSqlTableUtil.getInstance))) (javaCast (jio (PaymentGatewayEntityFactory.getInstance))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "backup()")
            pure (result)


