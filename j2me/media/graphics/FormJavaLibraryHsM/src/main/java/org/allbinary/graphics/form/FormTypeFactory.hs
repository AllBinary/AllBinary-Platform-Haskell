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
-- package org.allbinary.graphics.form
module FormTypeFactory where

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
import qualified FormType -- same package or java.lang
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data FormTypeFactory = FormTypeFactory
    { header_ :: JavaHeader
    , uNK :: IORef (String)
    , nULL_FORM_TYPE :: IORef (FormType.FormType)
    , tEMP_HORIZONTAL_FORM :: IORef (FormType.FormType)
    , hORIZONTAL_FORM :: IORef (FormType.FormType)
    , vERTICAL_CENTER_FORM :: IORef (FormType.FormType)
    }

instance JavaNull FormTypeFactory where
    javaNull = javaNullRecord "FormTypeFactory"

instance JavaEquals FormTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FormTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass FormTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FormTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    uNK <- newIORef ""
    nULL_FORM_TYPE <- newIORef javaNull
    tEMP_HORIZONTAL_FORM <- newIORef javaNull
    hORIZONTAL_FORM <- newIORef javaNull
    vERTICAL_CENTER_FORM <- newIORef javaNull
    let this = FormTypeFactory header_ uNK nULL_FORM_TYPE tEMP_HORIZONTAL_FORM hORIZONTAL_FORM vERTICAL_CENTER_FORM
    jregisterLevel header_ this
    jregisterMethod header_ "getFormType" (\() -> getFormType_impl this)
    pure this

initFields_ :: FormTypeFactory -> IO ()
initFields_ this = do
    jset this.uNK ("Unknown FormType")
    jset this.nULL_FORM_TYPE =<< (FormType.new_1 (jget ((jio (StringUtil.getInstance))).nULL_STRING))
    jset this.tEMP_HORIZONTAL_FORM =<< (FormType.new_1 "TempHorizontal")
    jset this.hORIZONTAL_FORM =<< (FormType.new_1 "Horizontal")
    jset this.vERTICAL_CENTER_FORM =<< (FormType.new_1 "Vertical")
    pure ()

new_ :: IO FormTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FormTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FormTypeFactory)
getInstance = do
        pure (FormTypeFactory.instance_)


getFormType :: (JavaObjectClass this_) => this_ -> IO (FormType.FormType)
getFormType object_ = jmethod object_ "getFormType" (\() -> (getFormType_impl (javaCast object_ :: FormTypeFactory))) ()

getFormType_super :: (JavaObjectClass this_) => this_ -> IO (FormType.FormType)
getFormType_super object_ = (getFormType_impl (javaCast object_ :: FormTypeFactory))

getFormType_impl :: FormTypeFactory -> IO (FormType.FormType)
getFormType_impl this = do
        displayInfo <- (DisplayInfoSingleton.getInstance)
        formType <- newIORef (javaNull)
        if (jio (DisplayInfoSingleton.isPortrait displayInfo)) then do
            jset formType ((jget (this).vERTICAL_CENTER_FORM))
        else do
            jset formType ((jget (this).hORIZONTAL_FORM))
        pure ((jget formType))


