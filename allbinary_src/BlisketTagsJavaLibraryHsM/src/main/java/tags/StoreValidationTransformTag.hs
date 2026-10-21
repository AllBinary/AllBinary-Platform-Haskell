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
module StoreValidationTransformTag (module StoreValidationTransformTag, module ValidationTransformTag) where

import ValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStoreName, setStoreName_super, setStoreName_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, storeName)
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
import qualified TagStrings -- same package or java.lang
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationTransformTag

data StoreValidationTransformTag = StoreValidationTransformTag
    { header_ :: JavaHeader
    , base :: ValidationTransformTag.ValidationTransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , storeName :: IORef (String)
    }

instance JavaNull StoreValidationTransformTag where
    javaNull = javaNullRecord "StoreValidationTransformTag"

instance JavaEquals StoreValidationTransformTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreValidationTransformTag where
    (==) = jrecordEquals

instance JavaObjectClass StoreValidationTransformTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreValidationTransformTag
newRecord_ = do
    base <- ValidationTransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    storeName <- newIORef ""
    let this = StoreValidationTransformTag header_ base logUtil storeName
    jregisterLevel header_ this
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: StoreValidationTransformTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.storeName ("")
    pure ()

new_ :: IO StoreValidationTransformTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreValidationTransformTag -> IO ()
init_ this = do
        ValidationTransformTag.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: StoreValidationTransformTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: StoreValidationTransformTag)) a1

setStoreName_impl :: StoreValidationTransformTag -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        Control.Monad.void (HashMap.put ((jio (ValidationTransformTag.getPropertiesHashMap this))) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: StoreValidationTransformTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: StoreValidationTransformTag))

doStartTag_impl :: StoreValidationTransformTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag Start" this (jget ((jget this.base.base.base.base.base.base.base.tagStrings)).dO_START_TAG))
            (ValidationTransformTag.doStartTag_super this.base)


