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
module StoreFrontsTag (module StoreFrontsTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, generateSelect, generateSelect_super, generateSelect_impl, install, install_super, install_impl, sendStoreCreatedEmails, sendStoreCreatedEmails_super, sendStoreCreatedEmails_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified StoreFrontsHelperFactory -- admin.taghelpers.StoreFrontsHelperFactory
import qualified StoreFrontsRequestHelperFactory -- admin.taghelpers.StoreFrontsRequestHelperFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TableTag

data StoreFrontsTag = StoreFrontsTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StoreFrontsTag where
    javaNull = javaNullRecord "StoreFrontsTag"

instance JavaEquals StoreFrontsTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontsTag where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontsTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFrontsTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = StoreFrontsTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "generateSelect" (\() -> generateSelect_impl this)
    jregisterMethod header_ "install" (\() -> install_impl this)
    jregisterMethod header_ "sendStoreCreatedEmails" (\() -> sendStoreCreatedEmails_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: StoreFrontsTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO StoreFrontsTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontsTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (StoreFrontsHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (StoreFrontsRequestHelperFactory.new_))))
        pure ()


-- throws LicensingException
generateSelect :: (JavaObjectClass this_) => this_ -> IO (String)
generateSelect object_ = jmethod object_ "generateSelect" (\() -> (generateSelect_impl (javaCast object_ :: StoreFrontsTag))) ()

generateSelect_super :: (JavaObjectClass this_) => this_ -> IO (String)
generateSelect_super object_ = (generateSelect_impl (javaCast object_ :: StoreFrontsTag))

generateSelect_impl :: StoreFrontsTag -> IO (String)
generateSelect_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagHelperFactoryInterface this))) (jio (TableTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "generateSelect" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
install :: (JavaObjectClass this_) => this_ -> IO (String)
install object_ = jmethod object_ "install" (\() -> (install_impl (javaCast object_ :: StoreFrontsTag))) ()

install_super :: (JavaObjectClass this_) => this_ -> IO (String)
install_super object_ = (install_impl (javaCast object_ :: StoreFrontsTag))

install_impl :: StoreFrontsTag -> IO (String)
install_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagRequestHelperFactoryInterface this))) (jio (TableTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "install" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
sendStoreCreatedEmails :: (JavaObjectClass this_) => this_ -> IO (String)
sendStoreCreatedEmails object_ = jmethod object_ "sendStoreCreatedEmails" (\() -> (sendStoreCreatedEmails_impl (javaCast object_ :: StoreFrontsTag))) ()

sendStoreCreatedEmails_super :: (JavaObjectClass this_) => this_ -> IO (String)
sendStoreCreatedEmails_super object_ = (sendStoreCreatedEmails_impl (javaCast object_ :: StoreFrontsTag))

sendStoreCreatedEmails_impl :: StoreFrontsTag -> IO (String)
sendStoreCreatedEmails_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (TagHelperFactoryInterface.getInstance ((jio (TableTag.getTagRequestHelperFactoryInterface this))) (jio (TableTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "sendStoreCreatedEmails" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: StoreFrontsTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: StoreFrontsTag))

doStartTag_impl :: StoreFrontsTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    storeFrontData <- (StoreFrontData.getInstance)
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget (storeFrontData).sELECT)) - 1) == 0) then do
                        Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (jio (StoreFrontsTag.generateSelect this)))
                    else if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget (storeFrontData).iNSTALL)) - 1) == 0) then do
                        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) "current" (jio (TableTag.getCurrent this)))
                        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) "total" (jio (TableTag.getTotal this)))
                        when ((jio (TableTag.getCurrent this)) == (jio (TableTag.getTotal this))) $ do
                            javaReturn (TagSupport.eVAL_BODY_INCLUDE)
                        Control.Monad.void (StoreFrontsTag.install this)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget (storeFrontData).iNSTALL_COMPLETE)) - 1) == 0) then do
                        Control.Monad.void (StoreFrontsTag.sendStoreCreatedEmails this)
                    else do
                        javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


