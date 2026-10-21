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
-- package org.allbinary.canvas
module CustomGameMenuUtil where

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
import qualified AppletUtil -- org.allbinary.AppletUtil
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas

data CustomGameMenuUtil = CustomGameMenuUtil
    { header_ :: JavaHeader
    }

instance JavaNull CustomGameMenuUtil where
    javaNull = javaNullRecord "CustomGameMenuUtil"

instance JavaEquals CustomGameMenuUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomGameMenuUtil where
    (==) = jrecordEquals

instance JavaObjectClass CustomGameMenuUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomGameMenuUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = CustomGameMenuUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: CustomGameMenuUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CustomGameMenuUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomGameMenuUtil -> IO ()
init_ this = do
    initFields_ this


add :: MyCanvas.MyCanvas -> IO (())
add canvas = do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        if (jio (AppletUtil.isAppletLoader canvas)) then do
            pure ()
        else if (jio (J2MEUtil.isHTML)) then do
            pure ()
        else do
            Control.Monad.void (MyCanvas.addCommand canvas (jget (gameCommandsFactory).eXIT_COMMAND))
        pure ()


