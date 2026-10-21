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
module BasicColorFactory where

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
import qualified BasicColor -- same package or java.lang
import qualified BasicColorUtil -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data BasicColorFactory = BasicColorFactory
    { header_ :: JavaHeader
    , nULL_COLOR :: IORef (BasicColor.BasicColor)
    , tAN :: IORef (BasicColor.BasicColor)
    , sKIN_PINK :: IORef (BasicColor.BasicColor)
    , rED :: IORef (BasicColor.BasicColor)
    , lIGHT_RED :: IORef (BasicColor.BasicColor)
    , dARK_GREEN :: IORef (BasicColor.BasicColor)
    , gREEN :: IORef (BasicColor.BasicColor)
    , lIGHT_GREEN :: IORef (BasicColor.BasicColor)
    , pURPLE :: IORef (BasicColor.BasicColor)
    , bLUE :: IORef (BasicColor.BasicColor)
    , lIGHT_BLUE :: IORef (BasicColor.BasicColor)
    , vERY_LIGHT_BLUE :: IORef (BasicColor.BasicColor)
    , pUCE :: IORef (BasicColor.BasicColor)
    , aQUA :: IORef (BasicColor.BasicColor)
    , yELLOW :: IORef (BasicColor.BasicColor)
    , pINK :: IORef (BasicColor.BasicColor)
    , bLACK :: IORef (BasicColor.BasicColor)
    , gREY :: IORef (BasicColor.BasicColor)
    , lIGHT_GREY :: IORef (BasicColor.BasicColor)
    , dARK_GREY :: IORef (BasicColor.BasicColor)
    , oRANGE :: IORef (BasicColor.BasicColor)
    , bROWN :: IORef (BasicColor.BasicColor)
    , wHITE :: IORef (BasicColor.BasicColor)
    , tRANSPARENT_COLOR :: IORef (BasicColor.BasicColor)
    , tRANSPARENT_GREY :: IORef (BasicColor.BasicColor)
    , tRANSPARENT_BLACK :: IORef (BasicColor.BasicColor)
    , tRANSPARENT_RED :: IORef (BasicColor.BasicColor)
    , cLEAR_COLOR :: IORef (BasicColor.BasicColor)
    , bORDER_COLOR :: IORef (BasicColor.BasicColor)
    }

instance JavaNull BasicColorFactory where
    javaNull = javaNullRecord "BasicColorFactory"

instance JavaEquals BasicColorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColorFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicColorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicColorFactory
newRecord_ = do
    header_ <- newJavaHeader
    nULL_COLOR <- newIORef javaNull
    tAN <- newIORef javaNull
    sKIN_PINK <- newIORef javaNull
    rED <- newIORef javaNull
    lIGHT_RED <- newIORef javaNull
    dARK_GREEN <- newIORef javaNull
    gREEN <- newIORef javaNull
    lIGHT_GREEN <- newIORef javaNull
    pURPLE <- newIORef javaNull
    bLUE <- newIORef javaNull
    lIGHT_BLUE <- newIORef javaNull
    vERY_LIGHT_BLUE <- newIORef javaNull
    pUCE <- newIORef javaNull
    aQUA <- newIORef javaNull
    yELLOW <- newIORef javaNull
    pINK <- newIORef javaNull
    bLACK <- newIORef javaNull
    gREY <- newIORef javaNull
    lIGHT_GREY <- newIORef javaNull
    dARK_GREY <- newIORef javaNull
    oRANGE <- newIORef javaNull
    bROWN <- newIORef javaNull
    wHITE <- newIORef javaNull
    tRANSPARENT_COLOR <- newIORef javaNull
    tRANSPARENT_GREY <- newIORef javaNull
    tRANSPARENT_BLACK <- newIORef javaNull
    tRANSPARENT_RED <- newIORef javaNull
    cLEAR_COLOR <- newIORef javaNull
    bORDER_COLOR <- newIORef javaNull
    let this = BasicColorFactory header_ nULL_COLOR tAN sKIN_PINK rED lIGHT_RED dARK_GREEN gREEN lIGHT_GREEN pURPLE bLUE lIGHT_BLUE vERY_LIGHT_BLUE pUCE aQUA yELLOW pINK bLACK gREY lIGHT_GREY dARK_GREY oRANGE bROWN wHITE tRANSPARENT_COLOR tRANSPARENT_GREY tRANSPARENT_BLACK tRANSPARENT_RED cLEAR_COLOR bORDER_COLOR
    jregisterLevel header_ this
    jregisterMethod header_ "createInstance" (\() -> createInstance_impl this)
    jregisterMethod header_ "createInstanceA" (\() -> createInstanceA_impl this)
    jregisterMethod header_ "createInstanceAN" (\() -> createInstanceAN_impl this)
    jregisterMethod header_ "createInstanceARGB" (\() -> createInstanceARGB_impl this)
    pure this

