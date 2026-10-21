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
module StoreUriResolver where

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
import qualified URIResolverStrings -- same package or java.lang
import qualified BasicUriResolver -- same package or java.lang
import qualified Source -- javax.xml.transform.Source
import qualified TransformerException -- javax.xml.transform.TransformerException
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified StreamSource -- javax.xml.transform.stream.StreamSource
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbFilePath -- org.allbinary.logic.io.path.AbFilePath
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoHttpStoreInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoTemplateData -- org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData

-- implements URIResolver
data StoreUriResolver = StoreUriResolver
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , uriResolverStrings :: IORef (URIResolverStrings.URIResolverStrings)
    , basicURIResolver :: IORef (BasicUriResolver.BasicUriResolver)
    , parentTransformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    }

instance JavaNull StoreUriResolver where
    javaNull = javaNullRecord "StoreUriResolver"

instance JavaEquals StoreUriResolver where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreUriResolver where
    (==) = jrecordEquals

instance JavaObjectClass StoreUriResolver where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreUriResolver
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    uriResolverStrings <- newIORef javaNull
    basicURIResolver <- newIORef javaNull
    parentTransformInfoInterface <- newIORef javaNull
    let this = StoreUriResolver header_ logUtil uriResolverStrings basicURIResolver parentTransformInfoInterface
    jregisterLevel header_ this
    URIResolver.registerInterface_ header_
    jregisterMethod header_ "resolve" (\() -> resolve_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: StoreUriResolver -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.uriResolverStrings =<< (URIResolverStrings.getInstance)
    jset this.basicURIResolver (javaNull)
    jset this.parentTransformInfoInterface (javaNull)
    pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> BasicUriResolver.BasicUriResolver -> IO StoreUriResolver
new_2 parentTransformInfoInterface basicURIResolver = do
    this <- newRecord_
    init_2 this parentTransformInfoInterface basicURIResolver
    pure this

init_2 :: StoreUriResolver -> TransformInfoInterface.TransformInfoInterface -> BasicUriResolver.BasicUriResolver -> IO ()
init_2 this parentTransformInfoInterface basicURIResolver = do
        initFields_ this
        jset (this).parentTransformInfoInterface (parentTransformInfoInterface)
        jset (this).basicURIResolver (basicURIResolver)
        pure ()


-- throws TransformerException
resolve :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Source.Source)
resolve object_ a1 a2 = jmethod object_ "resolve" (\() -> (resolve_impl (javaCast object_ :: StoreUriResolver))) () a1 a2

resolve_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Source.Source)
resolve_super object_ a1 a2 = (resolve_impl (javaCast object_ :: StoreUriResolver)) a1 a2

resolve_impl :: StoreUriResolver -> String -> String -> IO (Source.Source)
resolve_impl this href base_ = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            let transformInfoHttpStoreInterface = (javaCast (jget (this).parentTransformInfoInterface) :: TransformInfoHttpStoreInterface.TransformInfoHttpStoreInterface)
            Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath))))) (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)))) (jio (TransformInfoHttpStoreInterface.getStoreName transformInfoHttpStoreInterface))))) (jget ((jio (AbPathData.getInstance))).sEPARATOR)))) href)
            let fileAbPath = (javaCast (jio (AbFilePath.new_1 (jio (StringMaker.toString stringBuffer)))) :: AbPath.AbPath)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xMLLOGGING))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).uriResolverStrings)).aTTEMPT))
                Control.Monad.void (StringMaker.append stringBuffer href)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).uriResolverStrings)).bASE))
                Control.Monad.void (StringMaker.append stringBuffer base_)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).uriResolverStrings)).nEW_PATH))
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString fileAbPath)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).uriResolverStrings)).nOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).uriResolverStrings)).uRL_GLOBAL))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).uriResolverStrings)).rEQUIRED_EXTENSION))
                Control.Monad.void (StringMaker.append stringBuffer (jio (BasicUriResolver.getExtension ((jget (this).basicURIResolver)))))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).uriResolverStrings)).rESOLVE))
            (fmap (\value_ -> javaCast value_ :: Source.Source) (StreamSource.new_1 (jio (CryptFileReader.getInputStream ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoTemplateData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoTemplateData.getInstance))).eNCRYPTED_EXTENSION)))) fileAbPath))))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: StoreUriResolver))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: StoreUriResolver))

toString_impl :: StoreUriResolver -> IO (String)
toString_impl this = do
        handle (\(e :: JavaException) -> do
            pure ("StoreUriResolver - Does not work without webapp path should be changed")
            ) $ do
            pure ((javaToString ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH)) ++ "{Store Name if Any}/{import url}"))


