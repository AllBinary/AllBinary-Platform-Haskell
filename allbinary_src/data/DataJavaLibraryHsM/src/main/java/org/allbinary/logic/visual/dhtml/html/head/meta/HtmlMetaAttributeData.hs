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
-- package org.allbinary.logic.visual.dhtml.html.head.meta
module HtmlMetaAttributeData where

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

data HtmlMetaAttributeData = HtmlMetaAttributeData
    { header_ :: JavaHeader
    , id :: IORef (Int)
    , name :: IORef (String)
    }

instance JavaNull HtmlMetaAttributeData where
    javaNull = javaNullRecord "HtmlMetaAttributeData"

instance JavaEquals HtmlMetaAttributeData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlMetaAttributeData where
    (==) = jrecordEquals

instance JavaObjectClass HtmlMetaAttributeData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlMetaAttributeData
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef 0
    name <- newIORef ""
    let this = HtmlMetaAttributeData header_ id name
    jregisterLevel header_ this
    jregisterMethod header_ "equals" (\() -> equals_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HtmlMetaAttributeData -> IO ()
initFields_ this = do
    jset this.id (0)
    jset this.name (javaNull)
    pure ()

new_2 :: Int -> String -> IO HtmlMetaAttributeData
new_2 id value = do
    this <- newRecord_
    init_2 this id value
    pure this

init_2 :: HtmlMetaAttributeData -> Int -> String -> IO ()
init_2 this id value = do
        initFields_ this
        jset (this).name (value)
        jset (this).id (id)
        pure ()


equals :: (JavaObjectClass this_) => this_ -> HtmlMetaAttributeData -> IO (Bool)
equals object_ a1 = jmethod object_ "equals" (\() -> (equals_impl (javaCast object_ :: HtmlMetaAttributeData))) () a1

equals_super :: (JavaObjectClass this_) => this_ -> HtmlMetaAttributeData -> IO (Bool)
equals_super object_ a1 = (equals_impl (javaCast object_ :: HtmlMetaAttributeData)) a1

equals_impl :: HtmlMetaAttributeData -> HtmlMetaAttributeData -> IO (Bool)
equals_impl this htmlMetaAttributeData = do
    javaCatchReturn $ do
        if ((jget (htmlMetaAttributeData).id) == (jget (this).id)) then do
            javaReturn (True)
        else do
            javaReturn (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HtmlMetaAttributeData))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HtmlMetaAttributeData))

toString_impl :: HtmlMetaAttributeData -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


