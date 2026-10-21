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
-- package org.allbinary.logic.system
module SoftwareInformation where

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
import qualified KotlinUtil -- org.allbinary.KotlinUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data SoftwareInformation = SoftwareInformation
    { header_ :: JavaHeader
    , name :: IORef (String)
    , shortName :: IORef (String)
    , version :: IORef (String)
    }

instance JavaNull SoftwareInformation where
    javaNull = javaNullRecord "SoftwareInformation"

instance JavaEquals SoftwareInformation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SoftwareInformation where
    (==) = jrecordEquals

instance JavaObjectClass SoftwareInformation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SoftwareInformation
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    shortName <- newIORef ""
    version <- newIORef ""
    let this = SoftwareInformation header_ name shortName version
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getVersion" (\() -> getVersion_impl this)
    jregisterMethod header_ "toShortString" (\() -> toShortString_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: SoftwareInformation -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.shortName (javaNull)
    jset this.version (javaNull)
    pure ()

new_3 :: String -> String -> String -> IO SoftwareInformation
new_3 name version shortName = do
    this <- newRecord_
    init_3 this name version shortName
    pure this

init_3 :: SoftwareInformation -> String -> String -> String -> IO ()
init_3 this name version shortName = do
        initFields_ this
        jset (this).name (name)
        jset (this).version (version)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) shortName))) (jio (KotlinUtil.getShortName))))))
        jset (this).shortName (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SoftwareInformation))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SoftwareInformation))

getName_impl :: SoftwareInformation -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: SoftwareInformation))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: SoftwareInformation))

getVersion_impl :: SoftwareInformation -> IO (String)
getVersion_impl this = do
        pure ((jget (this).version))


toShortString :: (JavaObjectClass this_) => this_ -> IO (String)
toShortString object_ = jmethod object_ "toShortString" (\() -> (toShortString_impl (javaCast object_ :: SoftwareInformation))) ()

toShortString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toShortString_super object_ = (toShortString_impl (javaCast object_ :: SoftwareInformation))

toShortString_impl :: SoftwareInformation -> IO (String)
toShortString_impl this = do
        pure ((jget (this).shortName))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: SoftwareInformation))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: SoftwareInformation))

toString_impl :: SoftwareInformation -> IO (String)
toString_impl this = do
        let nAME = "Name: "
        let vERSION = "Version: "
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer nAME)
        Control.Monad.void (StringMaker.append stringBuffer (jio (SoftwareInformation.getName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer vERSION)
        Control.Monad.void (StringMaker.append stringBuffer (jio (SoftwareInformation.getVersion this)))
        (StringMaker.toString stringBuffer)


