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
module BasicUserRoleFactory where

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
import qualified BasicUserRole -- same package or java.lang

data BasicUserRoleFactory = BasicUserRoleFactory
    { header_ :: JavaHeader
    , iNACTIVITYTIMEOUT :: IORef (Int64)
    , cUSTOMERTIMEOUT :: IORef (Int64)
    , cUSTOMERMAXSESSIONTIME :: IORef (Int64)
    , mAXSESSIONTIME :: IORef (Int64)
    , iNSTALLER :: IORef (BasicUserRole.BasicUserRole)
    , aDMINISTRATOR :: IORef (BasicUserRole.BasicUserRole)
    , cUSTOMER :: IORef (BasicUserRole.BasicUserRole)
    , sUBSCRIBERCUSTOMER :: IORef (BasicUserRole.BasicUserRole)
    , wHOLESALECUSTOMER :: IORef (BasicUserRole.BasicUserRole)
    , sTOREMANAGER :: IORef (BasicUserRole.BasicUserRole)
    , pRODUCTMANAGER :: IORef (BasicUserRole.BasicUserRole)
    , cUSTOMERMANAGER :: IORef (BasicUserRole.BasicUserRole)
    , pAYMENTMANAGER :: IORef (BasicUserRole.BasicUserRole)
    , oRDERMANAGER :: IORef (BasicUserRole.BasicUserRole)
    , wEBMANAGER :: IORef (BasicUserRole.BasicUserRole)
    , rEVIEWER :: IORef (BasicUserRole.BasicUserRole)
    , sHIPPING :: IORef (BasicUserRole.BasicUserRole)
    , aDJUSTER :: IORef (BasicUserRole.BasicUserRole)
    , wORKFLOWEDITOR :: IORef (BasicUserRole.BasicUserRole)
    , wIZARD :: IORef (BasicUserRole.BasicUserRole)
    , vIEWEDITOR :: IORef (BasicUserRole.BasicUserRole)
    }

instance JavaNull BasicUserRoleFactory where
    javaNull = javaNullRecord "BasicUserRoleFactory"

instance JavaEquals BasicUserRoleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicUserRoleFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicUserRoleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicUserRoleFactory
newRecord_ = do
    header_ <- newJavaHeader
    iNACTIVITYTIMEOUT <- newIORef 0
    cUSTOMERTIMEOUT <- newIORef 0
    cUSTOMERMAXSESSIONTIME <- newIORef 0
    mAXSESSIONTIME <- newIORef 0
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
    let this = BasicUserRoleFactory header_ iNACTIVITYTIMEOUT cUSTOMERTIMEOUT cUSTOMERMAXSESSIONTIME mAXSESSIONTIME iNSTALLER aDMINISTRATOR cUSTOMER sUBSCRIBERCUSTOMER wHOLESALECUSTOMER sTOREMANAGER pRODUCTMANAGER cUSTOMERMANAGER pAYMENTMANAGER oRDERMANAGER wEBMANAGER rEVIEWER sHIPPING aDJUSTER wORKFLOWEDITOR wIZARD vIEWEDITOR
    jregisterLevel header_ this
    pure this

initFields_ :: BasicUserRoleFactory -> IO ()
initFields_ this = do
    jset this.iNACTIVITYTIMEOUT (360000000)
    jset this.cUSTOMERTIMEOUT (360000000)
    jset this.cUSTOMERMAXSESSIONTIME (360000000)
    jset this.mAXSESSIONTIME (360000000)
    jset this.iNSTALLER =<< (BasicUserRole.new_4 "Installer" 16 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.aDMINISTRATOR =<< (BasicUserRole.new_4 "Administrator" 0 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.cUSTOMER =<< (BasicUserRole.new_5 "CustomerUser" "Customer User" 1 (jget (this).cUSTOMERTIMEOUT) (jget (this).cUSTOMERMAXSESSIONTIME))
    jset this.sUBSCRIBERCUSTOMER =<< (BasicUserRole.new_5 "SubscriberUser" "Subscriber User" 2 (jget (this).cUSTOMERTIMEOUT) (jget (this).cUSTOMERMAXSESSIONTIME))
    jset this.wHOLESALECUSTOMER =<< (BasicUserRole.new_5 "WholesaleUser" "Wholesale User" 3 (jget (this).cUSTOMERTIMEOUT) (jget (this).cUSTOMERMAXSESSIONTIME))
    jset this.sTOREMANAGER =<< (BasicUserRole.new_5 "StoreManager" "Store Manager" 4 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.pRODUCTMANAGER =<< (BasicUserRole.new_5 "ProductManager" "Product Manager" 5 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.cUSTOMERMANAGER =<< (BasicUserRole.new_5 "UserManager" "User Manager" 6 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.pAYMENTMANAGER =<< (BasicUserRole.new_5 "PaymentManager" "Payment Manager" 7 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.oRDERMANAGER =<< (BasicUserRole.new_5 "OrderManager" "Order Manager" 8 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.wEBMANAGER =<< (BasicUserRole.new_5 "WebManager" "Web Manager" 9 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.rEVIEWER =<< (BasicUserRole.new_4 "Reviewer" 10 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.sHIPPING =<< (BasicUserRole.new_4 "Shipping" 11 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.aDJUSTER =<< (BasicUserRole.new_4 "Adjuster" 12 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.wORKFLOWEDITOR =<< (BasicUserRole.new_5 "WorkFlowEditor" "WorkFlow Editor" 13 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.wIZARD =<< (BasicUserRole.new_5 "WizardUser" "Wizard User" 14 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    jset this.vIEWEDITOR =<< (BasicUserRole.new_5 "ViewEditor" "View Editor" 15 (jget (this).mAXSESSIONTIME) (jget (this).iNACTIVITYTIMEOUT))
    pure ()

new_ :: IO BasicUserRoleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicUserRoleFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicUserRoleFactory)
getInstance = do
        pure (BasicUserRoleFactory.instance_)


