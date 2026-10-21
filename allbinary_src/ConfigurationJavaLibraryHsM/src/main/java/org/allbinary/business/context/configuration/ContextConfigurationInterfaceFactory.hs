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
-- package org.allbinary.business.context.configuration
module ContextConfigurationInterfaceFactory where

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
import qualified ContextConfigurationData -- same package or java.lang
import qualified ContextConfigurationView -- same package or java.lang
import qualified ContextConfigurationInterface -- same package or java.lang
import qualified ContextConfigurationPathUtil -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data ContextConfigurationInterfaceFactory = ContextConfigurationInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull ContextConfigurationInterfaceFactory where
    javaNull = javaNullRecord "ContextConfigurationInterfaceFactory"

instance JavaEquals ContextConfigurationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextConfigurationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass ContextConfigurationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ContextConfigurationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ContextConfigurationInterfaceFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    pure this

initFields_ :: ContextConfigurationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ContextConfigurationInterfaceFactory)
getInstance = do
        pure (ContextConfigurationInterfaceFactory.instance_)

new_ :: IO ContextConfigurationInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ContextConfigurationInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance this a1
    | jisInstanceOf a1 (javaNull :: Document.Document) = getInstance_overload1 this (javaCast a1 :: Document.Document)
    | jisInstanceOf a1 (javaNull :: String) = getInstance_overload2 this (javaCast a1 :: String)
    | otherwise = getInstance_overload2 this (javaCast a1 :: String)

-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance_overload1 object_ a1 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: ContextConfigurationInterfaceFactory))) () a1

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance_overload1_super object_ a1 = (getInstance_overload1_impl (javaCast object_ :: ContextConfigurationInterfaceFactory)) a1

getInstance_overload1_impl :: ContextConfigurationInterfaceFactory -> Document.Document -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance_overload1_impl this document = do
        contextConfigurationData <- (ContextConfigurationData.getInstance)
        contextConfigurationNode <- (DomSearchHelper.getNode (jget (contextConfigurationData).nAME) (jio (Document.getChildNodes document)))
        pure ((javaCast (jio (ContextConfigurationView.getContextConfigurationInterface ((jio (ContextConfigurationView.new_1 contextConfigurationNode))))) :: ContextConfigurationInterface.ContextConfigurationInterface))


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> String -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance_overload2 object_ a1 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: ContextConfigurationInterfaceFactory))) () a1

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> String -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance_overload2_super object_ a1 = (getInstance_overload2_impl (javaCast object_ :: ContextConfigurationInterfaceFactory)) a1

getInstance_overload2_impl :: ContextConfigurationInterfaceFactory -> String -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getInstance_overload2_impl this contextName = do
        abPath <- (ContextConfigurationPathUtil.getAbPath contextName)
        contextConfigurationData <- (ContextConfigurationData.getInstance)
        documentString <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget (contextConfigurationData).uNCRYPTED_EXTENSION) (jget (contextConfigurationData).eNCRYPTED_EXTENSION)))) abPath)
        document <- (DomDocumentHelper.create documentString)
        (fmap (\value_ -> javaCast value_ :: ContextConfigurationInterface.ContextConfigurationInterface) (ContextConfigurationInterfaceFactory.getInstance this document))


