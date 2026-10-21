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
-- package org.allbinary.game.displayable.canvas
module CanvasUtil where

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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings

data CanvasUtil = CanvasUtil
    { header_ :: JavaHeader
    }

instance JavaNull CanvasUtil where
    javaNull = javaNullRecord "CanvasUtil"

instance JavaEquals CanvasUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasUtil where
    (==) = jrecordEquals

instance JavaObjectClass CanvasUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CanvasUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = CanvasUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: CanvasUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CanvasUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CanvasUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getKeyName :: Int -> IO (String)
getKeyName key = do
    javaCatchReturn $ do
        commonPhoneStrings <- (CommonPhoneStrings.getInstance)
        if (key == Canvas.uP) then do
            javaReturn ((jget (commonPhoneStrings).uP))
        else if (key == Canvas.dOWN) then do
            javaReturn ((jget (commonPhoneStrings).dOWN))
        else if (key == Canvas.rIGHT) then do
            javaReturn ((jget (commonPhoneStrings).rIGHT))
        else if (key == Canvas.lEFT) then do
            javaReturn ((jget (commonPhoneStrings).lEFT))
        else when (key == Canvas.fIRE) $ do
            javaReturn ((jget (commonPhoneStrings).fIRE))
        pure ("UNKNOWN KEY")


