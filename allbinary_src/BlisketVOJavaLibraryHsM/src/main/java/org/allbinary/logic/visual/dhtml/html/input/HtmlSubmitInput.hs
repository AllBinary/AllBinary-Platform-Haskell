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
module HtmlSubmitInput (module HtmlSubmitInput, module HtmlValueInput) where

import HtmlValueInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified HtmlValueInput

data HtmlSubmitInput = HtmlSubmitInput
    { header_ :: JavaHeader
    , base :: HtmlValueInput.HtmlValueInput
    }

instance JavaNull HtmlSubmitInput where
    javaNull = javaNullRecord "HtmlSubmitInput"

instance JavaEquals HtmlSubmitInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlSubmitInput where
    (==) = jrecordEquals

instance JavaObjectClass HtmlSubmitInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HtmlSubmitInput
newRecord_ = do
    base <- HtmlValueInput.newRecord_
    let header_ = base.header_
    let this = HtmlSubmitInput header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlSubmitInput -> IO ()
initFields_ this = do
    pure ()

new_4 :: String -> String -> String -> String -> IO HtmlSubmitInput
new_4 before name value after = do
    this <- newRecord_
    init_4 this before name value after
    pure this

init_4 :: HtmlSubmitInput -> String -> String -> String -> String -> IO ()
init_4 this before name value after = do
        HtmlValueInput.init_5 this.base (before) (jget ((jio (HtmlInputData.getInstance))).sUBMIT) (name) (value) (after)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


