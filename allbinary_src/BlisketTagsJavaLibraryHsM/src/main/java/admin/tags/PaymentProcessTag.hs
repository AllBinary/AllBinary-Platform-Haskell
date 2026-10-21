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
module PaymentProcessTag (module PaymentProcessTag, module StoreValidationTransformTag) where

import StoreValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified PaymentProcessHelperFactory -- admin.taghelpers.PaymentProcessHelperFactory
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data PaymentProcessTag = PaymentProcessTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PaymentProcessTag where
    javaNull = javaNullRecord "PaymentProcessTag"

instance JavaEquals PaymentProcessTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentProcessTag where
    (==) = jrecordEquals

instance JavaObjectClass PaymentProcessTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentProcessTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PaymentProcessTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: PaymentProcessTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO PaymentProcessTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentProcessTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException, Exception
process :: (JavaObjectClass this_) => this_ -> IO (String)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PaymentProcessTag))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (String)
process_super object_ = (process_impl (javaCast object_ :: PaymentProcessTag))

process_impl :: PaymentProcessTag -> IO (String)
process_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lICENSINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "LicensingException" this (jget ((jget (this).base.base.base.base.base.base.base.base.base.commonStrings)).pROCESS) e)
            javaThrow (e)
            ) $ do
            anyType <- (PaymentProcessHelperFactory.getInstance ((jio (PaymentProcessHelperFactory.new_))) (jio (StoreValidationTransformTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass (jget ((jget this.base.base.base.base.base.base.base.base.base.commonStrings)).pROCESS) javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: PaymentProcessTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: PaymentProcessTag))

doStartTag_impl :: PaymentProcessTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            if ((((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEORDEREVALBODYONERROR)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEORDERANDEVALBODY)) - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEFORMEVALBODYONERROR)) - 1) == 0)) then do
                Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (javaToString (jio (PaymentProcessTag.process this)) ++ "<br />"))
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEORDEREVALBODYONERROR)) - 1) == 0) then do
                    javaReturn ((jget (this).base.sKIP_BODY))
                else do
                    javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
            else do
                javaThrow ((JavaException "Exception" "No Such Payment Processing Command"))


