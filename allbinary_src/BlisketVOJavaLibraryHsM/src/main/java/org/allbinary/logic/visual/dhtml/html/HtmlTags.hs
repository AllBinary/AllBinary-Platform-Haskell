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
-- package org.allbinary.logic.visual.dhtml.html
module HtmlTags where

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
import qualified HtmlTag -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil

data HtmlTags = HtmlTags
    { header_ :: JavaHeader
    , htmlTagVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull HtmlTags where
    javaNull = javaNullRecord "HtmlTags"

instance JavaEquals HtmlTags where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlTags where
    (==) = jrecordEquals

instance JavaObjectClass HtmlTags where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlTags
newRecord_ = do
    header_ <- newJavaHeader
    htmlTagVector <- newIORef javaNull
    let this = HtmlTags header_ htmlTagVector
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "size" (\() -> size_impl this)
    pure this

initFields_ :: HtmlTags -> IO ()
initFields_ this = do
    jset this.htmlTagVector (javaNull)
    pure ()

new_ :: IO HtmlTags
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlTags -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).htmlTagVector (assignedValue)
        pure ()


get :: (JavaObjectClass this_) => this_ -> Int -> IO (HtmlTag.HtmlTag)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: HtmlTags))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HtmlTag.HtmlTag)
get_super object_ a1 = (get_impl (javaCast object_ :: HtmlTags)) a1

get_impl :: HtmlTags -> Int -> IO (HtmlTag.HtmlTag)
get_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).htmlTagVector)) index)) :: HtmlTag.HtmlTag))


add :: (JavaObjectClass this_) => this_ -> HtmlTag.HtmlTag -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: HtmlTags))) () a1

add_super :: (JavaObjectClass this_) => this_ -> HtmlTag.HtmlTag -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: HtmlTags)) a1

add_impl :: HtmlTags -> HtmlTag.HtmlTag -> IO (())
add_impl this htmlTag = do
        Control.Monad.void (BasicArrayList.add ((jget (this).htmlTagVector)) htmlTag)
        pure ()


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: HtmlTags))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: HtmlTags))

size_impl :: HtmlTags -> IO (Int)
size_impl this = do
        (BasicArrayList.size ((jget (this).htmlTagVector)))


