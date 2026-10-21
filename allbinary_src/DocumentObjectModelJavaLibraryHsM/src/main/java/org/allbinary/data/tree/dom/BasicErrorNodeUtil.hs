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
-- package org.allbinary.data.tree.dom
module BasicErrorNodeUtil where

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
import qualified ModDomHelper -- same package or java.lang
import qualified ErrorData -- org.allbinary.business.error.ErrorData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data BasicErrorNodeUtil = BasicErrorNodeUtil
    { header_ :: JavaHeader
    }

instance JavaNull BasicErrorNodeUtil where
    javaNull = javaNullRecord "BasicErrorNodeUtil"

instance JavaEquals BasicErrorNodeUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicErrorNodeUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicErrorNodeUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicErrorNodeUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicErrorNodeUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: BasicErrorNodeUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicErrorNodeUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicErrorNodeUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
get :: Document.Document -> String -> IO (Node.Node)
get document errorText = do
        handle (\(e :: JavaException) -> do
            javaThrow ((JavaException "Exception" "Error Node Creation Failure"))
            ) $ do
            node <- (Document.createElement document (jget ((jio (ErrorData.getInstance))).nAME))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (jget ((jio (ErrorData.getInstance))).tEXT) errorText)))
            pure (node)


