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
module TransformInfoCustomUriTransformer (module TransformInfoCustomUriTransformer, module BasicTransformer) where

import BasicTransformer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified BasicUriResolver -- org.allbinary.data.tree.dom.BasicUriResolver
import qualified CustomUriResolver -- org.allbinary.data.tree.dom.CustomUriResolver
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfigAndManipulatorFactory -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface
import qualified BasicTransformer

data TransformInfoCustomUriTransformer = TransformInfoCustomUriTransformer
    { header_ :: JavaHeader
    , base :: BasicTransformer.BasicTransformer
    }

instance JavaNull TransformInfoCustomUriTransformer where
    javaNull = javaNullRecord "TransformInfoCustomUriTransformer"

instance JavaEquals TransformInfoCustomUriTransformer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoCustomUriTransformer where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoCustomUriTransformer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoCustomUriTransformer
newRecord_ = do
    base <- BasicTransformer.newRecord_
    let header_ = base.header_
    let this = TransformInfoCustomUriTransformer header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoCustomUriTransformer -> IO ()
initFields_ this = do
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO TransformInfoCustomUriTransformer
new_2 abeClientInformation transformInfoInterface = do
    this <- newRecord_
    init_2 this abeClientInformation transformInfoInterface
    pure this

init_2 :: TransformInfoCustomUriTransformer -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_2 this abeClientInformation transformInfoInterface = do
        BasicTransformer.init_2 this.base (abeClientInformation) (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let transformInfoObjectConfigInterface = (javaCast (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance ((jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance))) abeClientInformation transformInfoInterface)) :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
        Control.Monad.void (BasicTransformer.setURIResolver this (javaCast (jio (CustomUriResolver.new_2 (jio (TransformInfoObjectConfigInterface.getImportUriPath transformInfoObjectConfigInterface)) (javaCast (jio (BasicTransformer.getURIResolver this)) :: BasicUriResolver.BasicUriResolver))) :: URIResolver.URIResolver))
        pure ()


