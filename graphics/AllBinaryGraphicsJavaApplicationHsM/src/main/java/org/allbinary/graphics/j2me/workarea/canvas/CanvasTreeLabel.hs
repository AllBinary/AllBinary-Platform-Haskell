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
-- package org.allbinary.graphics.j2me.workarea.canvas
module CanvasTreeLabel where

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

data CanvasTreeLabel = CanvasTreeLabel
    { header_ :: JavaHeader
    , label :: IORef (String)
    }

instance JavaNull CanvasTreeLabel where
    javaNull = javaNullRecord "CanvasTreeLabel"

instance JavaEquals CanvasTreeLabel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasTreeLabel where
    (==) = jrecordEquals

instance JavaObjectClass CanvasTreeLabel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CanvasTreeLabel
newRecord_ = do
    header_ <- newJavaHeader
    label <- newIORef ""
    let this = CanvasTreeLabel header_ label
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CanvasTreeLabel -> IO ()
initFields_ this = do
    jset this.label (javaNull)
    pure ()

new_1 :: String -> IO CanvasTreeLabel
new_1 str = do
    this <- newRecord_
    init_1 this str
    pure this

init_1 :: CanvasTreeLabel -> String -> IO ()
init_1 this str = do
        initFields_ this
        jset (this).label (str)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CanvasTreeLabel))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CanvasTreeLabel))

toString_impl :: CanvasTreeLabel -> IO (String)
toString_impl this = do
        pure ((jget (this).label))