initFields_ :: BasicColorFactory -> IO ()
initFields_ this = do
    jset this.nULL_COLOR =<< (BasicColorFactory.createInstanceARGB this 255 255 255 255 "null color")
    jset this.tAN =<< (BasicColorFactory.createInstance this 0xE9D8B5)
    jset this.sKIN_PINK =<< (BasicColorFactory.createInstance this 0xFDCECE)
    jset this.rED =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0xFF0000 "red")
    jset this.lIGHT_RED =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0xFFA0A0 "light red")
    jset this.dARK_GREEN =<< (BasicColorFactory.createInstance this 0x00FF00)
    jset this.gREEN =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0x00DD00 "green")
    jset this.lIGHT_GREEN =<< (BasicColorFactory.createInstance this 0x007700)
    jset this.pURPLE =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0x400040 "purple")
    jset this.bLUE =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0x0000FF "blue")
    jset this.lIGHT_BLUE =<< (BasicColorFactory.createInstance this 0x00aaff)
    jset this.vERY_LIGHT_BLUE =<< (BasicColorFactory.createInstance this 0x000033)
    jset this.pUCE =<< (BasicColorFactory.createInstance this 0xFF00AA)
    jset this.aQUA =<< (BasicColorFactory.createInstance this 0x00FFFF)
    jset this.yELLOW =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0xFFFF00 "yellow")
    jset this.pINK =<< (BasicColorFactory.createInstance this 0xFF00FF)
    jset this.bLACK =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0x000000 "black")
    jset this.gREY =<< (BasicColorFactory.createInstanceAN this (jget ((jio (BasicColorUtil.getInstance))).aLPHA) 0xAAAAAA "grey")
    jset this.lIGHT_GREY =<< (BasicColorFactory.createInstance this 0xC0C0C0)
    jset this.dARK_GREY =<< (BasicColorFactory.createInstance this 0x404040)
    jset this.oRANGE =<< (BasicColorFactory.createInstance this 0xe07718)
    jset this.bROWN =<< (BasicColorFactory.createInstance this 0x956B00)
    jset this.wHITE =<< (BasicColorFactory.createInstance this 0xFFFFFF)
    jset this.tRANSPARENT_COLOR =<< (BasicColorFactory.createInstanceAN this 0x00000000 0x000000 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.tRANSPARENT_GREY =<< (BasicColorFactory.createInstanceAN this 0x52000000 0xECECEC (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.tRANSPARENT_BLACK =<< (BasicColorFactory.createInstanceAN this 0x52000000 0x000000 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.tRANSPARENT_RED =<< (BasicColorFactory.createInstanceAN this 0x52000000 0xFF0000 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.cLEAR_COLOR ((jget (this).bLACK))
    jset this.bORDER_COLOR ((jget (this).wHITE))
    pure ()

new_ :: IO BasicColorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicColorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicColorFactory)
getInstance = do
        pure (BasicColorFactory.instance_)


createInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
createInstance object_ a1 = jmethod object_ "createInstance" (\() -> (createInstance_impl (javaCast object_ :: BasicColorFactory))) () a1

createInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
createInstance_super object_ a1 = (createInstance_impl (javaCast object_ :: BasicColorFactory)) a1

createInstance_impl :: BasicColorFactory -> Int -> IO (BasicColor.BasicColor)
createInstance_impl this value = do
        (BasicColor.new_3 (jget ((jio (BasicColorUtil.getInstance))).aLPHA) value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


createInstanceA :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (BasicColor.BasicColor)
createInstanceA object_ a1 a2 = jmethod object_ "createInstanceA" (\() -> (createInstanceA_impl (javaCast object_ :: BasicColorFactory))) () a1 a2

createInstanceA_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (BasicColor.BasicColor)
createInstanceA_super object_ a1 a2 = (createInstanceA_impl (javaCast object_ :: BasicColorFactory)) a1 a2

createInstanceA_impl :: BasicColorFactory -> Int -> Int -> IO (BasicColor.BasicColor)
createInstanceA_impl this alphaValue value = do
        (BasicColor.new_3 alphaValue value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


createInstanceAN :: (JavaObjectClass this_) => this_ -> Int -> Int -> String -> IO (BasicColor.BasicColor)
createInstanceAN object_ a1 a2 a3 = jmethod object_ "createInstanceAN" (\() -> (createInstanceAN_impl (javaCast object_ :: BasicColorFactory))) () a1 a2 a3

createInstanceAN_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> String -> IO (BasicColor.BasicColor)
createInstanceAN_super object_ a1 a2 a3 = (createInstanceAN_impl (javaCast object_ :: BasicColorFactory)) a1 a2 a3

createInstanceAN_impl :: BasicColorFactory -> Int -> Int -> String -> IO (BasicColor.BasicColor)
createInstanceAN_impl this alphaValue value name = do
        (BasicColor.new_3 alphaValue value name)


createInstanceARGB :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> String -> IO (BasicColor.BasicColor)
createInstanceARGB object_ a1 a2 a3 a4 a5 = jmethod object_ "createInstanceARGB" (\() -> (createInstanceARGB_impl (javaCast object_ :: BasicColorFactory))) () a1 a2 a3 a4 a5

createInstanceARGB_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> String -> IO (BasicColor.BasicColor)
createInstanceARGB_super object_ a1 a2 a3 a4 a5 = (createInstanceARGB_impl (javaCast object_ :: BasicColorFactory)) a1 a2 a3 a4 a5

createInstanceARGB_impl :: BasicColorFactory -> Int -> Int -> Int -> Int -> String -> IO (BasicColor.BasicColor)
createInstanceARGB_impl this alphaValue r g b name = do
        let aLPHA_MASK = 0xFF000000
        (BasicColor.new_3 alphaValue (((((((alphaValue `Data.Bits.shiftL` 24)) Data.Bits..&. aLPHA_MASK)) + ((((r `Data.Bits.shiftL` 16)) Data.Bits..&. 0x00FF0000))) + ((((g `Data.Bits.shiftL` 8)) Data.Bits..&. 0x0000FF00))) + ((b Data.Bits..&. 0x000000FF))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


