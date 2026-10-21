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
-- package org.allbinary.business.user.commerce.money.payment
module PaymentInterface where

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

-- Java interface: the classes that implement it have these functions
data PaymentInterface = PaymentInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentInterface where
    javaNull = javaNullRecord "PaymentInterface"

instance JavaEquals PaymentInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentInterface
fromHeader_ header = PaymentInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: PaymentInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: PaymentInterface)) a1

setName_impl :: PaymentInterface -> String -> IO (())
setName_impl this value = javaAbstractMethod "setName"


setType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: PaymentInterface))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: PaymentInterface)) a1

setType_impl :: PaymentInterface -> String -> IO (())
setType_impl this value = javaAbstractMethod "setType"


setExpiration :: (JavaObjectClass this_) => this_ -> String -> IO (())
setExpiration object_ a1 = jmethod object_ "setExpiration" (\() -> (setExpiration_impl (javaCast object_ :: PaymentInterface))) () a1

setExpiration_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setExpiration_super object_ a1 = (setExpiration_impl (javaCast object_ :: PaymentInterface)) a1

setExpiration_impl :: PaymentInterface -> String -> IO (())
setExpiration_impl this value = javaAbstractMethod "setExpiration"


setNumber :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber object_ a1 = jmethod object_ "setNumber" (\() -> (setNumber_impl (javaCast object_ :: PaymentInterface))) () a1

setNumber_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber_super object_ a1 = (setNumber_impl (javaCast object_ :: PaymentInterface)) a1

setNumber_impl :: PaymentInterface -> String -> IO (())
setNumber_impl this value = javaAbstractMethod "setNumber"


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: PaymentInterface))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: PaymentInterface))

getId_impl :: PaymentInterface -> IO (String)
getId_impl this = javaAbstractMethod "getId"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: PaymentInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: PaymentInterface))

getName_impl :: PaymentInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: PaymentInterface))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: PaymentInterface))

getType_impl :: PaymentInterface -> IO (String)
getType_impl this = javaAbstractMethod "getType"


getExpiration :: (JavaObjectClass this_) => this_ -> IO (String)
getExpiration object_ = jmethod object_ "getExpiration" (\() -> (getExpiration_impl (javaCast object_ :: PaymentInterface))) ()

getExpiration_super :: (JavaObjectClass this_) => this_ -> IO (String)
getExpiration_super object_ = (getExpiration_impl (javaCast object_ :: PaymentInterface))

getExpiration_impl :: PaymentInterface -> IO (String)
getExpiration_impl this = javaAbstractMethod "getExpiration"


getEncryption :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption object_ = jmethod object_ "getEncryption" (\() -> (getEncryption_impl (javaCast object_ :: PaymentInterface))) ()

getEncryption_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption_super object_ = (getEncryption_impl (javaCast object_ :: PaymentInterface))

getEncryption_impl :: PaymentInterface -> IO (String)
getEncryption_impl this = javaAbstractMethod "getEncryption"


getNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: PaymentInterface))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: PaymentInterface))

getNumber_impl :: PaymentInterface -> IO (String)
getNumber_impl this = javaAbstractMethod "getNumber"


getLastFour :: (JavaObjectClass this_) => this_ -> IO (String)
getLastFour object_ = jmethod object_ "getLastFour" (\() -> (getLastFour_impl (javaCast object_ :: PaymentInterface))) ()

getLastFour_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastFour_super object_ = (getLastFour_impl (javaCast object_ :: PaymentInterface))

getLastFour_impl :: PaymentInterface -> IO (String)
getLastFour_impl this = javaAbstractMethod "getLastFour"


isDefault :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefault object_ = jmethod object_ "isDefault" (\() -> (isDefault_impl (javaCast object_ :: PaymentInterface))) ()

isDefault_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefault_super object_ = (isDefault_impl (javaCast object_ :: PaymentInterface))

isDefault_impl :: PaymentInterface -> IO (Bool)
isDefault_impl this = javaAbstractMethod "isDefault"


