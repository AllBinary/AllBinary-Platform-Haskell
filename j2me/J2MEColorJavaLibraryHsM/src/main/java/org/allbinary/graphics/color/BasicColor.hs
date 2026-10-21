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
-- package org.allbinary.graphics.color
module BasicColor where

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
import qualified BasicColorUtil -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data BasicColor = BasicColor
    { header_ :: JavaHeader
    , name :: IORef (String)
    , value :: IORef (Int)
    , redComponent :: IORef (Float)
    , greenComponent :: IORef (Float)
    , blueComponent :: IORef (Float)
    , alphaComponent :: IORef (Float)
    , red :: IORef (Int16)
    , green :: IORef (Int16)
    , blue :: IORef (Int16)
    , alpha :: IORef (Int16)
    }

instance JavaNull BasicColor where
    javaNull = javaNullRecord "BasicColor"

instance JavaEquals BasicColor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColor where
    (==) = jrecordEquals

instance JavaObjectClass BasicColor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicColor
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    value <- newIORef 0
    redComponent <- newIORef 0.0
    greenComponent <- newIORef 0.0
    blueComponent <- newIORef 0.0
    alphaComponent <- newIORef 0.0
    red <- newIORef 0
    green <- newIORef 0
    blue <- newIORef 0
    alpha <- newIORef 0
    let this = BasicColor header_ name value redComponent greenComponent blueComponent alphaComponent red green blue alpha
    jregisterLevel header_ this
    jregisterMethod header_ "intValue" (\() -> intValue_impl this)
    jregisterMethod header_ "toInt" (\() -> toInt_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getRedComponent" (\() -> getRedComponent_impl this)
    jregisterMethod header_ "getGreenComponent" (\() -> getGreenComponent_impl this)
    jregisterMethod header_ "getBlueComponent" (\() -> getBlueComponent_impl this)
    jregisterMethod header_ "getAlphaComponent" (\() -> getAlphaComponent_impl this)
    pure this

initFields_ :: BasicColor -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.value (0)
    jset this.redComponent (0.0)
    jset this.greenComponent (0.0)
    jset this.blueComponent (0.0)
    jset this.alphaComponent (0.0)
    jset this.red (0)
    jset this.green (0)
    jset this.blue (0)
    jset this.alpha (0)
    pure ()

new_3 :: Int -> Int -> String -> IO BasicColor
new_3 alphaValue value name = do
    this <- newRecord_
    init_3 this alphaValue value name
    pure this

init_3 :: BasicColor -> Int -> Int -> String -> IO ()
init_3 this alphaValue value name = do
        initFields_ this
        jset (this).name (name)
        tempValue <- newIORef (0)
        basicColorUtil <- (BasicColorUtil.getInstance)
        if (jget (basicColorUtil).isAlpha) then do
            if (jget (basicColorUtil).ffOpaque) then do
                jset tempValue ((alphaValue Data.Bits..|. value))
            else do
                jset tempValue ((0x00000000 Data.Bits..|. value))
        else do
            jset tempValue (value)
        let alphaInt = (((((jget tempValue) `Data.Bits.shiftR` 24)) Data.Bits..&. 255))
        jset (this).alpha ((Prelude.fromIntegral alphaInt))
        jset (this).alphaComponent ((((Prelude.fromIntegral alphaInt)) / 255.0))
        let redInt = (((((jget tempValue) `Data.Bits.shiftR` 16)) Data.Bits..&. 255))
        jset (this).red ((Prelude.fromIntegral redInt))
        jset (this).redComponent ((((Prelude.fromIntegral redInt)) / 255.0))
        let greenInt = (((((jget tempValue) `Data.Bits.shiftR` 8)) Data.Bits..&. 255))
        jset (this).green ((Prelude.fromIntegral greenInt))
        jset (this).greenComponent ((((Prelude.fromIntegral greenInt)) / 255.0))
        let blueInt = ((((jget tempValue)) Data.Bits..&. 255))
        jset (this).blue ((Prelude.fromIntegral blueInt))
        jset (this).blueComponent ((((Prelude.fromIntegral blueInt)) / 255.0))
        jset (this).value ((jget tempValue))
        pure ()


intValue :: (JavaObjectClass this_) => this_ -> IO (Int)
intValue object_ = jmethod object_ "intValue" (\() -> (intValue_impl (javaCast object_ :: BasicColor))) ()

intValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
intValue_super object_ = (intValue_impl (javaCast object_ :: BasicColor))

intValue_impl :: BasicColor -> IO (Int)
intValue_impl this = do
        pure ((jget (this).value))


toInt :: (JavaObjectClass this_) => this_ -> IO (Int)
toInt object_ = jmethod object_ "toInt" (\() -> (toInt_impl (javaCast object_ :: BasicColor))) ()

toInt_super :: (JavaObjectClass this_) => this_ -> IO (Int)
toInt_super object_ = (toInt_impl (javaCast object_ :: BasicColor))

toInt_impl :: BasicColor -> IO (Int)
toInt_impl this = do
        pure ((jget (this).value))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicColor))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicColor))

