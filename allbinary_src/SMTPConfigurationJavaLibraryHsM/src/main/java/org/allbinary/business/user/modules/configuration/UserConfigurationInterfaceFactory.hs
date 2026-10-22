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
-- package org.allbinary.business.user.modules.configuration
module UserConfigurationInterfaceFactory where

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
import qualified UserConfigurationData -- same package or java.lang
import qualified UserConfigurationView -- same package or java.lang
import qualified UserConfigurationInterface -- same package or java.lang
import qualified UserConfiguration -- same package or java.lang
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data UserConfigurationInterfaceFactory = UserConfigurationInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull UserConfigurationInterfaceFactory where
    javaNull = javaNullRecord "UserConfigurationInterfaceFactory"

instance JavaEquals UserConfigurationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserConfigurationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass UserConfigurationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

configurationName = "DefaultUserConfiguration"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserConfigurationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = UserConfigurationInterfaceFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: UserConfigurationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO UserConfigurationInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserConfigurationInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass o1) => o1 -> IO (UserConfigurationInterface.UserConfigurationInterface)
getInstance a1
    | jisInstanceOf a1 (javaNull :: Document.Document) = getInstance_overload1 (javaCast a1 :: Document.Document)
    | jisInstanceOf a1 (javaNull :: UserRole.UserRole) = getInstance_overload2 (javaCast a1 :: UserRole.UserRole)
    | otherwise = getInstance_overload2 (javaCast a1 :: UserRole.UserRole)

-- throws Exception
getInstance_overload1 :: Document.Document -> IO (UserConfigurationInterface.UserConfigurationInterface)
getInstance_overload1 document = do
        configurationNode <- (DomSearchHelper.getNode (UserConfigurationData.nAME) (jio (Document.getChildNodes document)))
        pure ((javaCast (jio (UserConfigurationView.getUserConfigurationInterface ((jio (UserConfigurationView.new_1 configurationNode))))) :: UserConfigurationInterface.UserConfigurationInterface))


-- throws Exception
getInstance_overload2 :: UserRole.UserRole -> IO (UserConfigurationInterface.UserConfigurationInterface)
getInstance_overload2 userRole = do
        abPath <- (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) + (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).uSERCONFIGURATIONPATH)) (((javaToString UserConfigurationInterfaceFactory.configurationName ++ (jio (UserRole.toString userRole))) ++ javaToString (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP)) ++ javaToString UserConfigurationData.uNCRYPTED_EXTENSION))
        documentString <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (UserConfigurationData.uNCRYPTED_EXTENSION) (UserConfigurationData.eNCRYPTED_EXTENSION)))) abPath)
        document <- (DomDocumentHelper.create_1 documentString)
        (UserConfigurationInterfaceFactory.getInstance document)


-- throws Exception
getInstance_0 :: IO (UserConfigurationInterface.UserConfigurationInterface)
getInstance_0 = do
        (fmap (\value_ -> javaCast value_ :: UserConfigurationInterface.UserConfigurationInterface) (UserConfiguration.new_))


