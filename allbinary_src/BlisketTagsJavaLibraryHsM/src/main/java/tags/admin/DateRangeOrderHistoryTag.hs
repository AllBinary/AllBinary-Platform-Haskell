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
-- package tags.admin
module DateRangeOrderHistoryTag (module DateRangeOrderHistoryTag, module StoreValidationTransformTag) where

import StoreValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStatus, setStatus_super, setStatus_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, status)
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
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data DateRangeOrderHistoryTag = DateRangeOrderHistoryTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , status :: IORef (String)
    }

instance JavaNull DateRangeOrderHistoryTag where
    javaNull = javaNullRecord "DateRangeOrderHistoryTag"

instance JavaEquals DateRangeOrderHistoryTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DateRangeOrderHistoryTag where
    (==) = jrecordEquals

instance JavaObjectClass DateRangeOrderHistoryTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DateRangeOrderHistoryTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    status <- newIORef ""
    let this = DateRangeOrderHistoryTag header_ base logUtil status
    jregisterLevel header_ this
    jregisterMethod header_ "setStatus" (\() -> setStatus_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: DateRangeOrderHistoryTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.status ("")
    pure ()

new_ :: IO DateRangeOrderHistoryTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DateRangeOrderHistoryTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus object_ a1 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: DateRangeOrderHistoryTag))) () a1

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStatus_super object_ a1 = (setStatus_impl (javaCast object_ :: DateRangeOrderHistoryTag)) a1

setStatus_impl :: DateRangeOrderHistoryTag -> String -> IO (())
setStatus_impl this value = do
        jset (this).status (value)
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: DateRangeOrderHistoryTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: DateRangeOrderHistoryTag))

doStartTag_impl :: DateRangeOrderHistoryTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag Start" this (jget ((jget this.base.base.base.base.base.base.base.base.tagStrings)).dO_START_TAG))
            Control.Monad.void (StoreValidationTransformTag.setName this "Range Order History View")
            Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.admin.orderhistory.DateRangeOrderHistoryView")
            when ((jio (StoreValidationTransformTag.getCommand this)) /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEW)) - 1) == 0) then do
                    pure ()
                else do
                    javaThrow ((JavaException "Exception" ("No Such View Command: " ++ javaToString (jio (StoreValidationTransformTag.getCommand this)))))
                javaReturn =<< (StoreValidationTransformTag.doStartTag_super this.base)
            javaThrow ((JavaException "Exception" "Command Null"))


