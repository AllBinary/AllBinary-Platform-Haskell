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
module HtmlMetasData where

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

data HtmlMetasData = HtmlMetasData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    }

instance JavaNull HtmlMetasData where
    javaNull = javaNullRecord "HtmlMetasData"

instance JavaEquals HtmlMetasData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlMetasData where
    (==) = jrecordEquals

instance JavaObjectClass HtmlMetasData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlMetasData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    let this = HtmlMetasData header_ nAME
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlMetasData -> IO ()
initFields_ this = do
    jset this.nAME ("HTMLMETAS_NAME")
    pure ()

new_ :: IO HtmlMetasData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlMetasData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (HtmlMetasData)
getInstance = do
        pure (HtmlMetasData.instance_)


