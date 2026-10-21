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
-- package org.allbinary.business.user.role
module UserRoleFactory where

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
import qualified BasicUserRoleFactory -- same package or java.lang
import qualified UserRoleB -- same package or java.lang
import qualified UserRole -- same package or java.lang
import qualified UserFactory -- org.allbinary.business.user.modules.UserFactory
import qualified AdminUserFactory -- org.allbinary.business.user.modules.admin.AdminUserFactory
import qualified StoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory
import qualified CustomerStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory
import qualified OrderStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory
import qualified AdjustOrderStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory
import qualified ReviewOrderStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory
import qualified ShipOrderStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory
import qualified PaymentStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory
import qualified ProductStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory
import qualified WebStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory
import qualified ViewEditorWebStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory
import qualified WizardWebStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUserFactory
import qualified WorkflowEditorWebStoreAdminUserFactory -- org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory
import qualified SubscriberUserFactory -- org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory
import qualified WholesaleUserFactory -- org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory

data UserRoleFactory = UserRoleFactory
    { header_ :: JavaHeader
    , basicUserRoleFactory :: IORef (BasicUserRoleFactory.BasicUserRoleFactory)
    , iNSTALLER :: IORef (UserRole.UserRole)
    , aDMINISTRATOR :: IORef (UserRole.UserRole)
    , cUSTOMER :: IORef (UserRole.UserRole)
    , sUBSCRIBERCUSTOMER :: IORef (UserRole.UserRole)
    , wHOLESALECUSTOMER :: IORef (UserRole.UserRole)
    , sTOREMANAGER :: IORef (UserRole.UserRole)
    , pRODUCTMANAGER :: IORef (UserRole.UserRole)
    , cUSTOMERMANAGER :: IORef (UserRole.UserRole)
    , pAYMENTMANAGER :: IORef (UserRole.UserRole)
    , oRDERMANAGER :: IORef (UserRole.UserRole)
    , wEBMANAGER :: IORef (UserRole.UserRole)
    , rEVIEWER :: IORef (UserRole.UserRole)
    , sHIPPING :: IORef (UserRole.UserRole)
    , aDJUSTER :: IORef (UserRole.UserRole)
    , wORKFLOWEDITOR :: IORef (UserRole.UserRole)
    , wIZARD :: IORef (UserRole.UserRole)
    , vIEWEDITOR :: IORef (UserRole.UserRole)
    }

instance JavaNull UserRoleFactory where
    javaNull = javaNullRecord "UserRoleFactory"

instance JavaEquals UserRoleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserRoleFactory where
    (==) = jrecordEquals

instance JavaObjectClass UserRoleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserRoleFactory
newRecord_ = do
    header_ <- newJavaHeader
    basicUserRoleFactory <- newIORef javaNull
    iNSTALLER <- newIORef javaNull
    aDMINISTRATOR <- newIORef javaNull
    cUSTOMER <- newIORef javaNull
    sUBSCRIBERCUSTOMER <- newIORef javaNull
    wHOLESALECUSTOMER <- newIORef javaNull
    sTOREMANAGER <- newIORef javaNull
    pRODUCTMANAGER <- newIORef javaNull
    cUSTOMERMANAGER <- newIORef javaNull
    pAYMENTMANAGER <- newIORef javaNull
    oRDERMANAGER <- newIORef javaNull
    wEBMANAGER <- newIORef javaNull
    rEVIEWER <- newIORef javaNull
    sHIPPING <- newIORef javaNull
    aDJUSTER <- newIORef javaNull
    wORKFLOWEDITOR <- newIORef javaNull
    wIZARD <- newIORef javaNull
    vIEWEDITOR <- newIORef javaNull
    let this = UserRoleFactory header_ basicUserRoleFactory iNSTALLER aDMINISTRATOR cUSTOMER sUBSCRIBERCUSTOMER wHOLESALECUSTOMER sTOREMANAGER pRODUCTMANAGER cUSTOMERMANAGER pAYMENTMANAGER oRDERMANAGER wEBMANAGER rEVIEWER sHIPPING aDJUSTER wORKFLOWEDITOR wIZARD vIEWEDITOR
    jregisterLevel header_ this
    pure this

initFields_ :: UserRoleFactory -> IO ()
initFields_ this = do
    jset this.basicUserRoleFactory =<< (BasicUserRoleFactory.getInstance)
    jset this.iNSTALLER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).iNSTALLER) javaNull))
    jset this.aDMINISTRATOR =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).aDMINISTRATOR) (jio (AdminUserFactory.new_))))
    jset this.cUSTOMER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).cUSTOMER) (jio (UserFactory.new_))))
    jset this.sUBSCRIBERCUSTOMER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).sUBSCRIBERCUSTOMER) (jio (SubscriberUserFactory.new_))))
    jset this.wHOLESALECUSTOMER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).wHOLESALECUSTOMER) (jio (WholesaleUserFactory.new_))))
    jset this.sTOREMANAGER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).sTOREMANAGER) (jio (StoreAdminUserFactory.new_))))
    jset this.pRODUCTMANAGER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).pRODUCTMANAGER) (jio (ProductStoreAdminUserFactory.new_))))
    jset this.cUSTOMERMANAGER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).cUSTOMERMANAGER) (jio (CustomerStoreAdminUserFactory.new_))))
    jset this.pAYMENTMANAGER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).pAYMENTMANAGER) (jio (PaymentStoreAdminUserFactory.new_))))
    jset this.oRDERMANAGER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).oRDERMANAGER) (jio (OrderStoreAdminUserFactory.new_))))
    jset this.wEBMANAGER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).wEBMANAGER) (jio (WebStoreAdminUserFactory.new_))))
    jset this.rEVIEWER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).rEVIEWER) (jio (ReviewOrderStoreAdminUserFactory.new_))))
    jset this.sHIPPING =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).sHIPPING) (jio (ShipOrderStoreAdminUserFactory.new_))))
    jset this.aDJUSTER =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).aDJUSTER) (jio (AdjustOrderStoreAdminUserFactory.new_))))
    jset this.wORKFLOWEDITOR =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).wORKFLOWEDITOR) (jio (WorkflowEditorWebStoreAdminUserFactory.new_))))
    jset this.wIZARD =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).wIZARD) (jio (WizardWebStoreAdminUserFactory.new_))))
    jset this.vIEWEDITOR =<< (fmap (\value_ -> javaCast value_ :: UserRole.UserRole) (UserRoleB.new_2 (jget ((jget (this).basicUserRoleFactory)).vIEWEDITOR) (jio (ViewEditorWebStoreAdminUserFactory.new_))))
    pure ()

new_ :: IO UserRoleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserRoleFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (UserRoleFactory)
getInstance = do
        pure (UserRoleFactory.instance_)


