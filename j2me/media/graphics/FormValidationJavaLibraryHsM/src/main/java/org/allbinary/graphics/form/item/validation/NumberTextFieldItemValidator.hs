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
module NumberTextFieldItemValidator (module NumberTextFieldItemValidator, module ValidatorBase) where

import ValidatorBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isNumberValid, isNumberValid_super, isNumberValid_impl, toNumberVector, toNumberVector_super, toNumberVector_impl, isValid, isValid_super, isValid_impl, toList, toList_super, toList_impl, textFieldItem, min, max, maxChars)
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
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data NumberTextFieldItemValidator = NumberTextFieldItemValidator
    { header_ :: JavaHeader
    , base :: ValidatorBase.ValidatorBase
    , textFieldItem :: IORef (ABTextFieldItem.ABTextFieldItem)
    , min :: IORef (Int)
    , max :: IORef (Int)
    , maxChars :: IORef (Int)
    }

instance JavaNull NumberTextFieldItemValidator where
    javaNull = javaNullRecord "NumberTextFieldItemValidator"

instance JavaEquals NumberTextFieldItemValidator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NumberTextFieldItemValidator where
    (==) = jrecordEquals

instance JavaObjectClass NumberTextFieldItemValidator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NumberTextFieldItemValidator
newRecord_ = do
    base <- ValidatorBase.newRecord_
    let header_ = base.header_
    textFieldItem <- newIORef javaNull
    min <- newIORef 0
    max <- newIORef 0
    maxChars <- newIORef 0
    let this = NumberTextFieldItemValidator header_ base textFieldItem min max maxChars
    jregisterLevel header_ this
    jregisterMethod header_ "isNumberValid" (\() -> isNumberValid_impl this)
    jregisterMethod header_ "toNumberVector" (\() -> toNumberVector_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toList" (\() -> toList_impl this)
    pure this

initFields_ :: NumberTextFieldItemValidator -> IO ()
initFields_ this = do
    jset this.textFieldItem (javaNull)
    jset this.min (0)
    jset this.max (0)
    jset this.maxChars (0)
    pure ()

new_4 :: ABTextFieldItem.ABTextFieldItem -> Int -> Int -> Int -> IO NumberTextFieldItemValidator
new_4 textFieldItem maxChars min max = do
    this <- newRecord_
    init_4 this textFieldItem maxChars min max
    pure this

init_4 :: NumberTextFieldItemValidator -> ABTextFieldItem.ABTextFieldItem -> Int -> Int -> Int -> IO ()
init_4 this textFieldItem maxChars min max = do
        ValidatorBase.init_ this.base
        initFields_ this
        jset (this).textFieldItem (textFieldItem)
        jset (this).min (min)
        jset (this).max (max)
        jset (this).maxChars (maxChars)
        pure ()


isNumberValid :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isNumberValid object_ a1 = jmethod object_ "isNumberValid" (\() -> (isNumberValid_impl (javaCast object_ :: NumberTextFieldItemValidator))) () a1

isNumberValid_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isNumberValid_super object_ a1 = (isNumberValid_impl (javaCast object_ :: NumberTextFieldItemValidator)) a1

isNumberValid_impl :: NumberTextFieldItemValidator -> Int -> IO (Bool)
isNumberValid_impl this value = do
        pure ((jget ((jio (BooleanFactory.getInstance))).tRUE))


toNumberVector :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
toNumberVector object_ a1 = jmethod object_ "toNumberVector" (\() -> (toNumberVector_impl (javaCast object_ :: NumberTextFieldItemValidator))) () a1

toNumberVector_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
toNumberVector_super object_ a1 = (toNumberVector_impl (javaCast object_ :: NumberTextFieldItemValidator)) a1

toNumberVector_impl :: NumberTextFieldItemValidator -> Int -> IO (BasicArrayList.BasicArrayList)
toNumberVector_impl this value = do
        (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: NumberTextFieldItemValidator))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: NumberTextFieldItemValidator))

isValid_impl :: NumberTextFieldItemValidator -> IO (Bool)
isValid_impl this = do
        result <- newIORef ((jget ((jio (BooleanFactory.getInstance))).tRUE))
        string <- (ABTextFieldItem.getString ((jget (this).textFieldItem)))
        let textLength = (Prelude.length string)
        if ((textLength > 0) && (textLength < (jget (this).maxChars))) then do
            handle (\(e :: JavaException) -> do
                jset result ((jget ((jio (BooleanFactory.getInstance))).fALSE))
                ) $ do
                (Prelude.read (jio (ABTextFieldItem.getString ((jget (this).textFieldItem)))))
        else do
            if (textLength < 1) then do
                jset result ((jget ((jio (BooleanFactory.getInstance))).fALSE))
            else when (textLength > (jget (this).maxChars)) $ do
                jset result ((jget ((jio (BooleanFactory.getInstance))).fALSE))
        pure ((jget result))


toList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList object_ = jmethod object_ "toList" (\() -> (toList_impl (javaCast object_ :: NumberTextFieldItemValidator))) ()

toList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toList_super object_ = (toList_impl (javaCast object_ :: NumberTextFieldItemValidator))

toList_impl :: NumberTextFieldItemValidator -> IO (BasicArrayList.BasicArrayList)
toList_impl this = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        string <- (ABTextFieldItem.getString ((jget (this).textFieldItem)))
        let textLength = (Prelude.length string)
        label <- (ABTextFieldItem.getLabel ((jget (this).textFieldItem)))
        let name = (Prelude.take ((((Prelude.length label) - 2)) - (0)) (Prelude.drop (0) label))
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        stringMaker <- (StringMaker.new_)
        if ((textLength > 0) && (textLength < (jget (this).maxChars))) then do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker name))) " is not a number"))))))
                ) $ do
                number <- (SmallIntegerSingletonFactory.createInstance smallIntegerSingletonFactory (Prelude.read (jio (ABTextFieldItem.getString ((jget (this).textFieldItem))))))
                if (number > (jget (this).min)) then do
                    Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                    Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker name))) " is to small"))))))
                else when (number > (jget (this).max)) $ do
                    Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                    Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker name))) " is to large"))))))
        else do
            if (textLength < 1) then do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker name))) " is to short"))))))
            else when (textLength > (jget (this).maxChars)) $ do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (BasicArrayList.add list (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker name))) " is to long"))))))
        pure (list)


