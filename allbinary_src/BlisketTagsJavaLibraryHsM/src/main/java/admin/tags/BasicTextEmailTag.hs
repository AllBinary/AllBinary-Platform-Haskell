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
module BasicTextEmailTag (module BasicTextEmailTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setSubject, setSubject_super, setSubject_impl, setBody, setBody_super, setBody_impl, send, send_super, send_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, subject, body)
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
import qualified Method -- java.lang.reflect.Method
import qualified HashMap -- java.util.HashMap
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified BasicTextEmailHelperFactory -- admin.taghelpers.BasicTextEmailHelperFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CustomTagSupport -- tags.CustomTagSupport

data BasicTextEmailTag = BasicTextEmailTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , logUtil :: IORef (LogUtil.LogUtil)
    , subject :: IORef (String)
    , body :: IORef (String)
    }

instance JavaNull BasicTextEmailTag where
    javaNull = javaNullRecord "BasicTextEmailTag"

instance JavaEquals BasicTextEmailTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTextEmailTag where
    (==) = jrecordEquals

instance JavaObjectClass BasicTextEmailTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicTextEmailTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    subject <- newIORef ""
    body <- newIORef ""
    let this = BasicTextEmailTag header_ base logUtil subject body
    jregisterLevel header_ this
    jregisterMethod header_ "setSubject" (\() -> setSubject_impl this)
    jregisterMethod header_ "setBody" (\() -> setBody_impl this)
    jregisterMethod header_ "send" (\() -> send_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: BasicTextEmailTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.subject ("")
    jset this.body ("")
    pure ()

new_ :: IO BasicTextEmailTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicTextEmailTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        pure ()
        pure ()


setSubject :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSubject object_ a1 = jmethod object_ "setSubject" (\() -> (setSubject_impl (javaCast object_ :: BasicTextEmailTag))) () a1

setSubject_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSubject_super object_ a1 = (setSubject_impl (javaCast object_ :: BasicTextEmailTag)) a1

setSubject_impl :: BasicTextEmailTag -> String -> IO (())
setSubject_impl this value = do
        jset (this).subject (value)
        pure ()


setBody :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBody object_ a1 = jmethod object_ "setBody" (\() -> (setBody_impl (javaCast object_ :: BasicTextEmailTag))) () a1

setBody_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBody_super object_ a1 = (setBody_impl (javaCast object_ :: BasicTextEmailTag)) a1

setBody_impl :: BasicTextEmailTag -> String -> IO (())
setBody_impl this value = do
        jset (this).body (value)
        pure ()


send :: (JavaObjectClass this_) => this_ -> IO (String)
send object_ = jmethod object_ "send" (\() -> (send_impl (javaCast object_ :: BasicTextEmailTag))) ()

send_super :: (JavaObjectClass this_) => this_ -> IO (String)
send_super object_ = (send_impl (javaCast object_ :: BasicTextEmailTag))

send_impl :: BasicTextEmailTag -> IO (String)
send_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to Send Email."
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "send()" e)
            pure (error)
            ) $ do
            propertiesHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put propertiesHashMap "Subject" (jget (this).subject))
            Control.Monad.void (HashMap.put propertiesHashMap "Body" (jget (this).body))
            anyType <- (BasicTextEmailHelperFactory.getInstance ((jio (BasicTextEmailHelperFactory.new_))) propertiesHashMap (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "send" javaNull)
            Control.Monad.void (Method.invoke method anyType javaNull)
            pure ("Email Sent")


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: BasicTextEmailTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: BasicTextEmailTag))

doStartTag_impl :: BasicTextEmailTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (jio (BasicTextEmailTag.send this)))
            pure (sKIP_BODY)


