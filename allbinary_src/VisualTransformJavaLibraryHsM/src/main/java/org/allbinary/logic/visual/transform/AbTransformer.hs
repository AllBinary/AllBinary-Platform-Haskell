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
module AbTransformer where

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
import qualified StringBufferInputStream -- java.io.StringBufferInputStream
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified XslHelper -- org.allbinary.data.tree.dom.XslHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfigGenerator -- org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator
import qualified TransformInfoObjectConfigGeneratorFactory -- org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicTransformerInterface

-- implements BasicTransformerInterface
data AbTransformer = AbTransformer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    , inputStream :: IORef (InputStream.InputStream)
    , uriResolver :: IORef (URIResolver.URIResolver)
    }

instance JavaNull AbTransformer where
    javaNull = javaNullRecord "AbTransformer"

instance JavaEquals AbTransformer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbTransformer where
    (==) = jrecordEquals

instance JavaObjectClass AbTransformer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbTransformer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    inputStream <- newIORef javaNull
    uriResolver <- newIORef javaNull
    let this = AbTransformer header_ logUtil commonStrings transformInfoInterface inputStream uriResolver
    jregisterLevel header_ this
    BasicTransformerInterface.registerInterface_ header_
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "setInputStream" (\() -> setInputStream_impl this)
    jregisterMethod header_ "setURIResolver" (\() -> setURIResolver_impl this)
    jregisterMethod header_ "getInputStream" (\() -> getInputStream_impl this)
    jregisterMethod header_ "getURIResolver" (\() -> getURIResolver_impl this)
    jregisterMethod header_ "getStreamSource" (\() -> getStreamSource_impl this)
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    pure this

initFields_ :: AbTransformer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.transformInfoInterface (javaNull)
    jset this.inputStream (javaNull)
    jset this.uriResolver (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO AbTransformer
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: AbTransformer -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        pure ()


getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: AbTransformer))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: AbTransformer))

getTransformInfoInterface_impl :: AbTransformer -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((jget (this).transformInfoInterface))


setInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (())
setInputStream object_ a1 = jmethod object_ "setInputStream" (\() -> (setInputStream_impl (javaCast object_ :: AbTransformer))) () a1

setInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (())
setInputStream_super object_ a1 = (setInputStream_impl (javaCast object_ :: AbTransformer)) a1

setInputStream_impl :: AbTransformer -> InputStream.InputStream -> IO (())
setInputStream_impl this inputStream = do
        jset (this).inputStream (inputStream)
        pure ()


setURIResolver :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> IO (())
setURIResolver object_ a1 = jmethod object_ "setURIResolver" (\() -> (setURIResolver_impl (javaCast object_ :: AbTransformer))) () a1

setURIResolver_super :: (JavaObjectClass this_) => this_ -> URIResolver.URIResolver -> IO (())
setURIResolver_super object_ a1 = (setURIResolver_impl (javaCast object_ :: AbTransformer)) a1

setURIResolver_impl :: AbTransformer -> URIResolver.URIResolver -> IO (())
setURIResolver_impl this uriResolver = do
        jset (this).uriResolver (uriResolver)
        pure ()


getInputStream :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
getInputStream object_ = jmethod object_ "getInputStream" (\() -> (getInputStream_impl (javaCast object_ :: AbTransformer))) ()

getInputStream_super :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
getInputStream_super object_ = (getInputStream_impl (javaCast object_ :: AbTransformer))

getInputStream_impl :: AbTransformer -> IO (InputStream.InputStream)
getInputStream_impl this = do
        pure ((jget (this).inputStream))


getURIResolver :: (JavaObjectClass this_) => this_ -> IO (URIResolver.URIResolver)
getURIResolver object_ = jmethod object_ "getURIResolver" (\() -> (getURIResolver_impl (javaCast object_ :: AbTransformer))) ()

getURIResolver_super :: (JavaObjectClass this_) => this_ -> IO (URIResolver.URIResolver)
getURIResolver_super object_ = (getURIResolver_impl (javaCast object_ :: AbTransformer))

getURIResolver_impl :: AbTransformer -> IO (URIResolver.URIResolver)
getURIResolver_impl this = do
        pure ((jget (this).uriResolver))


getStreamSource :: (JavaObjectClass this_) => this_ -> IO (StreamSource.StreamSource)
getStreamSource object_ = jmethod object_ "getStreamSource" (\() -> (getStreamSource_impl (javaCast object_ :: AbTransformer))) ()

getStreamSource_super :: (JavaObjectClass this_) => this_ -> IO (StreamSource.StreamSource)
getStreamSource_super object_ = (getStreamSource_impl (javaCast object_ :: AbTransformer))

getStreamSource_impl :: AbTransformer -> IO (StreamSource.StreamSource)
getStreamSource_impl this = do
        (StreamSource.new_1 (jio (AbTransformer.getInputStream this)))


-- throws Exception
translate :: (JavaObjectClass this_) => this_ -> String -> IO (String)
translate object_ a1 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: AbTransformer))) () a1

translate_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
translate_super object_ a1 = (translate_impl (javaCast object_ :: AbTransformer)) a1

translate_impl :: AbTransformer -> String -> IO (String)
translate_impl this xmlDocumentStr = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (TransformInfoInterface.log ((jget (this).transformInfoInterface)))) this "translate(document)" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xMLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("xml: \n" ++ xmlDocumentStr) this "translate(String xmlDocumentStr)")
            when ((jio (AbTransformer.getURIResolver this)) == javaNull) $ do
                javaThrow ((JavaException "Exception" "No URIResolver"))
            result <- (XslHelper.translate ((jio (XslHelper.getInstance))) (jio (AbTransformer.getURIResolver this)) (jio (StreamSource.new_1 (jio (AbTransformer.getInputStream this)))) (jio (StreamSource.new_1 (jio (StringBufferInputStream.new_1 xmlDocumentStr)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("translated xml: " ++ result) this "translate(String xmlDocumentStr)")
            transformInfoObjectConfigGeneratorInterface <- (fmap (\value_ -> javaCast value_ :: TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator) (TransformInfoObjectConfigGeneratorFactory.getInstance_1 ((jio (TransformInfoObjectConfigGeneratorFactory.getInstance))) (jio (AbTransformer.getTransformInfoInterface this))))
            (TransformInfoObjectConfigGenerator.process transformInfoObjectConfigGeneratorInterface result)


