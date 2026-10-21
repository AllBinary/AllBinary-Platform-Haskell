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
-- package org.allbinary.business.advertisement.affiliate.sales
module AffiliateSales where

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

data AffiliateSales = AffiliateSales
    { header_ :: JavaHeader
    }

instance JavaNull AffiliateSales where
    javaNull = javaNullRecord "AffiliateSales"

instance JavaEquals AffiliateSales where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AffiliateSales where
    (==) = jrecordEquals

instance JavaObjectClass AffiliateSales where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AffiliateSales
newRecord_ = do
    header_ <- newJavaHeader
    let this = AffiliateSales header_
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: AffiliateSales -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AffiliateSales
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AffiliateSales -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AffiliateSales))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: AffiliateSales))

isValid_impl :: AffiliateSales -> IO (Bool)
isValid_impl this = do
        pure (True)


