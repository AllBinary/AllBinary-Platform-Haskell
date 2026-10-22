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
module QuoteRequestTag (module QuoteRequestTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStoreName, setStoreName_super, setStoreName_impl, email, email_super, email_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, storeName)
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
import qualified QuoteHelperFactory -- admin.taghelpers.QuoteHelperFactory
import qualified QuoteRequestHelperFactory -- admin.taghelpers.QuoteRequestHelperFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TableTag

data QuoteRequestTag = QuoteRequestTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , storeName :: IORef (String)
    }

instance JavaNull QuoteRequestTag where
    javaNull = javaNullRecord "QuoteRequestTag"

instance JavaEquals QuoteRequestTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq QuoteRequestTag where
    (==) = jrecordEquals

instance JavaObjectClass QuoteRequestTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO QuoteRequestTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    storeName <- newIORef ""
    let this = QuoteRequestTag header_ base logUtil storeName
    jregisterLevel header_ this
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "email" (\() -> email_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: QuoteRequestTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.storeName ("")
    pure ()

new_ :: IO QuoteRequestTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: QuoteRequestTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (QuoteHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (QuoteRequestHelperFactory.new_))))
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: QuoteRequestTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: QuoteRequestTag)) a1

setStoreName_impl :: QuoteRequestTag -> String -> IO (())
setStoreName_impl this storeName = do
        jset (this).storeName (storeName)
        pure ()


-- throws LicensingException
email :: (JavaObjectClass this_) => this_ -> IO (String)
email object_ = jmethod object_ "email" (\() -> (email_impl (javaCast object_ :: QuoteRequestTag))) ()

email_super :: (JavaObjectClass this_) => this_ -> IO (String)
email_super object_ = (email_impl (javaCast object_ :: QuoteRequestTag))

email_impl :: QuoteRequestTag -> IO (String)
email_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (QuoteHelperFactory.getInstance ((jio (QuoteHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "email" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: QuoteRequestTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: QuoteRequestTag))

doStartTag_impl :: QuoteRequestTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
                if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) "EMAIL") - 1) == 0) then do
                    Control.Monad.void (QuoteRequestTag.email this)
                    javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
                else do
                    javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


