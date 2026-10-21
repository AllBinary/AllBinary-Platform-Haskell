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
module TextFieldItemValidator (module TextFieldItemValidator, module ValidatorBase) where

import ValidatorBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toList, toList_super, toList_impl, textFieldItem, min, max, allowOnEmpty)
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
import qualified ValidatorBase -- org.allbinary.logic.control.validate.ValidatorBase
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data TextFieldItemValidator = TextFieldItemValidator
    { header_ :: JavaHeader
    , base :: ValidatorBase.ValidatorBase
    , textFieldItem :: IORef (ABTextFieldItem.ABTextFieldItem)
    , min :: IORef (Int)
    , max :: IORef (Int)
    , allowOnEmpty :: IORef (Bool)
    }

instance JavaNull TextFieldItemValidator where
    javaNull = javaNullRecord "TextFieldItemValidator"

instance JavaEquals TextFieldItemValidator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextFieldItemValidator where
    (==) = jrecordEquals

instance JavaObjectClass TextFieldItemValidator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TextFieldItemValidator
newRecord_ = do
    base <- ValidatorBase.newRecord_
    let header_ = base.header_
    textFieldItem <- newIORef javaNull
    min <- newIORef 0
    max <- newIORef 0
    allowOnEmpty <- newIORef False
    let this = TextFieldItemValidator header_ base textFieldItem min max allowOnEmpty
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toList" (\() -> toList_impl this)
    pure this

initFields_ :: TextFieldItemValidator -> IO ()
initFields_ this = do
    jset this.textFieldItem (javaNull)
    jset this.min (0)
    jset this.max (0)
    jset this.allowOnEmpty (False)
    pure ()

new_4 :: ABTextFieldItem.ABTextFieldItem -> Int -> Int -> Bool -> IO TextFieldItemValidator
new_4 textFieldItem min max allowOnEmpty = do
    this <- newRecord_
    init_4 this textFieldItem min max allowOnEmpty
    pure this

init_4 :: TextFieldItemValidator -> ABTextFieldItem.ABTextFieldItem -> Int -> Int -> Bool -> IO ()
init_4 this textFieldItem min max allowOnEmpty = do
        ValidatorBase.init_ this.base
        initFields_ this
        jset (this).textFieldItem (textFieldItem)
        jset (this).min (min)
        jset (this).max (max)
        jset (this).allowOnEmpty (allowOnEmpty)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: TextFieldItemValidator))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: TextFieldItemValidator))

isValid_impl :: TextFieldItemValidator -> IO (Bool)
isValid_impl this = do
        booleanFactory <- (BooleanFactory.getInstance)
        result <- newIORef ((jget (booleanFactory).tRUE))
        string <- (ABTextFieldItem.getString ((jget (this).textFieldItem)))
        let textLength = (Prelude.length string)
        if ((((textLength == 0) && (jget (this).allowOnEmpty))) || ((textLength > (jget (this).min)) && (textLength < (jget (this).max)))) then do
            pure ()
        else do
            if (textLength < (jget (this).min)) then do
                jset result ((jget (booleanFactory).fALSE))
            else when (textLength > (jget (this).max)) $ do
                jset result ((jget (booleanFactory).fALSE))
        pure ((jget result))


toList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList object_ = jmethod object_ "toList" (\() -> (toList_impl (javaCast object_ :: TextFieldItemValidator))) ()

toList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList_super object_ = (toList_impl (javaCast object_ :: TextFieldItemValidator))

toList_impl :: TextFieldItemValidator -> IO (BasicArrayList.BasicArrayList)
toList_impl this = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        string <- (ABTextFieldItem.getString ((jget (this).textFieldItem)))
        let textLength = (Prelude.length string)
        if ((textLength > (jget (this).min)) && (textLength < (jget (this).max))) then do
            pure ()
        else do
            label <- (ABTextFieldItem.getLabel ((jget (this).textFieldItem)))
            let name = (Prelude.take ((((Prelude.length label) - 2)) - (0)) (Prelude.drop (0) label))
            if (textLength < (jget (this).min)) then do
                Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) name))) " is to short"))))))
            else when (textLength > (jget (this).max)) $ do
                Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) name))) " is to long"))))))
        pure (list)


