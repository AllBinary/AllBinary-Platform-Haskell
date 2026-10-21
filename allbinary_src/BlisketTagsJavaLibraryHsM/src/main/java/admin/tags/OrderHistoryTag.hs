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
module OrderHistoryTag (module OrderHistoryTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStatus, setStatus_super, setStatus_impl, setOrderStatus, setOrderStatus_super, setOrderStatus_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, status)
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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified OrderHistoryHelperFactory -- admin.taghelpers.OrderHistoryHelperFactory
import qualified OrderHistoryRequestHelperFactory -- admin.taghelpers.OrderHistoryRequestHelperFactory
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TableTag

data OrderHistoryTag = OrderHistoryTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , status :: IORef (String)
    }

instance JavaNull OrderHistoryTag where
    javaNull = javaNullRecord "OrderHistoryTag"

instance JavaEquals OrderHistoryTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryTag where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHistoryTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    status <- newIORef ""
    let this = OrderHistoryTag header_ base logUtil status
    jregisterLevel header_ this
    jregisterMethod header_ "setStatus" (\() -> setStatus_impl this)
    jregisterMethod header_ "setOrderStatus" (\() -> setOrderStatus_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: OrderHistoryTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.status ("")
    pure ()

new_ :: IO OrderHistoryTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderHistoryTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (jio (OrderHistoryHelperFactory.new_)))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (jio (OrderHistoryRequestHelperFactory.new_)))
        pure ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus object_ a1 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderHistoryTag))) () a1

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus_super object_ a1 = (setStatus_impl (javaCast object_ :: OrderHistoryTag)) a1

setStatus_impl :: OrderHistoryTag -> String -> IO (())
setStatus_impl this value = do
        jset (this).status (value)
        pure ()


-- throws LicensingException
setOrderStatus :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus object_ = jmethod object_ "setOrderStatus" (\() -> (setOrderStatus_impl (javaCast object_ :: OrderHistoryTag))) ()

setOrderStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
setOrderStatus_super object_ = (setOrderStatus_impl (javaCast object_ :: OrderHistoryTag))

setOrderStatus_impl :: OrderHistoryTag -> IO (String)
setOrderStatus_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            let request = (javaCast (jio (getRequest ((jget (this).base.pageContext)))) :: HttpServletRequest.HttpServletRequest)
            anyType <- (OrderHistoryRequestHelperFactory.getInstance ((jio (OrderHistoryRequestHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            if ((jget (this).status) == javaNull) then do
                helperClass <- (jobjectGetClass anyType)
                method <- (Class.getMethod helperClass "setOrderStatus" javaNull)
                let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
                javaReturn (result)
            else do
                helperClass <- (jobjectGetClass anyType)
                let methodParams = (jarrayFromList [(jio (jobjectGetClass (jget (this).status)))])
                method <- (Class.getMethod helperClass "setOrderStatus" methodParams)
                let methodArgs = (jarrayFromList [(jget (this).status)])
                let result = (javaCast (jio (Method.invoke method anyType methodArgs)) :: String)
                javaReturn (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: OrderHistoryTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: OrderHistoryTag))

doStartTag_impl :: OrderHistoryTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (OrderHistoryData.sTATUS) (jget (this).status))
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (OrderHistoryData.sETSTATUS)) - 1) == 0) then do
                        Control.Monad.void (OrderHistoryTag.setOrderStatus this)
                    else do
                        javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


