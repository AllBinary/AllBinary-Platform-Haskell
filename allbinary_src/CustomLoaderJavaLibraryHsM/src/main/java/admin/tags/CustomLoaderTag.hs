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
-- package admin.tags
module CustomLoaderTag (module CustomLoaderTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCommand, setCommand_super, setCommand_impl, setWebappPath, setWebappPath_super, setWebappPath_impl, setCustomLoaderWebappPath, setCustomLoaderWebappPath_super, setCustomLoaderWebappPath_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, command, webappPath, propertiesHashMap)
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
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified HashMap -- java.util.HashMap
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified CustomLoaderHelperFactory -- admin.taghelpers.CustomLoaderHelperFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CustomTagSupport -- tags.CustomTagSupport

data CustomLoaderTag = CustomLoaderTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , logUtil :: IORef (LogUtil.LogUtil)
    , command :: IORef (String)
    , webappPath :: IORef (String)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull CustomLoaderTag where
    javaNull = javaNullRecord "CustomLoaderTag"

instance JavaEquals CustomLoaderTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomLoaderTag where
    (==) = jrecordEquals

instance JavaObjectClass CustomLoaderTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomLoaderTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    command <- newIORef ""
    webappPath <- newIORef ""
    propertiesHashMap <- newIORef javaNull
    let this = CustomLoaderTag header_ base logUtil command webappPath propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "setWebappPath" (\() -> setWebappPath_impl this)
    jregisterMethod header_ "setCustomLoaderWebappPath" (\() -> setCustomLoaderWebappPath_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: CustomLoaderTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.command ("")
    jset this.webappPath ("")
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO CustomLoaderTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomLoaderTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        pure ()
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: CustomLoaderTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: CustomLoaderTag)) a1

setCommand_impl :: CustomLoaderTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


setWebappPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWebappPath object_ a1 = jmethod object_ "setWebappPath" (\() -> (setWebappPath_impl (javaCast object_ :: CustomLoaderTag))) () a1

setWebappPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWebappPath_super object_ a1 = (setWebappPath_impl (javaCast object_ :: CustomLoaderTag)) a1

setWebappPath_impl :: CustomLoaderTag -> String -> IO (())
setWebappPath_impl this value = do
        jset (this).webappPath (value)
        pure ()


-- throws LicensingException
setCustomLoaderWebappPath :: (JavaObjectClass this_) => this_ -> IO (())
setCustomLoaderWebappPath object_ = jmethod object_ "setCustomLoaderWebappPath" (\() -> (setCustomLoaderWebappPath_impl (javaCast object_ :: CustomLoaderTag))) ()

setCustomLoaderWebappPath_super :: (JavaObjectClass this_) => this_ -> IO (())
setCustomLoaderWebappPath_super object_ = (setCustomLoaderWebappPath_impl (javaCast object_ :: CustomLoaderTag))

setCustomLoaderWebappPath_impl :: CustomLoaderTag -> IO (())
setCustomLoaderWebappPath_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (CustomLoaderHelperFactory.getInstance ((jio (CustomLoaderHelperFactory.new_))) (jget (this).propertiesHashMap) (jget this.base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            let methodParams = (jarrayFromList [(jio (jobjectGetClass (jget (this).webappPath)))])
            let methodArgs = (jarrayFromList [(jget (this).webappPath)])
            setMethod <- (Class.getMethod helperClass "setWebappPath" methodParams)
            Control.Monad.void (Method.invoke setMethod anyType methodArgs)
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: CustomLoaderTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: CustomLoaderTag))

doStartTag_impl :: CustomLoaderTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget this.base.tagStrings)).dO_START_TAG))
            when ((jget (this).command) /= javaNull) $ do
                assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
                jset (this).propertiesHashMap (assignedValue)
                when ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).sET)) - 1) == 0) $ do
                    Control.Monad.void (CustomLoaderTag.setCustomLoaderWebappPath this)
            pure (sKIP_BODY)


