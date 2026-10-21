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
module ContextUriResolver where

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
import qualified TransformInfoTemplateData -- org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData

-- implements URIResolver
data ContextUriResolver = ContextUriResolver
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , uriResolverStrings :: IORef (URIResolverStrings.URIResolverStrings)
    , basicURIResolver :: IORef (BasicUriResolver.BasicUriResolver)
    }

instance JavaNull ContextUriResolver where
    javaNull = javaNullRecord "ContextUriResolver"

instance JavaEquals ContextUriResolver where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextUriResolver where
    (==) = jrecordEquals

instance JavaObjectClass ContextUriResolver where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ContextUriResolver
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    uriResolverStrings <- newIORef javaNull
    basicURIResolver <- newIORef javaNull
    let this = ContextUriResolver header_ logUtil uriResolverStrings basicURIResolver
    jregisterLevel header_ this
    URIResolver.registerInterface_ header_
    jregisterMethod header_ "resolve" (\() -> resolve_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ContextUriResolver -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.uriResolverStrings =<< (URIResolverStrings.getInstance)
    jset this.basicURIResolver (javaNull)
    pure ()

new_1 :: BasicUriResolver.BasicUriResolver -> IO ContextUriResolver
new_1 basicURIResolver = do
    this <- newRecord_
    init_1 this basicURIResolver
    pure this

init_1 :: ContextUriResolver -> BasicUriResolver.BasicUriResolver -> IO ()
init_1 this basicURIResolver = do
        initFields_ this
        jset (this).basicURIResolver (basicURIResolver)
        pure ()


-- throws TransformerException
resolve :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Source.Source)
resolve object_ a1 a2 = jmethod object_ "resolve" (\() -> (resolve_impl (javaCast object_ :: ContextUriResolver))) () a1 a2

resolve_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Source.Source)
resolve_super object_ a1 a2 = (resolve_impl (javaCast object_ :: ContextUriResolver)) a1 a2

resolve_impl :: ContextUriResolver -> String -> String -> IO (Source.Source)
resolve_impl this href base_ = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).iNSTALLPATH))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
            Control.Monad.void (StringMaker.append stringBuffer href)
            fileAbPath <- (fmap (\value_ -> javaCast value_ :: AbPath.AbPath) (AbFilePath.new_1 (jio (StringMaker.toString stringBuffer))))
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
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ContextUriResolver))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ContextUriResolver))

toString_impl :: ContextUriResolver -> IO (String)
toString_impl this = do
        handle (\(e :: JavaException) -> do
            pure ("ContextUriResolver - Does not work without webapp path should be changed")
            ) $ do
            pure ((((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).iNSTALLPATH)) + (jget ((jget (this).uriResolverStrings)).iMPORT_URL)))


