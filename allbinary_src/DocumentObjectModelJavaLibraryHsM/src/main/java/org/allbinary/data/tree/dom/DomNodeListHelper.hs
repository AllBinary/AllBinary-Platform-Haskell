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
module DomNodeListHelper where

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
import qualified DomNodeHelper -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified NodeList -- org.w3c.dom.NodeList

data DomNodeListHelper = DomNodeListHelper
    { header_ :: JavaHeader
    }

instance JavaNull DomNodeListHelper where
    javaNull = javaNullRecord "DomNodeListHelper"

instance JavaEquals DomNodeListHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomNodeListHelper where
    (==) = jrecordEquals

instance JavaObjectClass DomNodeListHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DomNodeListHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = DomNodeListHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: DomNodeListHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DomNodeListHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DomNodeListHelper -> IO ()
init_ this = do
    initFields_ this


getVector :: NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getVector nodeList = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (NodeList.getLength nodeList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add vector (jio (DomNodeHelper.getTextNodeValue (jio (NodeList.item nodeList index)))))
        pure (vector)