toString_impl :: BasicColor -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "BasicColor: ")
        Control.Monad.void (StringMaker.append stringBuffer "Alpha: ")
        Control.Monad.void (StringMaker.appendshort stringBuffer (jget (this).alpha))
        Control.Monad.void (StringMaker.append stringBuffer " Red: ")
        Control.Monad.void (StringMaker.appendshort stringBuffer (jget (this).red))
        Control.Monad.void (StringMaker.append stringBuffer " Green: ")
        Control.Monad.void (StringMaker.appendshort stringBuffer (jget (this).green))
        Control.Monad.void (StringMaker.append stringBuffer " Blue: ")
        Control.Monad.void (StringMaker.appendshort stringBuffer (jget (this).blue))
        Control.Monad.void (StringMaker.append stringBuffer " Value: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).value))
        (StringMaker.toString stringBuffer)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicColor))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicColor))

getName_impl :: BasicColor -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getRedComponent :: (JavaObjectClass this_) => this_ -> IO (Float)
getRedComponent object_ = jmethod object_ "getRedComponent" (\() -> (getRedComponent_impl (javaCast object_ :: BasicColor))) ()

getRedComponent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getRedComponent_super object_ = (getRedComponent_impl (javaCast object_ :: BasicColor))

getRedComponent_impl :: BasicColor -> IO (Float)
getRedComponent_impl this = do
        pure ((jget (this).redComponent))


getGreenComponent :: (JavaObjectClass this_) => this_ -> IO (Float)
getGreenComponent object_ = jmethod object_ "getGreenComponent" (\() -> (getGreenComponent_impl (javaCast object_ :: BasicColor))) ()

getGreenComponent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getGreenComponent_super object_ = (getGreenComponent_impl (javaCast object_ :: BasicColor))

getGreenComponent_impl :: BasicColor -> IO (Float)
getGreenComponent_impl this = do
        pure ((jget (this).greenComponent))


getBlueComponent :: (JavaObjectClass this_) => this_ -> IO (Float)
getBlueComponent object_ = jmethod object_ "getBlueComponent" (\() -> (getBlueComponent_impl (javaCast object_ :: BasicColor))) ()

getBlueComponent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getBlueComponent_super object_ = (getBlueComponent_impl (javaCast object_ :: BasicColor))

getBlueComponent_impl :: BasicColor -> IO (Float)
getBlueComponent_impl this = do
        pure ((jget (this).blueComponent))


getAlphaComponent :: (JavaObjectClass this_) => this_ -> IO (Float)
getAlphaComponent object_ = jmethod object_ "getAlphaComponent" (\() -> (getAlphaComponent_impl (javaCast object_ :: BasicColor))) ()

getAlphaComponent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getAlphaComponent_super object_ = (getAlphaComponent_impl (javaCast object_ :: BasicColor))

getAlphaComponent_impl :: BasicColor -> IO (Float)
getAlphaComponent_impl this = do
        pure ((jget (this).alphaComponent))


