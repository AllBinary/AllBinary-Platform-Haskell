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
-- package admin.taghelpers
module CustomLoaderHelper where

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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AppUrlGlobals -- org.allbinary.globals.AppUrlGlobals
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CustomLoaderHelper = CustomLoaderHelper
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull CustomLoaderHelper where
    javaNull = javaNullRecord "CustomLoaderHelper"

instance JavaEquals CustomLoaderHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomLoaderHelper where
    (==) = jrecordEquals

instance JavaObjectClass CustomLoaderHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomLoaderHelper
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = CustomLoaderHelper header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getWebappPath" (\() -> getWebappPath_impl this)
    jregisterMethod header_ "setWebappPath" (\() -> setWebappPath_impl this)
    pure this

initFields_ :: CustomLoaderHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO CustomLoaderHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: CustomLoaderHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        initFields_ this
        pure ()
        pure ()

new_ :: IO CustomLoaderHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomLoaderHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getWebappPath :: (JavaObjectClass this_) => this_ -> IO (String)
getWebappPath object_ = jmethod object_ "getWebappPath" (\() -> (getWebappPath_impl (javaCast object_ :: CustomLoaderHelper))) ()

getWebappPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWebappPath_super object_ = (getWebappPath_impl (javaCast object_ :: CustomLoaderHelper))

getWebappPath_impl :: CustomLoaderHelper -> IO (String)
getWebappPath_impl this = do
        handle (\(e :: JavaException) -> do
            pure (javaNull)
            ) $ do
            (getWebappPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))


-- throws Exception
setWebappPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWebappPath object_ a1 = jmethod object_ "setWebappPath" (\() -> (setWebappPath_impl (javaCast object_ :: CustomLoaderHelper))) () a1

setWebappPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWebappPath_super object_ a1 = (setWebappPath_impl (javaCast object_ :: CustomLoaderHelper)) a1

setWebappPath_impl :: CustomLoaderHelper -> String -> IO (())
setWebappPath_impl this path = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "setWebappPath()" e)
            ) $ do
            urlGlobals <- (AppUrlGlobals.new_)
            Control.Monad.void (AppUrlGlobals.setWebappPath urlGlobals path)
            Control.Monad.void (URLGLOBALS.init (javaCast urlGlobals))
        pure ()


