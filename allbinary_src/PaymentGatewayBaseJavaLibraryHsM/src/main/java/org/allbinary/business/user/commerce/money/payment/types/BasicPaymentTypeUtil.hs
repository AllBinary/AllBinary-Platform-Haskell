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
-- package org.allbinary.business.user.commerce.money.payment.types
module BasicPaymentTypeUtil where

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
import qualified BasicPaymentType -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil

data BasicPaymentTypeUtil = BasicPaymentTypeUtil
    { header_ :: JavaHeader
    , paymentTypeVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicPaymentTypeUtil where
    javaNull = javaNullRecord "BasicPaymentTypeUtil"

instance JavaEquals BasicPaymentTypeUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPaymentTypeUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicPaymentTypeUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicPaymentTypeUtil
newRecord_ = do
    header_ <- newJavaHeader
    paymentTypeVector <- newIORef javaNull
    let this = BasicPaymentTypeUtil header_ paymentTypeVector
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "isContain" (\() -> isContain_impl this)
    jregisterMethod header_ "difference" (\() -> difference_impl this)
    pure this

initFields_ :: BasicPaymentTypeUtil -> IO ()
initFields_ this = do
    jset this.paymentTypeVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        pure ()
        pure ()


getInstance :: IO (BasicPaymentTypeUtil)
getInstance = do
        pure (BasicPaymentTypeUtil.instance_)

new_ :: IO BasicPaymentTypeUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicPaymentTypeUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


add :: (JavaObjectClass this_) => this_ -> BasicPaymentType.BasicPaymentType -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BasicPaymentTypeUtil))) () a1

add_super :: (JavaObjectClass this_) => this_ -> BasicPaymentType.BasicPaymentType -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: BasicPaymentTypeUtil)) a1

add_impl :: BasicPaymentTypeUtil -> BasicPaymentType.BasicPaymentType -> IO (())
add_impl this paymentType = do
        Control.Monad.void (BasicArrayList.add ((jget (this).paymentTypeVector)) paymentType)
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> IO (BasicPaymentType.BasicPaymentType)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: BasicPaymentTypeUtil))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicPaymentType.BasicPaymentType)
get_super object_ a1 = (get_impl (javaCast object_ :: BasicPaymentTypeUtil)) a1

get_impl :: BasicPaymentTypeUtil -> String -> IO (BasicPaymentType.BasicPaymentType)
get_impl this paymentTypeString = do
    javaCatchReturn $ do
        size <- (BasicArrayList.size ((jget (this).paymentTypeVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let paymentType = (javaCast (jio (BasicArrayList.get ((jget (this).paymentTypeVector)) i)) :: BasicPaymentType.BasicPaymentType)
            when ((Prelude.fromEnum (Prelude.compare (jio (BasicPaymentType.getName paymentType)) paymentTypeString) - 1) == 0) $ do
                javaReturn (paymentType)
        javaThrow ((JavaException "Exception" ("Unknown PaymentType: " ++ paymentTypeString)))


isContain :: (JavaObjectClass this_) => this_ -> BasicPaymentType.BasicPaymentType -> IO (Bool)
isContain object_ a1 = jmethod object_ "isContain" (\() -> (isContain_impl (javaCast object_ :: BasicPaymentTypeUtil))) () a1

isContain_super :: (JavaObjectClass this_) => this_ -> BasicPaymentType.BasicPaymentType -> IO (Bool)
isContain_super object_ a1 = (isContain_impl (javaCast object_ :: BasicPaymentTypeUtil)) a1

isContain_impl :: BasicPaymentTypeUtil -> BasicPaymentType.BasicPaymentType -> IO (Bool)
isContain_impl this paymentType = do
        (BasicArrayList.contains ((jget (this).paymentTypeVector)) paymentType)


difference :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: BasicPaymentTypeUtil))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
difference_super object_ a1 = (difference_impl (javaCast object_ :: BasicPaymentTypeUtil)) a1

difference_impl :: BasicPaymentTypeUtil -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
difference_impl this a_PaymentTypeVector = do
        diff <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size ((jget (this).paymentTypeVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let paymentType = (javaCast (jio (BasicArrayList.get ((jget (this).paymentTypeVector)) i)) :: BasicPaymentType.BasicPaymentType)
            when (Prelude.not (jio (BasicArrayList.contains a_PaymentTypeVector paymentType))) $ do
                Control.Monad.void (jio (BasicArrayList.add diff paymentType))
        pure (diff)


