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
-- package org.allbinary.logic.visual.dhtml.html.input
module HtmlValueInput (module HtmlValueInput, module HtmlInput) where

import HtmlInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, value, vALUE)
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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HtmlInput

data HtmlValueInput = HtmlValueInput
    { header_ :: JavaHeader
    , base :: HtmlInput.HtmlInput
    , value :: IORef (String)
    , vALUE :: IORef (String)
    }

instance JavaNull HtmlValueInput where
    javaNull = javaNullRecord "HtmlValueInput"

instance JavaEquals HtmlValueInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlValueInput where
    (==) = jrecordEquals

instance JavaObjectClass HtmlValueInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlValueInput
newRecord_ = do
    base <- HtmlInput.newRecord_
    let header_ = base.header_
    value <- newIORef ""
    vALUE <- newIORef ""
    let this = HtmlValueInput header_ base value vALUE
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlValueInput -> IO ()
initFields_ this = do
    jset this.value (javaNull)
    jset this.vALUE ("VALUE")
    pure ()

new_5 :: String -> String -> String -> String -> String -> IO HtmlValueInput
new_5 before type_ name value after = do
    this <- newRecord_
    init_5 this before type_ name value after
    pure this

init_5 :: HtmlValueInput -> String -> String -> String -> String -> String -> IO ()
init_5 this before type_ name value after = do
        HtmlInput.init_4 this.base (before) (type_) (name) (after)
        initFields_ this
        pure () -- super(...) is in the record above
        stringUtil <- (StringUtil.getInstance)
        jset (this).value ((jget (stringUtil).eMPTY_STRING))
        Control.Monad.void (HtmlInput.addAttribute this (jget (this).vALUE) value)
        pure ()


