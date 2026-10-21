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
-- package org.allbinary.business.init
module InitInfoDocument where

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
import qualified Document -- org.w3c.dom.Document

data InitInfoDocument = InitInfoDocument
    { header_ :: JavaHeader
    , initInfoDocument :: IORef (Document.Document)
    }

instance JavaNull InitInfoDocument where
    javaNull = javaNullRecord "InitInfoDocument"

instance JavaEquals InitInfoDocument where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitInfoDocument where
    (==) = jrecordEquals

instance JavaObjectClass InitInfoDocument where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitInfoDocument
newRecord_ = do
    header_ <- newJavaHeader
    initInfoDocument <- newIORef javaNull
    let this = InitInfoDocument header_ initInfoDocument
    jregisterLevel header_ this
    pure this

initFields_ :: InitInfoDocument -> IO ()
initFields_ this = do
    jset this.initInfoDocument (javaNull)
    pure ()

new_ :: IO InitInfoDocument
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitInfoDocument -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


