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
module UserTag (module UserTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setRole, setRole_super, setRole_impl, setEnable, setEnable_super, setEnable_impl, doStartTag, doStartTag_super, doStartTag_impl, role, enable)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified UserHelperFactory -- admin.taghelpers.UserHelperFactory
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified TableTag

data UserTag = UserTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , role :: IORef (String)
    , enable :: IORef (String)
    }

instance JavaNull UserTag where
    javaNull = javaNullRecord "UserTag"

instance JavaEquals UserTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserTag where
    (==) = jrecordEquals

instance JavaObjectClass UserTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UserTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    role <- newIORef ""
    enable <- newIORef ""
    let this = UserTag header_ base role enable
    jregisterLevel header_ this
    jregisterMethod header_ "setRole" (\() -> setRole_impl this)
    jregisterMethod header_ "setEnable" (\() -> setEnable_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: UserTag -> IO ()
initFields_ this = do
    jset this.role ("")
    jset this.enable ("")
    pure ()

new_ :: IO UserTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (UserHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (UserHelperFactory.new_))))
        pure ()


setRole :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: UserTag))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: UserTag)) a1

setRole_impl :: UserTag -> String -> IO (())
setRole_impl this value = do
        jset (this).role (value)
        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (UserRoleData.nAME) (jget (this).role))
        pure ()


setEnable :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable object_ a1 = jmethod object_ "setEnable" (\() -> (setEnable_impl (javaCast object_ :: UserTag))) () a1

setEnable_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable_super object_ a1 = (setEnable_impl (javaCast object_ :: UserTag)) a1

setEnable_impl :: UserTag -> String -> IO (())
setEnable_impl this value = do
        jset (this).enable (value)
        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (jget ((jio (EntryData.getInstance))).eNABLE) (jget (this).enable))
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: UserTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: UserTag))

doStartTag_impl :: UserTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


