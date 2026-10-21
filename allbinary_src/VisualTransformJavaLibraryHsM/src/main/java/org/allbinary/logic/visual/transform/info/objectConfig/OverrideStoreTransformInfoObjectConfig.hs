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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module OverrideStoreTransformInfoObjectConfig (module OverrideStoreTransformInfoObjectConfig, module GenericStoreTransformInfoObjectConfig) where

import GenericStoreTransformInfoObjectConfig hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, generate, generate_super, generate_impl)
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
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified GenericStoreTransformInfoObjectConfig

data OverrideStoreTransformInfoObjectConfig = OverrideStoreTransformInfoObjectConfig
    { header_ :: JavaHeader
    , base :: GenericStoreTransformInfoObjectConfig.GenericStoreTransformInfoObjectConfig
    }

instance JavaNull OverrideStoreTransformInfoObjectConfig where
    javaNull = javaNullRecord "OverrideStoreTransformInfoObjectConfig"

instance JavaEquals OverrideStoreTransformInfoObjectConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OverrideStoreTransformInfoObjectConfig where
    (==) = jrecordEquals

instance JavaObjectClass OverrideStoreTransformInfoObjectConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OverrideStoreTransformInfoObjectConfig
newRecord_ = do
    base <- GenericStoreTransformInfoObjectConfig.newRecord_
    let header_ = base.header_
    let this = OverrideStoreTransformInfoObjectConfig header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    pure this

initFields_ :: OverrideStoreTransformInfoObjectConfig -> IO ()
initFields_ this = do
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO OverrideStoreTransformInfoObjectConfig
new_2 abeClientInformation transformInfoInterface = do
    this <- newRecord_
    init_2 this abeClientInformation transformInfoInterface
    pure this

init_2 :: OverrideStoreTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_2 this abeClientInformation transformInfoInterface = do
        GenericStoreTransformInfoObjectConfig.init_2 this.base (abeClientInformation) (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_3 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO OverrideStoreTransformInfoObjectConfig
new_3 abeClientInformation transformInfoInterface document = do
    this <- newRecord_
    init_3 this abeClientInformation transformInfoInterface document
    pure this

init_3 :: OverrideStoreTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO ()
init_3 this abeClientInformation transformInfoInterface document = do
        GenericStoreTransformInfoObjectConfig.init_3 this.base (abeClientInformation) (transformInfoInterface) (document)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GenericStoreTransformInfoObjectConfig.setDocument this (jio (OverrideStoreTransformInfoObjectConfig.generate this (jio (GenericStoreTransformInfoObjectConfig.toXmlDoc this)))))
        pure ()

new_4 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO OverrideStoreTransformInfoObjectConfig
new_4 abeClientInformation transformInfoInterface name type_ = do
    this <- newRecord_
    init_4 this abeClientInformation transformInfoInterface name type_
    pure this

init_4 :: OverrideStoreTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO ()
init_4 this abeClientInformation transformInfoInterface name type_ = do
        GenericStoreTransformInfoObjectConfig.init_4 this.base (abeClientInformation) (transformInfoInterface) (name) (type_)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GenericStoreTransformInfoObjectConfig.setDocument this (jio (OverrideStoreTransformInfoObjectConfig.generate this (jio (GenericStoreTransformInfoObjectConfig.toXmlDoc this)))))
        pure ()


-- throws Exception
generate :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Document.Document)
generate object_ a1 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: OverrideStoreTransformInfoObjectConfig))) () a1

generate_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Document.Document)
generate_super object_ a1 = (generate_impl (javaCast object_ :: OverrideStoreTransformInfoObjectConfig)) a1

generate_impl :: OverrideStoreTransformInfoObjectConfig -> Document.Document -> IO (Document.Document)
generate_impl this objectConfigDocument = do
        newObjectConfigDocument <- (GenericStoreTransformInfoObjectConfig.generate_super this.base objectConfigDocument)
        pure (newObjectConfigDocument)


