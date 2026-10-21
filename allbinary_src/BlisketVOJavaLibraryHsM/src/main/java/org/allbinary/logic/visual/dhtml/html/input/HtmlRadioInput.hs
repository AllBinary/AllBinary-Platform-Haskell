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
module HtmlRadioInput (module HtmlRadioInput, module HtmlValueInput) where

import HtmlValueInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setSelected, setSelected_super, setSelected_impl, cHECKED)
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
import qualified HtmlInputData -- same package or java.lang
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified HtmlValueInput

data HtmlRadioInput = HtmlRadioInput
    { header_ :: JavaHeader
    , base :: HtmlValueInput.HtmlValueInput
    , cHECKED :: IORef (String)
    }

instance JavaNull HtmlRadioInput where
    javaNull = javaNullRecord "HtmlRadioInput"

instance JavaEquals HtmlRadioInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlRadioInput where
    (==) = jrecordEquals

instance JavaObjectClass HtmlRadioInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlRadioInput
newRecord_ = do
    base <- HtmlValueInput.newRecord_
    let header_ = base.header_
    cHECKED <- newIORef ""
    let this = HtmlRadioInput header_ base cHECKED
    jregisterLevel header_ this
    jregisterMethod header_ "setSelected" (\() -> setSelected_impl this)
    pure this

initFields_ :: HtmlRadioInput -> IO ()
initFields_ this = do
    jset this.cHECKED ("checked")
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlRadioInput
new_4 before name value after = do
    this <- newRecord_
    init_4 this before name value after
    pure this

init_4 :: HtmlRadioInput -> String -> String -> String -> String -> IO ()
init_4 this before name value after = do
        HtmlValueInput.init_5 this.base (before) (jget ((jio (HtmlInputData.getInstance))).rADIO) (name) (value) (after)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setSelected :: (JavaObjectClass this_) => this_ -> IO (())
setSelected object_ = jmethod object_ "setSelected" (\() -> (setSelected_impl (javaCast object_ :: HtmlRadioInput))) ()

setSelected_super :: (JavaObjectClass this_) => this_ -> IO (())
setSelected_super object_ = (setSelected_impl (javaCast object_ :: HtmlRadioInput))

setSelected_impl :: HtmlRadioInput -> IO (())
setSelected_impl this = do
        Control.Monad.void (HtmlValueInput.addAttribute_super this.base (jget (this).cHECKED) (jget ((jio (BooleanFactory.getInstance))).tRUE_STRING))
        pure ()


