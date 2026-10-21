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
-- package tags
module ValidationTransformTag (module ValidationTransformTag, module TransformTag) where

import TransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setXsl, setXsl_super, setXsl_impl, setLogic, setLogic_super, setLogic_impl, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, doStartTag, doStartTag_super, doStartTag_impl, doEndTag, doEndTag_super, doEndTag_impl, logUtil, xslFile, logic)
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
import qualified Class -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified ValidatedViewHelperFactory -- taghelpers.ValidatedViewHelperFactory
import qualified TransformTag

data ValidationTransformTag = ValidationTransformTag
    { header_ :: JavaHeader
    , base :: TransformTag.TransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , xslFile :: IORef (String)
    , logic :: IORef (Bool)
    }

instance JavaNull ValidationTransformTag where
    javaNull = javaNullRecord "ValidationTransformTag"

instance JavaEquals ValidationTransformTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ValidationTransformTag where
    (==) = jrecordEquals

instance JavaObjectClass ValidationTransformTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ValidationTransformTag
newRecord_ = do
    base <- TransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    xslFile <- newIORef ""
    logic <- newIORef False
    let this = ValidationTransformTag header_ base logUtil xslFile logic
    jregisterLevel header_ this
    jregisterMethod header_ "setXsl" (\() -> setXsl_impl this)
    jregisterMethod header_ "setLogic" (\() -> setLogic_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    jregisterMethod header_ "doEndTag" (\() -> doEndTag_impl this)
    pure this

initFields_ :: ValidationTransformTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.xslFile ("")
    jset this.logic (False)
    pure ()

new_ :: IO ValidationTransformTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ValidationTransformTag -> IO ()
init_ this = do
        TransformTag.init_1 this.base (jio (ValidatedViewHelperFactory.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).logic (True)
        pure ()


setXsl :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXsl object_ a1 = jmethod object_ "setXsl" (\() -> (setXsl_impl (javaCast object_ :: ValidationTransformTag))) () a1

setXsl_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXsl_super object_ a1 = (setXsl_impl (javaCast object_ :: ValidationTransformTag)) a1

setXsl_impl :: ValidationTransformTag -> String -> IO (())
setXsl_impl this value = do
        jset (this).xslFile (value)
        Control.Monad.void (TransformTag.setTemplateFile this (jget (this).xslFile))
        pure ()


setLogic :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setLogic object_ a1 = jmethod object_ "setLogic" (\() -> (setLogic_impl (javaCast object_ :: ValidationTransformTag))) () a1

setLogic_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setLogic_super object_ a1 = (setLogic_impl (javaCast object_ :: ValidationTransformTag)) a1

setLogic_impl :: ValidationTransformTag -> Bool -> IO (())
setLogic_impl this logic = do
        jset (this).logic (logic)
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: ValidationTransformTag))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: ValidationTransformTag))

isValid_impl :: ValidationTransformTag -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.base.base.base.base.commonStrings)).iS_VALID) e)
            javaThrow (e)
            ) $ do
            helperClass <- (jobjectGetClass (jio (TransformTag.getHelper this)))
            method <- (Class.getMethod helperClass (jget ((jget this.base.base.base.base.base.base.base.commonStrings)).iS_VALID) javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (TransformTag.getHelper this)) javaNull)) :: Bool)
            pure (result)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: ValidationTransformTag))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: ValidationTransformTag))

validationInfo_impl :: ValidationTransformTag -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.base.base.commonStrings)).eXCEPTION) this "validationInfo()" e)
            javaThrow (e)
            ) $ do
            addressHelperClass <- (jobjectGetClass (jio (TransformTag.getHelper this)))
            method <- (Class.getMethod addressHelperClass "validationInfo" javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (TransformTag.getHelper this)) javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: ValidationTransformTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: ValidationTransformTag))

doStartTag_impl :: ValidationTransformTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                stringBuffer <- (StringMaker.new_)
                let request = (javaCast (jio (getRequest ((jget (this).base.pageContext)))) :: HttpServletRequest.HttpServletRequest)
                Control.Monad.void (StringMaker.append stringBuffer "ValidationViewTag Start For: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformTag.getName this)))
                Control.Monad.void (StringMaker.append stringBuffer "\nView FIle: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformTag.getObjectFile this)))
                Control.Monad.void (StringMaker.append stringBuffer "\nRequest URI: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (HttpServletRequest.getRequestURI request)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget this.base.base.base.base.base.base.tagStrings)).dO_START_TAG))
            Control.Monad.void (TransformTag.setHelper this)
            if (jio (ValidationTransformTag.isValid this)) then do
                Control.Monad.void (TransformTag.doStartTag_super this.base)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "View File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformTag.getObjectFile this)))
                    Control.Monad.void (StringMaker.append stringBuffer "\nLogic includes body if true=")
                    Control.Monad.void (StringMaker.appendboolean stringBuffer (jget (this).logic))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget this.base.base.base.base.base.base.tagStrings)).dO_START_TAG))
                if (jget (this).logic) then do
                    javaReturn (eVAL_BODY_INCLUDE)
                else do
                    javaReturn (sKIP_BODY)
            else do
                Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (ValidationTransformTag.validationInfo this)))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "View File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformTag.getObjectFile this)))
                    Control.Monad.void (StringMaker.append stringBuffer "\nisValid()=false")
                    Control.Monad.void (StringMaker.append stringBuffer "\nLogic skips body if true=")
                    Control.Monad.void (StringMaker.appendboolean stringBuffer (jget (this).logic))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget this.base.base.base.base.base.base.tagStrings)).dO_START_TAG))
                if (jget (this).logic) then do
                    javaReturn (sKIP_BODY)
                else do
                    javaReturn (eVAL_BODY_INCLUDE)


doEndTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag object_ = jmethod object_ "doEndTag" (\() -> (doEndTag_impl (javaCast object_ :: ValidationTransformTag))) ()

doEndTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag_super object_ = (doEndTag_impl (javaCast object_ :: ValidationTransformTag))

doEndTag_impl :: ValidationTransformTag -> IO (Int)
doEndTag_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag Ended" this "doEndTag")
        jset (this).logic (True)
        (TransformTag.doEndTag_super this.base)


