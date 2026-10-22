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
module ShippingAddressTag (module ShippingAddressTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setValue, setValue_super, setValue_impl, set, set_super, set_impl, setToBillingAddress, setToBillingAddress_super, setToBillingAddress_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, value)
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
import qualified ShippingAddressHelperFactory -- admin.taghelpers.ShippingAddressHelperFactory
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TableTag

data ShippingAddressTag = ShippingAddressTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , value :: IORef (String)
    }

instance JavaNull ShippingAddressTag where
    javaNull = javaNullRecord "ShippingAddressTag"

instance JavaEquals ShippingAddressTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingAddressTag where
    (==) = jrecordEquals

instance JavaObjectClass ShippingAddressTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingAddressTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    value <- newIORef ""
    let this = ShippingAddressTag header_ base logUtil value
    jregisterLevel header_ this
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "setToBillingAddress" (\() -> setToBillingAddress_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: ShippingAddressTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.value ("")
    pure ()

new_ :: IO ShippingAddressTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShippingAddressTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (ShippingAddressHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (ShippingAddressHelperFactory.new_))))
        pure ()


setValue :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: ShippingAddressTag))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: ShippingAddressTag)) a1

setValue_impl :: ShippingAddressTag -> String -> IO (())
setValue_impl this value = do
        jset (this).value (value)
        pure ()


-- throws LicensingException
set :: (JavaObjectClass this_) => this_ -> IO (String)
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: ShippingAddressTag))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (String)
set_super object_ = (set_impl (javaCast object_ :: ShippingAddressTag))

set_impl :: ShippingAddressTag -> IO (String)
set_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (ShippingAddressHelperFactory.getInstance ((jio (ShippingAddressHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "set" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
setToBillingAddress :: (JavaObjectClass this_) => this_ -> IO (String)
setToBillingAddress object_ = jmethod object_ "setToBillingAddress" (\() -> (setToBillingAddress_impl (javaCast object_ :: ShippingAddressTag))) ()

setToBillingAddress_super :: (JavaObjectClass this_) => this_ -> IO (String)
setToBillingAddress_super object_ = (setToBillingAddress_impl (javaCast object_ :: ShippingAddressTag))

setToBillingAddress_impl :: ShippingAddressTag -> IO (String)
setToBillingAddress_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (ShippingAddressHelperFactory.getInstance ((jio (ShippingAddressHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "setToBillingAddress" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: ShippingAddressTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: ShippingAddressTag))

doStartTag_impl :: ShippingAddressTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (ShippingAddressData.sELECT)) - 1) == 0) then do
                        Control.Monad.void (ShippingAddressTag.set this)
                        javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
                    else if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (ShippingAddressData.sETTOBILLINGADDRESS)) - 1) == 0) then do
                        Control.Monad.void (ShippingAddressTag.setToBillingAddress this)
                    else do
                        javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


