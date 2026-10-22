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
module PaymentGatewayTag (module PaymentGatewayTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified PaymentGatewayHelperFactory -- admin.taghelpers.PaymentGatewayHelperFactory
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TableTag

data PaymentGatewayTag = PaymentGatewayTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PaymentGatewayTag where
    javaNull = javaNullRecord "PaymentGatewayTag"

instance JavaEquals PaymentGatewayTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayTag where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewayTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PaymentGatewayTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: PaymentGatewayTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO PaymentGatewayTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentGatewayTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (PaymentGatewayHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (PaymentGatewayHelperFactory.new_))))
        pure ()


-- throws LicensingException, Exception
process :: (JavaObjectClass this_) => this_ -> IO (String)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PaymentGatewayTag))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (String)
process_super object_ = (process_impl (javaCast object_ :: PaymentGatewayTag))

process_impl :: PaymentGatewayTag -> IO (String)
process_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "LicensingException" this (jget ((jget (this).base.base.base.base.commonStrings)).pROCESS) e)
            javaThrow (e)
            ) $ do
            anyType <- (PaymentGatewayHelperFactory.getInstance ((jio (PaymentGatewayHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass (jget ((jget this.base.base.base.base.commonStrings)).pROCESS) javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: PaymentGatewayTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: PaymentGatewayTag))

doStartTag_impl :: PaymentGatewayTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                if ((((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEORDEREVALBODYONERROR)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEORDERANDEVALBODY)) - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEFORMEVALBODYONERROR)) - 1) == 0)) then do
                    output <- (PaymentGatewayTag.process this)
                    do
                        Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).aUTHORIZEORDEREVALBODYONERROR)) - 1) == 0) then do
                        javaReturn ((jget (this).base.sKIP_BODY))
                    else do
                        javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
                else do
                    javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


