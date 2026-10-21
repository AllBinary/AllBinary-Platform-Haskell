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
-- package org.allbinary.logic.visual.transform
module BasicTransformerInterface (module BasicTransformerInterface, module CompositeTransformInfoInterface) where

import CompositeTransformInfoInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setInputStream, setInputStream_super, setInputStream_impl, setURIResolver, setURIResolver_super, setURIResolver_impl, getStreamSource, getStreamSource_super, getStreamSource_impl, getInputStream, getInputStream_super, getInputStream_impl, getURIResolver, getURIResolver_super, getURIResolver_impl, translate, translate_super, translate_impl, toString)
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
import qualified InputStream -- java.io.InputStream
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified CompositeTransformInfoInterface -- org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface

-- Java interface: the classes that implement it have these functions
data BasicTransformerInterface = BasicTransformerInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicTransformerInterface where
    javaNull = javaNullRecord "BasicTransformerInterface"

instance JavaEquals BasicTransformerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTransformerInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicTransformerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicTransformerInterface
fromHeader_ header = BasicTransformerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicTransformerInterface header)
    CompositeTransformInfoInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (())
setInputStream object_ a1 = jmethod object_ "setInputStream" (\() -> (setInputStream_impl (javaCast object_ :: BasicTransformerInterface))) () a1

setInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (())
setInputStream_super object_ a1 = (setInputStream_impl (javaCast object_ :: BasicTransformerInterface)) a1

setInputStream_impl :: BasicTransformerInterface -> InputStream.InputStream -> IO (())
setInputStream_impl this inputStream = javaAbstractMethod "setInputStream"


setURIResolver :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> IO (())
setURIResolver object_ a1 = jmethod object_ "setURIResolver" (\() -> (setURIResolver_impl (javaCast object_ :: BasicTransformerInterface))) () a1

setURIResolver_super :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> IO (())
setURIResolver_super object_ a1 = (setURIResolver_impl (javaCast object_ :: BasicTransformerInterface)) a1

setURIResolver_impl :: BasicTransformerInterface -> URIResolver.URIResolver -> IO (())
setURIResolver_impl this uriResolver = javaAbstractMethod "setURIResolver"


getStreamSource :: (JavaObjectClass this_) => this_ -> IO (StreamSource.StreamSource)
getStreamSource object_ = jmethod object_ "getStreamSource" (\() -> (getStreamSource_impl (javaCast object_ :: BasicTransformerInterface))) ()

getStreamSource_super :: (JavaObjectClass this_) => this_ -> IO (StreamSource.StreamSource)
getStreamSource_super object_ = (getStreamSource_impl (javaCast object_ :: BasicTransformerInterface))

getStreamSource_impl :: BasicTransformerInterface -> IO (StreamSource.StreamSource)
getStreamSource_impl this = javaAbstractMethod "getStreamSource"


getInputStream :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
getInputStream object_ = jmethod object_ "getInputStream" (\() -> (getInputStream_impl (javaCast object_ :: BasicTransformerInterface))) ()

getInputStream_super :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
getInputStream_super object_ = (getInputStream_impl (javaCast object_ :: BasicTransformerInterface))

getInputStream_impl :: BasicTransformerInterface -> IO (InputStream.InputStream)
getInputStream_impl this = javaAbstractMethod "getInputStream"


getURIResolver :: (JavaObjectClass this_) => this_ -> IO (URIResolver.URIResolver)
getURIResolver object_ = jmethod object_ "getURIResolver" (\() -> (getURIResolver_impl (javaCast object_ :: BasicTransformerInterface))) ()

getURIResolver_super :: (JavaObjectClass this_) => this_ -> IO (URIResolver.URIResolver)
getURIResolver_super object_ = (getURIResolver_impl (javaCast object_ :: BasicTransformerInterface))

getURIResolver_impl :: BasicTransformerInterface -> IO (URIResolver.URIResolver)
getURIResolver_impl this = javaAbstractMethod "getURIResolver"


-- throws Exception
translate :: (JavaObjectClass this_) => this_ -> String -> IO (String)
translate object_ a1 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: BasicTransformerInterface))) () a1

translate_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
translate_super object_ a1 = (translate_impl (javaCast object_ :: BasicTransformerInterface)) a1

translate_impl :: BasicTransformerInterface -> String -> IO (String)
translate_impl this xmlDocumentStr = javaAbstractMethod "translate"


