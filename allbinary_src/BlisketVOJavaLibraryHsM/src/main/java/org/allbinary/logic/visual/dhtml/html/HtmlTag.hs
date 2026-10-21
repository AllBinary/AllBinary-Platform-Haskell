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
module HtmlTag where

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
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil

data HtmlTag = HtmlTag
    { header_ :: JavaHeader
    , otherAttributes :: IORef (HashMap.HashMap)
    }

instance JavaNull HtmlTag where
    javaNull = javaNullRecord "HtmlTag"

instance JavaEquals HtmlTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlTag where
    (==) = jrecordEquals

instance JavaObjectClass HtmlTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlTag
newRecord_ = do
    header_ <- newJavaHeader
    otherAttributes <- newIORef javaNull
    let this = HtmlTag header_ otherAttributes
    jregisterLevel header_ this
    jregisterMethod header_ "addAttribute" (\() -> addAttribute_impl this)
    pure this

initFields_ :: HtmlTag -> IO ()
initFields_ this = do
    jset this.otherAttributes (javaNull)
    pure ()

new_ :: IO HtmlTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlTag -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).otherAttributes (assignedValue)
        pure ()


addAttribute :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
addAttribute object_ a1 a2 = jmethod object_ "addAttribute" (\() -> (addAttribute_impl (javaCast object_ :: HtmlTag))) () a1 a2

addAttribute_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
addAttribute_super object_ a1 a2 = (addAttribute_impl (javaCast object_ :: HtmlTag)) a1 a2

addAttribute_impl :: HtmlTag -> String -> String -> IO (())
addAttribute_impl this key value = do
        Control.Monad.void (HashMap.put ((jget (this).otherAttributes)) key value)
        pure ()


