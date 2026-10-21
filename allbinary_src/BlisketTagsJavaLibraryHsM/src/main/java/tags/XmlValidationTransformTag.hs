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
module XmlValidationTransformTag (module XmlValidationTransformTag, module TransformTag) where

import TransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified CommonStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TransformTag

data XmlValidationTransformTag = XmlValidationTransformTag
    { header_ :: JavaHeader
    , base :: TransformTag.TransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull XmlValidationTransformTag where
    javaNull = javaNullRecord "XmlValidationTransformTag"

instance JavaEquals XmlValidationTransformTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlValidationTransformTag where
    (==) = jrecordEquals

instance JavaObjectClass XmlValidationTransformTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO XmlValidationTransformTag
newRecord_ = do
    base <- TransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = XmlValidationTransformTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: XmlValidationTransformTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO XmlValidationTransformTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: XmlValidationTransformTag -> IO ()
init_ this = do
        TransformTag.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: XmlValidationTransformTag))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: XmlValidationTransformTag))

isValid_impl :: XmlValidationTransformTag -> IO (Bool)
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


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: XmlValidationTransformTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: XmlValidationTransformTag))

doStartTag_impl :: XmlValidationTransformTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            Control.Monad.void (TransformTag.setHelper this)
            if (jio (XmlValidationTransformTag.isValid this)) then do
                Control.Monad.void (TransformTag.doStartTag_super this.base)
                javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
            else do
                Control.Monad.void (TransformTag.doStartTag_super this.base)
                javaReturn ((jget (this).base.sKIP_BODY))


