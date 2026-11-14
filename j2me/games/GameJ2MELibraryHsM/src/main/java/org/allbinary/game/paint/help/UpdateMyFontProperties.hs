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
-- package org.allbinary.game.paint.help
module UpdateMyFontProperties where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data UpdateMyFontProperties = UpdateMyFontProperties
    { header_ :: JavaHeader
    , actionStringArray :: IORef (JavaArray (String))
    , keymappingBeginWidthArray :: IORef (JavaArray (Int))
    , actionStringDeltaXArray :: IORef (JavaArray (Int))
    , inputDeltaXArray :: IORef (JavaArray (JavaArray (Int)))
    , sepArray :: IORef (JavaArray (JavaArray (String)))
    , sepWidthArray :: IORef (JavaArray (JavaArray (Int)))
    , charHeight :: IORef (Int)
    }

instance JavaNull UpdateMyFontProperties where
    javaNull = javaNullRecord "UpdateMyFontProperties"

instance JavaEquals UpdateMyFontProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpdateMyFontProperties where
    (==) = jrecordEquals

instance JavaObjectClass UpdateMyFontProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO UpdateMyFontProperties
newRecord_ = do
    header_ <- newJavaHeader
    actionStringArray <- newIORef javaNull
    keymappingBeginWidthArray <- newIORef javaNull
    actionStringDeltaXArray <- newIORef javaNull
    inputDeltaXArray <- newIORef javaNull
    sepArray <- newIORef javaNull
    sepWidthArray <- newIORef javaNull
    charHeight <- newIORef 0
    let this = UpdateMyFontProperties header_ actionStringArray keymappingBeginWidthArray actionStringDeltaXArray inputDeltaXArray sepArray sepWidthArray charHeight
    jregisterLevel header_ this
    pure this

initFields_ :: UpdateMyFontProperties -> IO ()
initFields_ this = do
    jset this.actionStringArray =<< (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))
    jset this.keymappingBeginWidthArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    jset this.actionStringDeltaXArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    jset this.inputDeltaXArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY))
    jset this.sepArray ((jget ((jio (StringUtil.getInstance))).oNE_EMPTY_STRING_ARRAY_OF_ARRAYS))
    jset this.sepWidthArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY))
    jset this.charHeight (0)
    pure ()

new_ :: IO UpdateMyFontProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UpdateMyFontProperties -> IO ()
init_ this = do
    initFields_ this


