{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.animation.text
module TextInterface where

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
import qualified TextChangeListener -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data TextInterface = TextInterface
    { header_ :: JavaHeader
    }

instance JavaNull TextInterface where
    javaNull = javaNullRecord "TextInterface"

instance JavaEquals TextInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextInterface where
    (==) = jrecordEquals

instance JavaObjectClass TextInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TextInterface
fromHeader_ header = TextInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TextInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setTextWithOnMeasure :: (JavaObjectClass this_) => this_ -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure object_ a1 a2 = jmethod object_ "setTextWithOnMeasure" (\() -> (setTextWithOnMeasure_impl (javaCast object_ :: TextInterface))) () a1 a2

setTextWithOnMeasure_super :: (JavaObjectClass this_) => this_ -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure_super object_ a1 a2 = (setTextWithOnMeasure_impl (javaCast object_ :: TextInterface)) a1 a2

setTextWithOnMeasure_impl :: TextInterface -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure_impl this text textChangeListener = javaAbstractMethod "setTextWithOnMeasure"


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: TextInterface))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: TextInterface))

getText_impl :: TextInterface -> IO (String)
getText_impl this = javaAbstractMethod "getText"


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: TextInterface))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: TextInterface)) a1

setText_impl :: TextInterface -> String -> IO (())
setText_impl this text = javaAbstractMethod "setText"


getFontHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight object_ = jmethod object_ "getFontHeight" (\() -> (getFontHeight_impl (javaCast object_ :: TextInterface))) ()

getFontHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight_super object_ = (getFontHeight_impl (javaCast object_ :: TextInterface))

getFontHeight_impl :: TextInterface -> IO (Int)
getFontHeight_impl this = javaAbstractMethod "getFontHeight"


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: TextInterface))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: TextInterface))

getWidth_impl :: TextInterface -> IO (Int)
getWidth_impl this = javaAbstractMethod "getWidth"


