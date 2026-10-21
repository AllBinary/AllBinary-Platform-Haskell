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
-- package org.allbinary.logic.communication.smtp.queue
module FileEmailQueue where

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
import qualified DomDocumentQueueInterface -- org.allbinary.data.tree.dom.document.DomDocumentQueueInterface

data FileEmailQueue = FileEmailQueue
    { header_ :: JavaHeader
    , domDocumentQueueInterface :: IORef (DomDocumentQueueInterface.DomDocumentQueueInterface)
    }

instance JavaNull FileEmailQueue where
    javaNull = javaNullRecord "FileEmailQueue"

instance JavaEquals FileEmailQueue where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileEmailQueue where
    (==) = jrecordEquals

instance JavaObjectClass FileEmailQueue where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileEmailQueue
newRecord_ = do
    header_ <- newJavaHeader
    domDocumentQueueInterface <- newIORef javaNull
    let this = FileEmailQueue header_ domDocumentQueueInterface
    jregisterLevel header_ this
    pure this

initFields_ :: FileEmailQueue -> IO ()
initFields_ this = do
    jset this.domDocumentQueueInterface (javaNull)
    pure ()

new_ :: IO FileEmailQueue
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileEmailQueue -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


