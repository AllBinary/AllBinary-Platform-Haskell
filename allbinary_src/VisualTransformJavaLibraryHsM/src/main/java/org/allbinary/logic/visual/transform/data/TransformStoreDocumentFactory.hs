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
-- package org.allbinary.logic.visual.transform.data
module TransformStoreDocumentFactory where

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
import qualified TransformStoreDocument -- same package or java.lang
import qualified TransformDocumentInterface -- same package or java.lang
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest

data TransformStoreDocumentFactory = TransformStoreDocumentFactory
    { header_ :: JavaHeader
    }

instance JavaNull TransformStoreDocumentFactory where
    javaNull = javaNullRecord "TransformStoreDocumentFactory"

instance JavaEquals TransformStoreDocumentFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformStoreDocumentFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformStoreDocumentFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformStoreDocumentFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TransformStoreDocumentFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: TransformStoreDocumentFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TransformStoreDocumentFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformStoreDocumentFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: PageContext.PageContext -> WeblisketSession.WeblisketSession -> IO (TransformDocumentInterface.TransformDocumentInterface)
getInstance pageContext weblisketSession = do
        pure ((javaCast (jio (TransformStoreDocument.new_2 pageContext weblisketSession)) :: TransformDocumentInterface.TransformDocumentInterface))


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: SearchRequest.SearchRequest -> IO (TransformDocumentInterface.TransformDocumentInterface)
getInstance searchRequest = do
        pure ((javaCast (jio (TransformStoreDocument.new_1 searchRequest)) :: TransformDocumentInterface.TransformDocumentInterface))


