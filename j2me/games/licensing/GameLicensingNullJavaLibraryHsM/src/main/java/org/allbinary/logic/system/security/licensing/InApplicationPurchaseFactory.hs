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
module InApplicationPurchaseFactory where

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
import qualified LockableFeature -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data InApplicationPurchaseFactory = InApplicationPurchaseFactory
    { header_ :: JavaHeader
    }

instance JavaNull InApplicationPurchaseFactory where
    javaNull = javaNullRecord "InApplicationPurchaseFactory"

instance JavaEquals InApplicationPurchaseFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InApplicationPurchaseFactory where
    (==) = jrecordEquals

instance JavaObjectClass InApplicationPurchaseFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InApplicationPurchaseFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = InApplicationPurchaseFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "onCreate" (\() -> onCreate_impl this)
    jregisterMethod header_ "onStart" (\() -> onStart_impl this)
    jregisterMethod header_ "onResult" (\() -> onResult_impl this)
    jregisterMethod header_ "onSaveState" (\() -> onSaveState_impl this)
    jregisterMethod header_ "onStop" (\() -> onStop_impl this)
    jregisterMethod header_ "onDestroy" (\() -> onDestroy_impl this)
    jregisterMethod header_ "purchase" (\() -> purchase_impl this)
    jregisterMethod header_ "isPurchased" (\() -> isPurchased_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    pure this

initFields_ :: InApplicationPurchaseFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (InApplicationPurchaseFactory)
getInstance = do
        pure (InApplicationPurchaseFactory.instance_)

new_ :: IO InApplicationPurchaseFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InApplicationPurchaseFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InApplicationPurchaseFactory))) () (jtoObject a1) (jtoObject a2)

init_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: InApplicationPurchaseFactory)) (jtoObject a1) (jtoObject a2)

init_impl :: InApplicationPurchaseFactory -> JavaObject -> JavaObject -> IO (())
init_impl this anyTypeObject_ stateObjectObject_ = do
        let anyType = jtoObject anyTypeObject_
        let stateObject = jtoObject stateObjectObject_
        pure ()


onCreate :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
onCreate object_ a1 a2 = jmethod object_ "onCreate" (\() -> (onCreate_impl (javaCast object_ :: InApplicationPurchaseFactory))) () (jtoObject a1) (jtoObject a2)

onCreate_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
onCreate_super object_ a1 a2 = (onCreate_impl (javaCast object_ :: InApplicationPurchaseFactory)) (jtoObject a1) (jtoObject a2)

onCreate_impl :: InApplicationPurchaseFactory -> JavaObject -> JavaObject -> IO (())
onCreate_impl this anyTypeObject_ stateObjectObject_ = do
        let anyType = jtoObject anyTypeObject_
        let stateObject = jtoObject stateObjectObject_
        pure ()


onStart :: (JavaObjectClass this_) => this_ -> IO (())
onStart object_ = jmethod object_ "onStart" (\() -> (onStart_impl (javaCast object_ :: InApplicationPurchaseFactory))) ()

onStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onStart_super object_ = (onStart_impl (javaCast object_ :: InApplicationPurchaseFactory))

onStart_impl :: InApplicationPurchaseFactory -> IO (())
onStart_impl this = do
        pure ()


onResult :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Int -> Int -> o3 -> IO (())
onResult object_ a1 a2 a3 = jmethod object_ "onResult" (\() -> (onResult_impl (javaCast object_ :: InApplicationPurchaseFactory))) () a1 a2 (jtoObject a3)

onResult_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Int -> Int -> o3 -> IO (())
onResult_super object_ a1 a2 a3 = (onResult_impl (javaCast object_ :: InApplicationPurchaseFactory)) a1 a2 (jtoObject a3)

onResult_impl :: InApplicationPurchaseFactory -> Int -> Int -> JavaObject -> IO (())
onResult_impl this requestCode resultCode data_Object_ = do
        let data_ = jtoObject data_Object_
        pure ()


onSaveState :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSaveState object_ a1 = jmethod object_ "onSaveState" (\() -> (onSaveState_impl (javaCast object_ :: InApplicationPurchaseFactory))) () (jtoObject a1)

onSaveState_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSaveState_super object_ a1 = (onSaveState_impl (javaCast object_ :: InApplicationPurchaseFactory)) (jtoObject a1)

onSaveState_impl :: InApplicationPurchaseFactory -> JavaObject -> IO (())
onSaveState_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


onStop :: (JavaObjectClass this_) => this_ -> IO (())
onStop object_ = jmethod object_ "onStop" (\() -> (onStop_impl (javaCast object_ :: InApplicationPurchaseFactory))) ()

onStop_super :: (JavaObjectClass this_) => this_ -> IO (())
onStop_super object_ = (onStop_impl (javaCast object_ :: InApplicationPurchaseFactory))

onStop_impl :: InApplicationPurchaseFactory -> IO (())
onStop_impl this = do
        pure ()


onDestroy :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy object_ = jmethod object_ "onDestroy" (\() -> (onDestroy_impl (javaCast object_ :: InApplicationPurchaseFactory))) ()

onDestroy_super :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy_super object_ = (onDestroy_impl (javaCast object_ :: InApplicationPurchaseFactory))

onDestroy_impl :: InApplicationPurchaseFactory -> IO (())
onDestroy_impl this = do
        pure ()


purchase :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
purchase object_ a1 = jmethod object_ "purchase" (\() -> (purchase_impl (javaCast object_ :: InApplicationPurchaseFactory))) () a1

purchase_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
purchase_super object_ a1 = (purchase_impl (javaCast object_ :: InApplicationPurchaseFactory)) a1

purchase_impl :: InApplicationPurchaseFactory -> LockableFeature.LockableFeature -> IO (())
purchase_impl this lockableFeature = do
        pure ()


isPurchased :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased object_ a1 = jmethod object_ "isPurchased" (\() -> (isPurchased_impl (javaCast object_ :: InApplicationPurchaseFactory))) () a1

isPurchased_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased_super object_ a1 = (isPurchased_impl (javaCast object_ :: InApplicationPurchaseFactory)) a1

isPurchased_impl :: InApplicationPurchaseFactory -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased_impl this lockableFeature = do
        pure (False)


add :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InApplicationPurchaseFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: InApplicationPurchaseFactory)) a1

add_impl :: InApplicationPurchaseFactory -> LockableFeature.LockableFeature -> IO (())
add_impl this lockableFeature = do
        pure ()


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: InApplicationPurchaseFactory))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: InApplicationPurchaseFactory))

getUserName_impl :: InApplicationPurchaseFactory -> IO (String)
getUserName_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: InApplicationPurchaseFactory))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: InApplicationPurchaseFactory))

isEnabled_impl :: InApplicationPurchaseFactory -> IO (Bool)
isEnabled_impl this = do
        pure (False)


