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
module StoreFrontTag (module StoreFrontTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCommand, setCommand_super, setCommand_impl, setStoreName, setStoreName_super, setStoreName_impl, getCurrentLocation, getCurrentLocation_super, getCurrentLocation_impl, getCurrentHomeLocation, getCurrentHomeLocation_super, getCurrentHomeLocation_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, command, storeName, propertiesHashMap)
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
import qualified Method -- java.lang.reflect.Method
import qualified HashMap -- java.util.HashMap
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified StoreFrontHelperFactory -- admin.taghelpers.StoreFrontHelperFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CustomTagSupport -- tags.CustomTagSupport

data StoreFrontTag = StoreFrontTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , logUtil :: IORef (LogUtil.LogUtil)
    , command :: IORef (String)
    , storeName :: IORef (String)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull StoreFrontTag where
    javaNull = javaNullRecord "StoreFrontTag"

instance JavaEquals StoreFrontTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontTag where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFrontTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    command <- newIORef ""
    storeName <- newIORef ""
    propertiesHashMap <- newIORef javaNull
    let this = StoreFrontTag header_ base logUtil command storeName propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "getCurrentLocation" (\() -> getCurrentLocation_impl this)
    jregisterMethod header_ "getCurrentHomeLocation" (\() -> getCurrentHomeLocation_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: StoreFrontTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.command ("")
    jset this.storeName ("")
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO StoreFrontTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        pure ()
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: StoreFrontTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: StoreFrontTag)) a1

setCommand_impl :: StoreFrontTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: StoreFrontTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: StoreFrontTag)) a1

setStoreName_impl :: StoreFrontTag -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


-- throws LicensingException
getCurrentLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentLocation object_ = jmethod object_ "getCurrentLocation" (\() -> (getCurrentLocation_impl (javaCast object_ :: StoreFrontTag))) ()

getCurrentLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentLocation_super object_ = (getCurrentLocation_impl (javaCast object_ :: StoreFrontTag))

getCurrentLocation_impl :: StoreFrontTag -> IO (String)
getCurrentLocation_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (StoreFrontHelperFactory.getInstance ((jio (StoreFrontHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "getCurrentLocation" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
getCurrentHomeLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeLocation object_ = jmethod object_ "getCurrentHomeLocation" (\() -> (getCurrentHomeLocation_impl (javaCast object_ :: StoreFrontTag))) ()

getCurrentHomeLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeLocation_super object_ = (getCurrentHomeLocation_impl (javaCast object_ :: StoreFrontTag))

getCurrentHomeLocation_impl :: StoreFrontTag -> IO (String)
getCurrentHomeLocation_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (StoreFrontHelperFactory.getInstance ((jio (StoreFrontHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "getCurrentHomeLocation" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: StoreFrontTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: StoreFrontTag))

doStartTag_impl :: StoreFrontTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when ((jget (this).command) /= javaNull) $ do
                assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
                jset (this).propertiesHashMap (assignedValue)
                Control.Monad.void (HashMap.put ((jget (this).propertiesHashMap)) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
                if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).gETCURRENTLOCATION)) - 1) == 0) then do
                    Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (StoreFrontTag.getCurrentLocation this)))
                else when ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).gETCURRENTHOMELOCATION)) - 1) == 0) $ do
                    Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (StoreFrontTag.getCurrentHomeLocation this)))
            pure (sKIP_BODY)


