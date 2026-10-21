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
-- package org.allbinary.game.configuration
module GameConfiguration where

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
import qualified GameConfigurationSingleton -- same package or java.lang
import qualified GameFeatureEvent -- org.allbinary.game.configuration.event.GameFeatureEvent
import qualified GameFeatureEventHandler -- org.allbinary.game.configuration.event.GameFeatureEventHandler
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data GameConfiguration = GameConfiguration
    { header_ :: JavaHeader
    , name :: IORef (String)
    , defaultValue :: IORef (Int)
    , value :: IORef (Int)
    , minValue :: IORef (Int)
    , maxValue :: IORef (Int)
    , modifiable :: IORef (Bool)
    }

instance JavaNull GameConfiguration where
    javaNull = javaNullRecord "GameConfiguration"

instance JavaEquals GameConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass GameConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mIN_VALUE = (Prelude.fromIntegral (((-2147483648) :: Int)) :: Int)

newRecord_ :: IO GameConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    defaultValue <- newIORef javaNull
    value <- newIORef javaNull
    minValue <- newIORef javaNull
    maxValue <- newIORef javaNull
    modifiable <- newIORef javaNull
    let this = GameConfiguration header_ name defaultValue value minValue maxValue modifiable
    jregisterLevel header_ this
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "setMaxValue" (\() -> setMaxValue_impl this)
    jregisterMethod header_ "getMaxValue" (\() -> getMaxValue_impl this)
    jregisterMethod header_ "setMinValue" (\() -> setMinValue_impl this)
    jregisterMethod header_ "getMinValue" (\() -> getMinValue_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setDefaultValue" (\() -> setDefaultValue_impl this)
    jregisterMethod header_ "getDefaultValue" (\() -> getDefaultValue_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "setModifiable" (\() -> setModifiable_impl this)
    jregisterMethod header_ "isModifiable" (\() -> isModifiable_impl this)
    pure this

initFields_ :: GameConfiguration -> IO ()
initFields_ this = do
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.defaultValue =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)
    jset this.value (GameConfiguration.mIN_VALUE)
    jset this.minValue ((jget (this).defaultValue))
    jset this.maxValue ((jget (this).defaultValue))
    jset this.modifiable ((jget ((jio (BooleanFactory.getInstance))).tRUE))
    pure ()

new_4 :: String -> Int -> Int -> Int -> IO GameConfiguration
new_4 name defaultValue minValue maxValue = do
    this <- newRecord_
    init_4 this name defaultValue minValue maxValue
    pure this

init_4 :: GameConfiguration -> String -> Int -> Int -> Int -> IO ()
init_4 this name defaultValue minValue maxValue = do
        initFields_ this
        Control.Monad.void (GameConfiguration.setName this name)
        Control.Monad.void (GameConfiguration.setDefaultValue this defaultValue)
        assignedValue <- (GameConfiguration.getDefaultValue this)
        jset (this).value (assignedValue)
        Control.Monad.void (GameConfiguration.setMinValue this minValue)
        Control.Monad.void (GameConfiguration.setMaxValue this maxValue)
        Control.Monad.void (ABHashtable.put ((jio (GameConfigurationSingleton.getHashtable ((jio (GameConfigurationSingleton.getInstance)))))) (jio (GameConfiguration.getName this)) this)
        pure ()


-- throws Exception
setValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: GameConfiguration))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: GameConfiguration)) a1

setValue_impl :: GameConfiguration -> Int -> IO (())
setValue_impl this value = do
        when ((jget (this).value) /= value) $ do
            let oldValue = (jget (this).value)
            jset (this).value (value)
            Control.Monad.void (GameFeatureEventHandler.fireEvent ((jio (GameFeatureEventHandler.getInstance))) (jio (GameFeatureEvent.new_2 this (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).name)))) " value: from: "))) (oldValue)))) " to "))) (jget (this).value)))))))))
        pure ()


getValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: GameConfiguration))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getValue_super object_ = (getValue_impl (javaCast object_ :: GameConfiguration))

getValue_impl :: GameConfiguration -> IO (Int)
getValue_impl this = do
        pure ((jget (this).value))


setMaxValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxValue object_ a1 = jmethod object_ "setMaxValue" (\() -> (setMaxValue_impl (javaCast object_ :: GameConfiguration))) () a1

setMaxValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxValue_super object_ a1 = (setMaxValue_impl (javaCast object_ :: GameConfiguration)) a1

setMaxValue_impl :: GameConfiguration -> Int -> IO (())
setMaxValue_impl this maxValue = do
        jset (this).maxValue (maxValue)
        pure ()


getMaxValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxValue object_ = jmethod object_ "getMaxValue" (\() -> (getMaxValue_impl (javaCast object_ :: GameConfiguration))) ()

getMaxValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxValue_super object_ = (getMaxValue_impl (javaCast object_ :: GameConfiguration))

getMaxValue_impl :: GameConfiguration -> IO (Int)
getMaxValue_impl this = do
        pure ((jget (this).maxValue))


setMinValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinValue object_ a1 = jmethod object_ "setMinValue" (\() -> (setMinValue_impl (javaCast object_ :: GameConfiguration))) () a1

setMinValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinValue_super object_ a1 = (setMinValue_impl (javaCast object_ :: GameConfiguration)) a1

setMinValue_impl :: GameConfiguration -> Int -> IO (())
setMinValue_impl this minValue = do
        jset (this).minValue (minValue)
        pure ()


getMinValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinValue object_ = jmethod object_ "getMinValue" (\() -> (getMinValue_impl (javaCast object_ :: GameConfiguration))) ()

getMinValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinValue_super object_ = (getMinValue_impl (javaCast object_ :: GameConfiguration))

getMinValue_impl :: GameConfiguration -> IO (Int)
getMinValue_impl this = do
        pure ((jget (this).minValue))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GameConfiguration))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GameConfiguration)) a1

setName_impl :: GameConfiguration -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GameConfiguration))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GameConfiguration))

getName_impl :: GameConfiguration -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setDefaultValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDefaultValue object_ a1 = jmethod object_ "setDefaultValue" (\() -> (setDefaultValue_impl (javaCast object_ :: GameConfiguration))) () a1

setDefaultValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDefaultValue_super object_ a1 = (setDefaultValue_impl (javaCast object_ :: GameConfiguration)) a1

setDefaultValue_impl :: GameConfiguration -> Int -> IO (())
setDefaultValue_impl this defaultValue = do
        jset (this).defaultValue (defaultValue)
        pure ()


getDefaultValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getDefaultValue object_ = jmethod object_ "getDefaultValue" (\() -> (getDefaultValue_impl (javaCast object_ :: GameConfiguration))) ()

getDefaultValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDefaultValue_super object_ = (getDefaultValue_impl (javaCast object_ :: GameConfiguration))

getDefaultValue_impl :: GameConfiguration -> IO (Int)
getDefaultValue_impl this = do
        pure ((jget (this).defaultValue))


-- throws Exception
setDefault :: (JavaObjectClass this_) => this_ -> IO (())
setDefault object_ = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: GameConfiguration))) ()

setDefault_super :: (JavaObjectClass this_) => this_ -> IO (())
setDefault_super object_ = (setDefault_impl (javaCast object_ :: GameConfiguration))

setDefault_impl :: GameConfiguration -> IO (())
setDefault_impl this = do
        Control.Monad.void (GameConfiguration.setValue this (jio (GameConfiguration.getDefaultValue this)))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameConfiguration))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameConfiguration))

toString_impl :: GameConfiguration -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Name: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).name))
        Control.Monad.void (StringMaker.append stringBuffer " Min: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getMinValue this)))
        Control.Monad.void (StringMaker.append stringBuffer " Max: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getMaxValue this)))
        Control.Monad.void (StringMaker.append stringBuffer " Value: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue this)))
        Control.Monad.void (StringMaker.append stringBuffer " Default: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getDefaultValue this)))
        Control.Monad.void (StringMaker.append stringBuffer " Modifiable: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (GameConfiguration.isModifiable this)))
        (StringMaker.toString stringBuffer)


setModifiable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setModifiable object_ a1 = jmethod object_ "setModifiable" (\() -> (setModifiable_impl (javaCast object_ :: GameConfiguration))) () a1

setModifiable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setModifiable_super object_ a1 = (setModifiable_impl (javaCast object_ :: GameConfiguration)) a1

setModifiable_impl :: GameConfiguration -> Bool -> IO (())
setModifiable_impl this modifiable = do
        jset (this).modifiable (modifiable)
        pure ()


isModifiable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isModifiable object_ = jmethod object_ "isModifiable" (\() -> (isModifiable_impl (javaCast object_ :: GameConfiguration))) ()

isModifiable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isModifiable_super object_ = (isModifiable_impl (javaCast object_ :: GameConfiguration))

isModifiable_impl :: GameConfiguration -> IO (Bool)
isModifiable_impl this = do
        pure ((jget (this).modifiable))


