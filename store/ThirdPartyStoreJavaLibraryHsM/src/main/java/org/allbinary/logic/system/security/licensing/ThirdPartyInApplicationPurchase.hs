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
-- package org.allbinary.logic.system.security.licensing
module ThirdPartyInApplicationPurchase where

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
import qualified LockableFeature -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ThirdPartyInApplicationPurchaseInterface

-- implements ThirdPartyInApplicationPurchaseInterface
data ThirdPartyInApplicationPurchase = ThirdPartyInApplicationPurchase
    { header_ :: JavaHeader
    }

instance JavaNull ThirdPartyInApplicationPurchase where
    javaNull = javaNullRecord "ThirdPartyInApplicationPurchase"

instance JavaEquals ThirdPartyInApplicationPurchase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThirdPartyInApplicationPurchase where
    (==) = jrecordEquals

instance JavaObjectClass ThirdPartyInApplicationPurchase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThirdPartyInApplicationPurchase
newRecord_ = do
    header_ <- newJavaHeader
    let this = ThirdPartyInApplicationPurchase header_
    jregisterLevel header_ this
    ThirdPartyInApplicationPurchaseInterface.registerInterface_ header_
    jregisterMethod header_ "isPurchased" (\() -> isPurchased_impl this)
    jregisterMethod header_ "onCreate" (\() -> onCreate_impl this)
    jregisterMethod header_ "onDestroy" (\() -> onDestroy_impl this)
    jregisterMethod header_ "onStart" (\() -> onStart_impl this)
    jregisterMethod header_ "onActivityResult" (\() -> onActivityResult_impl this)
    jregisterMethod header_ "onSaveInstanceState" (\() -> onSaveInstanceState_impl this)
    jregisterMethod header_ "onStop" (\() -> onStop_impl this)
    jregisterMethod header_ "requestPurchase" (\() -> requestPurchase_impl this)
    jregisterMethod header_ "requestReceipts" (\() -> requestReceipts_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    jregisterMethod header_ "requestProducts" (\() -> requestProducts_impl this)
    pure this

initFields_ :: ThirdPartyInApplicationPurchase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ThirdPartyInApplicationPurchase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThirdPartyInApplicationPurchase -> IO ()
init_ this = do
    initFields_ this


isPurchased :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased object_ a1 = jmethod object_ "isPurchased" (\() -> (isPurchased_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) () a1

isPurchased_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased_super object_ a1 = (isPurchased_impl (javaCast object_ :: ThirdPartyInApplicationPurchase)) a1

isPurchased_impl :: ThirdPartyInApplicationPurchase -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased_impl this lockableFeature = do
        pure (False)


onCreate :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
onCreate object_ a1 a2 = jmethod object_ "onCreate" (\() -> (onCreate_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) () (jtoObject a1) (jtoObject a2)

onCreate_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
onCreate_super object_ a1 a2 = (onCreate_impl (javaCast object_ :: ThirdPartyInApplicationPurchase)) (jtoObject a1) (jtoObject a2)

onCreate_impl :: ThirdPartyInApplicationPurchase -> JavaObject -> JavaObject -> IO (())
onCreate_impl this anyTypeObject_ stateObjectObject_ = do
        let anyType = jtoObject anyTypeObject_
        let stateObject = jtoObject stateObjectObject_
        pure ()


onDestroy :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy object_ = jmethod object_ "onDestroy" (\() -> (onDestroy_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

onDestroy_super :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy_super object_ = (onDestroy_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

onDestroy_impl :: ThirdPartyInApplicationPurchase -> IO (())
onDestroy_impl this = do
        pure ()


onStart :: (JavaObjectClass this_) => this_ -> IO (())
onStart object_ = jmethod object_ "onStart" (\() -> (onStart_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

onStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onStart_super object_ = (onStart_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

onStart_impl :: ThirdPartyInApplicationPurchase -> IO (())
onStart_impl this = do
        pure ()


onActivityResult :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Int -> Int -> o3 -> IO (())
onActivityResult object_ a1 a2 a3 = jmethod object_ "onActivityResult" (\() -> (onActivityResult_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) () a1 a2 (jtoObject a3)

onActivityResult_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Int -> Int -> o3 -> IO (())
onActivityResult_super object_ a1 a2 a3 = (onActivityResult_impl (javaCast object_ :: ThirdPartyInApplicationPurchase)) a1 a2 (jtoObject a3)

onActivityResult_impl :: ThirdPartyInApplicationPurchase -> Int -> Int -> JavaObject -> IO (())
onActivityResult_impl this requestCode resultCode dataObjectObject_ = do
        let dataObject = jtoObject dataObjectObject_
        pure ()


onSaveInstanceState :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSaveInstanceState object_ a1 = jmethod object_ "onSaveInstanceState" (\() -> (onSaveInstanceState_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) () (jtoObject a1)

onSaveInstanceState_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSaveInstanceState_super object_ a1 = (onSaveInstanceState_impl (javaCast object_ :: ThirdPartyInApplicationPurchase)) (jtoObject a1)

onSaveInstanceState_impl :: ThirdPartyInApplicationPurchase -> JavaObject -> IO (())
onSaveInstanceState_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


onStop :: (JavaObjectClass this_) => this_ -> IO (())
onStop object_ = jmethod object_ "onStop" (\() -> (onStop_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

onStop_super :: (JavaObjectClass this_) => this_ -> IO (())
onStop_super object_ = (onStop_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

onStop_impl :: ThirdPartyInApplicationPurchase -> IO (())
onStop_impl this = do
        pure ()


requestPurchase :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
requestPurchase object_ a1 = jmethod object_ "requestPurchase" (\() -> (requestPurchase_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) () a1

requestPurchase_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
requestPurchase_super object_ a1 = (requestPurchase_impl (javaCast object_ :: ThirdPartyInApplicationPurchase)) a1

requestPurchase_impl :: ThirdPartyInApplicationPurchase -> LockableFeature.LockableFeature -> IO (())
requestPurchase_impl this lockableFeature = do
        pure ()


requestReceipts :: (JavaObjectClass this_) => this_ -> IO (())
requestReceipts object_ = jmethod object_ "requestReceipts" (\() -> (requestReceipts_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

requestReceipts_super :: (JavaObjectClass this_) => this_ -> IO (())
requestReceipts_super object_ = (requestReceipts_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

requestReceipts_impl :: ThirdPartyInApplicationPurchase -> IO (())
requestReceipts_impl this = do
        pure ()


add :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) () a1

add_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: ThirdPartyInApplicationPurchase)) a1

add_impl :: ThirdPartyInApplicationPurchase -> LockableFeature.LockableFeature -> IO (())
add_impl this lockableFeature = do
        pure ()


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

getUserName_impl :: ThirdPartyInApplicationPurchase -> IO (String)
getUserName_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

isEnabled_impl :: ThirdPartyInApplicationPurchase -> IO (Bool)
isEnabled_impl this = do
        pure (False)


requestProducts :: (JavaObjectClass this_) => this_ -> IO (())
requestProducts object_ = jmethod object_ "requestProducts" (\() -> (requestProducts_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))) ()

requestProducts_super :: (JavaObjectClass this_) => this_ -> IO (())
requestProducts_super object_ = (requestProducts_impl (javaCast object_ :: ThirdPartyInApplicationPurchase))

requestProducts_impl :: ThirdPartyInApplicationPurchase -> IO (())
requestProducts_impl this = do
        pure ()


