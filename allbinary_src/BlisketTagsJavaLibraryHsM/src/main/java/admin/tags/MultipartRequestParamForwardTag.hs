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
module MultipartRequestParamForwardTag (module MultipartRequestParamForwardTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setPage, setPage_super, setPage_impl, setCommand, setCommand_super, setCommand_impl, setParamVector, setParamVector_super, setParamVector_impl, doStartTag, doStartTag_super, doStartTag_impl, page, command, paramVector)
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
import qualified ParentInventoryTagHelper -- same package or java.lang
import qualified AbTagData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified Tag -- javax.servlet.jsp.tagext.Tag
import qualified MultipartRequestParamForwardHelper -- admin.taghelpers.MultipartRequestParamForwardHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CustomTagSupport -- tags.CustomTagSupport
import qualified HelperTag -- tags.HelperTag

data MultipartRequestParamForwardTag = MultipartRequestParamForwardTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , page :: IORef (String)
    , command :: IORef (String)
    , paramVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull MultipartRequestParamForwardTag where
    javaNull = javaNullRecord "MultipartRequestParamForwardTag"

instance JavaEquals MultipartRequestParamForwardTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipartRequestParamForwardTag where
    (==) = jrecordEquals

instance JavaObjectClass MultipartRequestParamForwardTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultipartRequestParamForwardTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    page <- newIORef ""
    command <- newIORef ""
    paramVector <- newIORef javaNull
    let this = MultipartRequestParamForwardTag header_ base page command paramVector
    jregisterLevel header_ this
    jregisterMethod header_ "setPage" (\() -> setPage_impl this)
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "setParamVector" (\() -> setParamVector_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: MultipartRequestParamForwardTag -> IO ()
initFields_ this = do
    jset this.page ("")
    jset this.command ("")
    jset this.paramVector (javaNull)
    pure ()

new_ :: IO MultipartRequestParamForwardTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MultipartRequestParamForwardTag -> IO ()
init_ this = do
    CustomTagSupport.init_ this.base
    initFields_ this


setPage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPage object_ a1 = jmethod object_ "setPage" (\() -> (setPage_impl (javaCast object_ :: MultipartRequestParamForwardTag))) () a1

setPage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPage_super object_ a1 = (setPage_impl (javaCast object_ :: MultipartRequestParamForwardTag)) a1

setPage_impl :: MultipartRequestParamForwardTag -> String -> IO (())
setPage_impl this page = do
        jset (this).page (page)
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: MultipartRequestParamForwardTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: MultipartRequestParamForwardTag)) a1

setCommand_impl :: MultipartRequestParamForwardTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


setParamVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setParamVector object_ a1 = jmethod object_ "setParamVector" (\() -> (setParamVector_impl (javaCast object_ :: MultipartRequestParamForwardTag))) () a1

setParamVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setParamVector_super object_ a1 = (setParamVector_impl (javaCast object_ :: MultipartRequestParamForwardTag)) a1

setParamVector_impl :: MultipartRequestParamForwardTag -> BasicArrayList.BasicArrayList -> IO (())
setParamVector_impl this paramVector = do
        jset (this).paramVector (paramVector)
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: MultipartRequestParamForwardTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: MultipartRequestParamForwardTag))

doStartTag_impl :: MultipartRequestParamForwardTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (Tag.sKIP_BODY)
            ) $ do
            let parentTag = (javaCast (jio (CustomTagSupport.getParent this)) :: HelperTag.HelperTag)
            Control.Monad.void (ParentInventoryTagHelper.isValid ((jio (ParentInventoryTagHelper.getInstance))) this (javaCast parentTag))
            hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            Control.Monad.void (HashMap.put hashMap (AbTagData.pARENT) parentTag)
            multipartRequestParamForwardHelper <- (MultipartRequestParamForwardHelper.new_5 parentTag (jget (this).page) (jget (this).command) (jget (this).paramVector) (jget (this).base.pageContext))
            Control.Monad.void (MultipartRequestParamForwardHelper.forward multipartRequestParamForwardHelper)
            pure (Tag.sKIP_BODY)


