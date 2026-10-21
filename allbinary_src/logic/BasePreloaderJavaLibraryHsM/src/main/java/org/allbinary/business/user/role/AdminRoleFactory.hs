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
module AdminRoleFactory where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data AdminRoleFactory = AdminRoleFactory
    { header_ :: JavaHeader
    , adminRoles :: IORef (BasicArrayList.BasicArrayList)
    , storeAdminRoles :: IORef (BasicArrayList.BasicArrayList)
    , storeManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , productManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , reviewManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , customerManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , workflowManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , orderManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , adjusterManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , shippingManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    , webManagementRoles :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AdminRoleFactory where
    javaNull = javaNullRecord "AdminRoleFactory"

instance JavaEquals AdminRoleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdminRoleFactory where
    (==) = jrecordEquals

instance JavaObjectClass AdminRoleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdminRoleFactory
newRecord_ = do
    header_ <- newJavaHeader
    adminRoles <- newIORef javaNull
    storeAdminRoles <- newIORef javaNull
    storeManagementRoles <- newIORef javaNull
    productManagementRoles <- newIORef javaNull
    reviewManagementRoles <- newIORef javaNull
    customerManagementRoles <- newIORef javaNull
    workflowManagementRoles <- newIORef javaNull
    orderManagementRoles <- newIORef javaNull
    adjusterManagementRoles <- newIORef javaNull
    shippingManagementRoles <- newIORef javaNull
    webManagementRoles <- newIORef javaNull
    let this = AdminRoleFactory header_ adminRoles storeAdminRoles storeManagementRoles productManagementRoles reviewManagementRoles customerManagementRoles workflowManagementRoles orderManagementRoles adjusterManagementRoles shippingManagementRoles webManagementRoles
    jregisterLevel header_ this
    jregisterMethod header_ "getProductManagementRoles" (\() -> getProductManagementRoles_impl this)
    jregisterMethod header_ "getAdminRoles" (\() -> getAdminRoles_impl this)
    jregisterMethod header_ "getStoreAdminRoles" (\() -> getStoreAdminRoles_impl this)
    jregisterMethod header_ "getStoreManagementRoles" (\() -> getStoreManagementRoles_impl this)
    jregisterMethod header_ "getReviewManagementRoles" (\() -> getReviewManagementRoles_impl this)
    jregisterMethod header_ "getCustomerManagementRoles" (\() -> getCustomerManagementRoles_impl this)
    jregisterMethod header_ "getWorkflowManagementRoles" (\() -> getWorkflowManagementRoles_impl this)
    jregisterMethod header_ "getWebManagementRoles" (\() -> getWebManagementRoles_impl this)
    jregisterMethod header_ "getShippingManagementRoles" (\() -> getShippingManagementRoles_impl this)
    jregisterMethod header_ "getAdjusterManagementRoles" (\() -> getAdjusterManagementRoles_impl this)
    jregisterMethod header_ "getOrderManagementRoles" (\() -> getOrderManagementRoles_impl this)
    pure this

initFields_ :: AdminRoleFactory -> IO ()
initFields_ this = do
    jset this.adminRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.storeAdminRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.storeManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.productManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.reviewManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.customerManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.workflowManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.orderManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.adjusterManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.shippingManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.webManagementRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (AdminRoleFactory)
getInstance = do
        pure (AdminRoleFactory.instance_)

new_ :: IO AdminRoleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdminRoleFactory -> IO ()
init_ this = do
        initFields_ this
        basicUserRoleFactory <- (BasicUserRoleFactory.getInstance)
        Control.Monad.void (BasicArrayList.add ((jget (this).adminRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeAdminRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeAdminRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).cUSTOMERMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).aDJUSTER))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).pRODUCTMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).rEVIEWER))
        Control.Monad.void (BasicArrayList.add ((jget (this).storeManagementRoles)) (jget (basicUserRoleFactory).sHIPPING))
        Control.Monad.void (BasicArrayList.add ((jget (this).productManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).productManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).productManagementRoles)) (jget (basicUserRoleFactory).pRODUCTMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).reviewManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).reviewManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).reviewManagementRoles)) (jget (basicUserRoleFactory).rEVIEWER))
        Control.Monad.void (BasicArrayList.add ((jget (this).customerManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).customerManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).customerManagementRoles)) (jget (basicUserRoleFactory).cUSTOMERMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).workflowManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).workflowManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).workflowManagementRoles)) (jget (basicUserRoleFactory).wORKFLOWEDITOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).orderManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).orderManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).adjusterManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).adjusterManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).adjusterManagementRoles)) (jget (basicUserRoleFactory).aDJUSTER))
        Control.Monad.void (BasicArrayList.add ((jget (this).shippingManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).shippingManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).shippingManagementRoles)) (jget (basicUserRoleFactory).sHIPPING))
        Control.Monad.void (BasicArrayList.add ((jget (this).webManagementRoles)) (jget (basicUserRoleFactory).aDMINISTRATOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).webManagementRoles)) (jget (basicUserRoleFactory).sTOREMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).webManagementRoles)) (jget (basicUserRoleFactory).wEBMANAGER))
        Control.Monad.void (BasicArrayList.add ((jget (this).webManagementRoles)) (jget (basicUserRoleFactory).wORKFLOWEDITOR))
        Control.Monad.void (BasicArrayList.add ((jget (this).webManagementRoles)) (jget (basicUserRoleFactory).vIEWEDITOR))
        pure ()


getProductManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProductManagementRoles object_ = jmethod object_ "getProductManagementRoles" (\() -> (getProductManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getProductManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProductManagementRoles_super object_ = (getProductManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getProductManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getProductManagementRoles_impl this = do
        pure ((jget (this).productManagementRoles))


getAdminRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdminRoles object_ = jmethod object_ "getAdminRoles" (\() -> (getAdminRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getAdminRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdminRoles_super object_ = (getAdminRoles_impl (javaCast object_ :: AdminRoleFactory))

getAdminRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getAdminRoles_impl this = do
        pure ((jget (this).adminRoles))


getStoreAdminRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreAdminRoles object_ = jmethod object_ "getStoreAdminRoles" (\() -> (getStoreAdminRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getStoreAdminRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreAdminRoles_super object_ = (getStoreAdminRoles_impl (javaCast object_ :: AdminRoleFactory))

getStoreAdminRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getStoreAdminRoles_impl this = do
        pure ((jget (this).storeAdminRoles))


getStoreManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreManagementRoles object_ = jmethod object_ "getStoreManagementRoles" (\() -> (getStoreManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getStoreManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStoreManagementRoles_super object_ = (getStoreManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getStoreManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getStoreManagementRoles_impl this = do
        pure ((jget (this).storeManagementRoles))


getReviewManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getReviewManagementRoles object_ = jmethod object_ "getReviewManagementRoles" (\() -> (getReviewManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getReviewManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getReviewManagementRoles_super object_ = (getReviewManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getReviewManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getReviewManagementRoles_impl this = do
        pure ((jget (this).reviewManagementRoles))


getCustomerManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCustomerManagementRoles object_ = jmethod object_ "getCustomerManagementRoles" (\() -> (getCustomerManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getCustomerManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCustomerManagementRoles_super object_ = (getCustomerManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getCustomerManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getCustomerManagementRoles_impl this = do
        pure ((jget (this).customerManagementRoles))


getWorkflowManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWorkflowManagementRoles object_ = jmethod object_ "getWorkflowManagementRoles" (\() -> (getWorkflowManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getWorkflowManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWorkflowManagementRoles_super object_ = (getWorkflowManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getWorkflowManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getWorkflowManagementRoles_impl this = do
        pure ((jget (this).workflowManagementRoles))


getWebManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWebManagementRoles object_ = jmethod object_ "getWebManagementRoles" (\() -> (getWebManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getWebManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWebManagementRoles_super object_ = (getWebManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getWebManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getWebManagementRoles_impl this = do
        pure ((jget (this).webManagementRoles))


getShippingManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getShippingManagementRoles object_ = jmethod object_ "getShippingManagementRoles" (\() -> (getShippingManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getShippingManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getShippingManagementRoles_super object_ = (getShippingManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getShippingManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getShippingManagementRoles_impl this = do
        pure ((jget (this).shippingManagementRoles))


getAdjusterManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdjusterManagementRoles object_ = jmethod object_ "getAdjusterManagementRoles" (\() -> (getAdjusterManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getAdjusterManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdjusterManagementRoles_super object_ = (getAdjusterManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getAdjusterManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getAdjusterManagementRoles_impl this = do
        pure ((jget (this).adjusterManagementRoles))


getOrderManagementRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOrderManagementRoles object_ = jmethod object_ "getOrderManagementRoles" (\() -> (getOrderManagementRoles_impl (javaCast object_ :: AdminRoleFactory))) ()

getOrderManagementRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOrderManagementRoles_super object_ = (getOrderManagementRoles_impl (javaCast object_ :: AdminRoleFactory))

getOrderManagementRoles_impl :: AdminRoleFactory -> IO (BasicArrayList.BasicArrayList)
getOrderManagementRoles_impl this = do
        pure ((jget (this).orderManagementRoles))


