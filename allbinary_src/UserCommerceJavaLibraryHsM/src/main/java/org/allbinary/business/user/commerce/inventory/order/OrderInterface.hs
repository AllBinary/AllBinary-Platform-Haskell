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
-- package org.allbinary.business.user.commerce.inventory.order
module OrderInterface where

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
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface

-- Java interface: the classes that implement it have these functions
data OrderInterface = OrderInterface
    { header_ :: JavaHeader
    }

instance JavaNull OrderInterface where
    javaNull = javaNullRecord "OrderInterface"

instance JavaEquals OrderInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderInterface where
    (==) = jrecordEquals

instance JavaObjectClass OrderInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OrderInterface
fromHeader_ header = OrderInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OrderInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setShippingMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingMethod object_ a1 = jmethod object_ "setShippingMethod" (\() -> (setShippingMethod_impl (javaCast object_ :: OrderInterface))) () a1

setShippingMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingMethod_super object_ a1 = (setShippingMethod_impl (javaCast object_ :: OrderInterface)) a1

setShippingMethod_impl :: OrderInterface -> String -> IO (())
setShippingMethod_impl this shippingType = javaAbstractMethod "setShippingMethod"


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: OrderInterface))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: OrderInterface)) a1

setPaymentMethod_impl :: OrderInterface -> String -> IO (())
setPaymentMethod_impl this value = javaAbstractMethod "setPaymentMethod"


setSpecial :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial object_ a1 = jmethod object_ "setSpecial" (\() -> (setSpecial_impl (javaCast object_ :: OrderInterface))) () a1

setSpecial_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial_super object_ a1 = (setSpecial_impl (javaCast object_ :: OrderInterface)) a1

setSpecial_impl :: OrderInterface -> String -> IO (())
setSpecial_impl this special = javaAbstractMethod "setSpecial"


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: OrderInterface))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: OrderInterface)) a1

setStoreName_impl :: OrderInterface -> String -> IO (())
setStoreName_impl this value = javaAbstractMethod "setStoreName"


setUserComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserComments object_ a1 = jmethod object_ "setUserComments" (\() -> (setUserComments_impl (javaCast object_ :: OrderInterface))) () a1

setUserComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserComments_super object_ a1 = (setUserComments_impl (javaCast object_ :: OrderInterface)) a1

setUserComments_impl :: OrderInterface -> String -> IO (())
setUserComments_impl this value = javaAbstractMethod "setUserComments"


setUserCancelComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserCancelComments object_ a1 = jmethod object_ "setUserCancelComments" (\() -> (setUserCancelComments_impl (javaCast object_ :: OrderInterface))) () a1

setUserCancelComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserCancelComments_super object_ a1 = (setUserCancelComments_impl (javaCast object_ :: OrderInterface)) a1

setUserCancelComments_impl :: OrderInterface -> String -> IO (())
setUserCancelComments_impl this value = javaAbstractMethod "setUserCancelComments"


setStoreComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreComments object_ a1 = jmethod object_ "setStoreComments" (\() -> (setStoreComments_impl (javaCast object_ :: OrderInterface))) () a1

setStoreComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreComments_super object_ a1 = (setStoreComments_impl (javaCast object_ :: OrderInterface)) a1

setStoreComments_impl :: OrderInterface -> String -> IO (())
setStoreComments_impl this value = javaAbstractMethod "setStoreComments"


setStoreCancelComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreCancelComments object_ a1 = jmethod object_ "setStoreCancelComments" (\() -> (setStoreCancelComments_impl (javaCast object_ :: OrderInterface))) () a1

setStoreCancelComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreCancelComments_super object_ a1 = (setStoreCancelComments_impl (javaCast object_ :: OrderInterface)) a1

setStoreCancelComments_impl :: OrderInterface -> String -> IO (())
setStoreCancelComments_impl this value = javaAbstractMethod "setStoreCancelComments"


getBasket :: (JavaObjectClass this_) => this_ -> IO (BasketInterface.BasketInterface)
getBasket object_ = jmethod object_ "getBasket" (\() -> (getBasket_impl (javaCast object_ :: OrderInterface))) ()

getBasket_super :: (JavaObjectClass this_) => this_ -> IO (BasketInterface.BasketInterface)
getBasket_super object_ = (getBasket_impl (javaCast object_ :: OrderInterface))

getBasket_impl :: OrderInterface -> IO (BasketInterface.BasketInterface)
getBasket_impl this = javaAbstractMethod "getBasket"


getShippingMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingMethod object_ = jmethod object_ "getShippingMethod" (\() -> (getShippingMethod_impl (javaCast object_ :: OrderInterface))) ()

getShippingMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingMethod_super object_ = (getShippingMethod_impl (javaCast object_ :: OrderInterface))

getShippingMethod_impl :: OrderInterface -> IO (String)
getShippingMethod_impl this = javaAbstractMethod "getShippingMethod"


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: OrderInterface))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: OrderInterface))

getPaymentMethod_impl :: OrderInterface -> IO (String)
getPaymentMethod_impl this = javaAbstractMethod "getPaymentMethod"


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: OrderInterface))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: OrderInterface))

getSpecial_impl :: OrderInterface -> IO (String)
getSpecial_impl this = javaAbstractMethod "getSpecial"


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: OrderInterface))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: OrderInterface))

getId_impl :: OrderInterface -> IO (String)
getId_impl this = javaAbstractMethod "getId"


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: OrderInterface))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: OrderInterface))

getStoreName_impl :: OrderInterface -> IO (String)
getStoreName_impl this = javaAbstractMethod "getStoreName"


getUserComments :: (JavaObjectClass this_) => this_ -> IO (String)
getUserComments object_ = jmethod object_ "getUserComments" (\() -> (getUserComments_impl (javaCast object_ :: OrderInterface))) ()

getUserComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserComments_super object_ = (getUserComments_impl (javaCast object_ :: OrderInterface))

getUserComments_impl :: OrderInterface -> IO (String)
getUserComments_impl this = javaAbstractMethod "getUserComments"


getUserCancelComments :: (JavaObjectClass this_) => this_ -> IO (String)
getUserCancelComments object_ = jmethod object_ "getUserCancelComments" (\() -> (getUserCancelComments_impl (javaCast object_ :: OrderInterface))) ()

getUserCancelComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserCancelComments_super object_ = (getUserCancelComments_impl (javaCast object_ :: OrderInterface))

getUserCancelComments_impl :: OrderInterface -> IO (String)
getUserCancelComments_impl this = javaAbstractMethod "getUserCancelComments"


getStoreComments :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreComments object_ = jmethod object_ "getStoreComments" (\() -> (getStoreComments_impl (javaCast object_ :: OrderInterface))) ()

getStoreComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreComments_super object_ = (getStoreComments_impl (javaCast object_ :: OrderInterface))

getStoreComments_impl :: OrderInterface -> IO (String)
getStoreComments_impl this = javaAbstractMethod "getStoreComments"


getStoreCancelComments :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreCancelComments object_ = jmethod object_ "getStoreCancelComments" (\() -> (getStoreCancelComments_impl (javaCast object_ :: OrderInterface))) ()

getStoreCancelComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreCancelComments_super object_ = (getStoreCancelComments_impl (javaCast object_ :: OrderInterface))

getStoreCancelComments_impl :: OrderInterface -> IO (String)
getStoreCancelComments_impl this = javaAbstractMethod "getStoreCancelComments"


