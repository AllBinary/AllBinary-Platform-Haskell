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
-- package org.allbinary.business.category.store.theme
module ThemeComparator where

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
import qualified Comparator -- java.util.Comparator

-- implements Comparator
data ThemeComparator = ThemeComparator
    { header_ :: JavaHeader
    }

instance JavaNull ThemeComparator where
    javaNull = javaNullRecord "ThemeComparator"

instance JavaEquals ThemeComparator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThemeComparator where
    (==) = jrecordEquals

instance JavaObjectClass ThemeComparator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThemeComparator
newRecord_ = do
    header_ <- newJavaHeader
    let this = ThemeComparator header_
    jregisterLevel header_ this
    Comparator.registerInterface_ header_
    jregisterMethod header_ "compare" (\() -> compare_impl this)
    pure this

initFields_ :: ThemeComparator -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ThemeComparator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThemeComparator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


compare :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (Int)
compare object_ a1 a2 = jmethod object_ "compare" (\() -> (compare_impl (javaCast object_ :: ThemeComparator))) () (jtoObject a1) (jtoObject a2)

compare_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (Int)
compare_super object_ a1 a2 = (compare_impl (javaCast object_ :: ThemeComparator)) (jtoObject a1) (jtoObject a2)

compare_impl :: ThemeComparator -> JavaObject -> JavaObject -> IO (Int)
compare_impl this anyTypeObject_ object2Object_ = do
        let anyType = jtoObject anyTypeObject_
        let object2 = jtoObject object2Object_
        let string = (javaCast anyType :: String)
        let string2 = (javaCast object2 :: String)
        pure ((Prelude.fromEnum (Prelude.compare string string2) - 1))


