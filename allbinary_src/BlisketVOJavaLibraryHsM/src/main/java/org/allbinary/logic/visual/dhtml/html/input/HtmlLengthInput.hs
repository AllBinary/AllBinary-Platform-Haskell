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
module HtmlLengthInput (module HtmlLengthInput, module HtmlValueInput) where

import HtmlValueInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setMaxLength, setMaxLength_super, setMaxLength_impl, setSize, setSize_super, setSize_impl, mAXLENGTH, sIZE, length, size)
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
import qualified HtmlValueInput

data HtmlLengthInput = HtmlLengthInput
    { header_ :: JavaHeader
    , base :: HtmlValueInput.HtmlValueInput
    , mAXLENGTH :: IORef (String)
    , sIZE :: IORef (String)
    , length :: IORef (String)
    , size :: IORef (String)
    }

instance JavaNull HtmlLengthInput where
    javaNull = javaNullRecord "HtmlLengthInput"

instance JavaEquals HtmlLengthInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlLengthInput where
    (==) = jrecordEquals

instance JavaObjectClass HtmlLengthInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlLengthInput
newRecord_ = do
    base <- HtmlValueInput.newRecord_
    let header_ = base.header_
    mAXLENGTH <- newIORef ""
    sIZE <- newIORef ""
    length <- newIORef ""
    size <- newIORef ""
    let this = HtmlLengthInput header_ base mAXLENGTH sIZE length size
    jregisterLevel header_ this
    jregisterMethod header_ "setMaxLength" (\() -> setMaxLength_impl this)
    jregisterMethod header_ "setSize" (\() -> setSize_impl this)
    pure this

initFields_ :: HtmlLengthInput -> IO ()
initFields_ this = do
    jset this.mAXLENGTH ("MAXLENGTH")
    jset this.sIZE ("SIZE")
    jset this.length ("")
    jset this.size ("")
    pure ()

new_5 :: String -> String -> String -> String -> String -> IO HtmlLengthInput
new_5 before type_ name value after = do
    this <- newRecord_
    init_5 this before type_ name value after
    pure this

init_5 :: HtmlLengthInput -> String -> String -> String -> String -> String -> IO ()
init_5 this before type_ name value after = do
        HtmlValueInput.init_5 this.base (before) (type_) (name) (value) (after)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setMaxLength :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxLength object_ a1 = jmethod object_ "setMaxLength" (\() -> (setMaxLength_impl (javaCast object_ :: HtmlLengthInput))) () a1

setMaxLength_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxLength_super object_ a1 = (setMaxLength_impl (javaCast object_ :: HtmlLengthInput)) a1

setMaxLength_impl :: HtmlLengthInput -> Int -> IO (())
setMaxLength_impl this length = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Integer.Integer) (jnewString (javaToString length)))
        (jlength this) <- pure (assignedValue)
        Control.Monad.void (HtmlValueInput.addAttribute this (jget (this).mAXLENGTH) (jlength this))
        pure ()


setSize :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSize object_ a1 = jmethod object_ "setSize" (\() -> (setSize_impl (javaCast object_ :: HtmlLengthInput))) () a1

setSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSize_super object_ a1 = (setSize_impl (javaCast object_ :: HtmlLengthInput)) a1

setSize_impl :: HtmlLengthInput -> Int -> IO (())
setSize_impl this size = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Integer.Integer) (jnewString (javaToString size)))
        jset (this).size (assignedValue)
        Control.Monad.void (HtmlValueInput.addAttribute this (jget (this).mAXLENGTH) (jget (this).size))
        pure ()


