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
-- package org.allbinary.graphics.form.item.validation
module UsernameValidator (module UsernameValidator, module TextFieldItemValidator) where

import TextFieldItemValidator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified ABTextFieldItem -- org.allbinary.graphics.form.item.ABTextFieldItem
import qualified TextFieldItemValidator

data UsernameValidator = UsernameValidator
    { header_ :: JavaHeader
    , base :: TextFieldItemValidator.TextFieldItemValidator
    }

instance JavaNull UsernameValidator where
    javaNull = javaNullRecord "UsernameValidator"

instance JavaEquals UsernameValidator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UsernameValidator where
    (==) = jrecordEquals

instance JavaObjectClass UsernameValidator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UsernameValidator
newRecord_ = do
    base <- TextFieldItemValidator.newRecord_
    let header_ = base.header_
    let this = UsernameValidator header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: UsernameValidator -> IO ()
initFields_ this = do
    pure ()

new_4 :: ABTextFieldItem.ABTextFieldItem -> Int -> Int -> Bool -> IO UsernameValidator
new_4 textFieldItem min max allowOnEmpty = do
    this <- newRecord_
    init_4 this textFieldItem min max allowOnEmpty
    pure this

init_4 :: UsernameValidator -> ABTextFieldItem.ABTextFieldItem -> Int -> Int -> Bool -> IO ()
init_4 this textFieldItem min max allowOnEmpty = do
        TextFieldItemValidator.init_4 this.base (textFieldItem) (min) (max) (allowOnEmpty)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


