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
module ThirdPartyInApplicationPurchaseInterface where

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

-- Java interface: the classes that implement it have these functions
data ThirdPartyInApplicationPurchaseInterface = ThirdPartyInApplicationPurchaseInterface
    { header_ :: JavaHeader
    }

instance JavaNull ThirdPartyInApplicationPurchaseInterface where
    javaNull = javaNullRecord "ThirdPartyInApplicationPurchaseInterface"

instance JavaEquals ThirdPartyInApplicationPurchaseInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThirdPartyInApplicationPurchaseInterface where
    (==) = jrecordEquals

instance JavaObjectClass ThirdPartyInApplicationPurchaseInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ThirdPartyInApplicationPurchaseInterface
fromHeader_ header = ThirdPartyInApplicationPurchaseInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ThirdPartyInApplicationPurchaseInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isPurchased :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased object_ a1 = jmethod object_ "isPurchased" (\() -> (isPurchased_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) () a1

isPurchased_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased_super object_ a1 = (isPurchased_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface)) a1

isPurchased_impl :: ThirdPartyInApplicationPurchaseInterface -> LockableFeature.LockableFeature -> IO (Bool)
isPurchased_impl this lockableFeature = javaAbstractMethod "isPurchased"


onCreate :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
onCreate object_ a1 a2 = jmethod object_ "onCreate" (\() -> (onCreate_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) () (jtoObject a1) (jtoObject a2)

onCreate_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
onCreate_super object_ a1 a2 = (onCreate_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface)) (jtoObject a1) (jtoObject a2)

onCreate_impl :: ThirdPartyInApplicationPurchaseInterface -> JavaObject -> JavaObject -> IO (())
onCreate_impl this anyTypeObject_ stateObjectObject_ = javaAbstractMethod "onCreate"


onDestroy :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy object_ = jmethod object_ "onDestroy" (\() -> (onDestroy_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) ()

onDestroy_super :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy_super object_ = (onDestroy_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))

onDestroy_impl :: ThirdPartyInApplicationPurchaseInterface -> IO (())
onDestroy_impl this = javaAbstractMethod "onDestroy"


onStart :: (JavaObjectClass this_) => this_ -> IO (())
onStart object_ = jmethod object_ "onStart" (\() -> (onStart_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) ()

onStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onStart_super object_ = (onStart_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))

onStart_impl :: ThirdPartyInApplicationPurchaseInterface -> IO (())
onStart_impl this = javaAbstractMethod "onStart"


onActivityResult :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Int -> Int -> o3 -> IO (())
onActivityResult object_ a1 a2 a3 = jmethod object_ "onActivityResult" (\() -> (onActivityResult_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) () a1 a2 (jtoObject a3)

onActivityResult_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Int -> Int -> o3 -> IO (())
onActivityResult_super object_ a1 a2 a3 = (onActivityResult_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface)) a1 a2 (jtoObject a3)

onActivityResult_impl :: ThirdPartyInApplicationPurchaseInterface -> Int -> Int -> JavaObject -> IO (())
onActivityResult_impl this requestCode resultCode dataObjectObject_ = javaAbstractMethod "onActivityResult"


onSaveInstanceState :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSaveInstanceState object_ a1 = jmethod object_ "onSaveInstanceState" (\() -> (onSaveInstanceState_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) () (jtoObject a1)

onSaveInstanceState_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSaveInstanceState_super object_ a1 = (onSaveInstanceState_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface)) (jtoObject a1)

onSaveInstanceState_impl :: ThirdPartyInApplicationPurchaseInterface -> JavaObject -> IO (())
onSaveInstanceState_impl this anyTypeObject_ = javaAbstractMethod "onSaveInstanceState"


onStop :: (JavaObjectClass this_) => this_ -> IO (())
onStop object_ = jmethod object_ "onStop" (\() -> (onStop_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) ()

onStop_super :: (JavaObjectClass this_) => this_ -> IO (())
onStop_super object_ = (onStop_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))

onStop_impl :: ThirdPartyInApplicationPurchaseInterface -> IO (())
onStop_impl this = javaAbstractMethod "onStop"


requestPurchase :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
requestPurchase object_ a1 = jmethod object_ "requestPurchase" (\() -> (requestPurchase_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) () a1

requestPurchase_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
requestPurchase_super object_ a1 = (requestPurchase_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface)) a1

requestPurchase_impl :: ThirdPartyInApplicationPurchaseInterface -> LockableFeature.LockableFeature -> IO (())
requestPurchase_impl this lockableFeature = javaAbstractMethod "requestPurchase"


requestReceipts :: (JavaObjectClass this_) => this_ -> IO (())
requestReceipts object_ = jmethod object_ "requestReceipts" (\() -> (requestReceipts_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) ()

requestReceipts_super :: (JavaObjectClass this_) => this_ -> IO (())
requestReceipts_super object_ = (requestReceipts_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))

requestReceipts_impl :: ThirdPartyInApplicationPurchaseInterface -> IO (())
requestReceipts_impl this = javaAbstractMethod "requestReceipts"


add :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> LockableFeature.LockableFeature -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface)) a1

add_impl :: ThirdPartyInApplicationPurchaseInterface -> LockableFeature.LockableFeature -> IO (())
add_impl this lockableFeature = javaAbstractMethod "add"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))

getUserName_impl :: ThirdPartyInApplicationPurchaseInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: ThirdPartyInApplicationPurchaseInterface))

isEnabled_impl :: ThirdPartyInApplicationPurchaseInterface -> IO (Bool)
isEnabled_impl this = javaAbstractMethod "isEnabled"


