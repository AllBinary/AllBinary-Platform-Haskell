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
-- package org.allbinary.business.user.commerce.inventory.item
module ItemInfo where

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

data ItemInfo = ItemInfo
    { header_ :: JavaHeader
    , type_ :: IORef (JavaArray (String))
    , view :: IORef (JavaArray (String))
    , data_ :: IORef (JavaArray (String))
    , creationDate :: IORef (JavaArray (String))
    , lastModified :: IORef (JavaArray (String))
    }

instance JavaNull ItemInfo where
    javaNull = javaNullRecord "ItemInfo"

instance JavaEquals ItemInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemInfo where
    (==) = jrecordEquals

instance JavaObjectClass ItemInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemInfo
newRecord_ = do
    header_ <- newJavaHeader
    type_ <- newIORef javaNull
    view <- newIORef javaNull
    data_ <- newIORef javaNull
    creationDate <- newIORef javaNull
    lastModified <- newIORef javaNull
    let this = ItemInfo header_ type_ view data_ creationDate lastModified
    jregisterLevel header_ this
    pure this

initFields_ :: ItemInfo -> IO ()
initFields_ this = do
    jset this.type_ (javaNull)
    jset this.view (javaNull)
    jset this.data_ (javaNull)
    jset this.creationDate (javaNull)
    jset this.lastModified (javaNull)
    pure ()

new_ :: IO ItemInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


