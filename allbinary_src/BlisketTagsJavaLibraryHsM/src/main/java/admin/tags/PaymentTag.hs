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
module PaymentTag (module PaymentTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStoreName, setStoreName_super, setStoreName_impl, select, select_super, select_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, storeName, propertiesHashMap)
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
import qualified PaymentHelperFactory -- admin.taghelpers.PaymentHelperFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TableTag

data PaymentTag = PaymentTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , storeName :: IORef (String)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull PaymentTag where
    javaNull = javaNullRecord "PaymentTag"

instance JavaEquals PaymentTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTag where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    storeName <- newIORef ""
    propertiesHashMap <- newIORef javaNull
    let this = PaymentTag header_ base logUtil storeName propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "select" (\() -> select_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: PaymentTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.storeName ("")
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO PaymentTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (jio (PaymentHelperFactory.new_)))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (jio (PaymentHelperFactory.new_)))
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: PaymentTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: PaymentTag)) a1

setStoreName_impl :: PaymentTag -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


-- throws LicensingException
select :: (JavaObjectClass this_) => this_ -> IO (String)
select object_ = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: PaymentTag))) ()

select_super :: (JavaObjectClass this_) => this_ -> IO (String)
select_super object_ = (select_impl (javaCast object_ :: PaymentTag))

select_impl :: PaymentTag -> IO (String)
select_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (PaymentHelperFactory.getInstance ((jio (PaymentHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget this.base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "select" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: PaymentTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: PaymentTag))

doStartTag_impl :: PaymentTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
                jset (this).propertiesHashMap (assignedValue)
                Control.Monad.void (HashMap.put ((jget (this).propertiesHashMap)) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (PaymentData.sELECT)) - 1) == 0) then do
                        output <- (PaymentTag.select this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                        javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
                    else do
                        javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


