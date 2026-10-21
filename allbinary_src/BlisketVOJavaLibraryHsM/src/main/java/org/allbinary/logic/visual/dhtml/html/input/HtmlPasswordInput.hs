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
module HtmlPasswordInput (module HtmlPasswordInput, module HtmlLengthInput) where

import HtmlLengthInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified HtmlLengthInput

data HtmlPasswordInput = HtmlPasswordInput
    { header_ :: JavaHeader
    , base :: HtmlLengthInput.HtmlLengthInput
    }

instance JavaNull HtmlPasswordInput where
    javaNull = javaNullRecord "HtmlPasswordInput"

instance JavaEquals HtmlPasswordInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlPasswordInput where
    (==) = jrecordEquals

instance JavaObjectClass HtmlPasswordInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlPasswordInput
newRecord_ = do
    base <- HtmlLengthInput.newRecord_
    let header_ = base.header_
    let this = HtmlPasswordInput header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlPasswordInput -> IO ()
initFields_ this = do
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlPasswordInput
new_4 before name value after = do
    this <- newRecord_
    init_4 this before name value after
    pure this

init_4 :: HtmlPasswordInput -> String -> String -> String -> String -> IO ()
init_4 this before name value after = do
        HtmlLengthInput.init_5 this.base (before) (jget ((jio (HtmlInputData.getInstance))).pASSWORD) (name) (value) (after)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (HtmlLengthInput.setSize this (Prelude.fromIntegral (32) :: Int))
        Control.Monad.void (HtmlLengthInput.setMaxLength this (Prelude.fromIntegral (128) :: Int))
        pure ()


