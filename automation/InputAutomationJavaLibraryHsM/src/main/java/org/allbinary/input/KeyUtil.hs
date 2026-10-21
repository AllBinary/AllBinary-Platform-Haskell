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
-- package org.allbinary.input
module KeyUtil where

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
import qualified KeyEvent -- java.awt.event.KeyEvent

data KeyUtil = KeyUtil
    { header_ :: JavaHeader
    }

instance JavaNull KeyUtil where
    javaNull = javaNullRecord "KeyUtil"

instance JavaEquals KeyUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyUtil where
    (==) = jrecordEquals

instance JavaObjectClass KeyUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeyUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = KeyUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: KeyUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO KeyUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeyUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isNormallyDisplayed :: Int -> IO (Bool)
isNormallyDisplayed keyCode = do
    javaCatchReturn $ do
        case keyCode of
            switchValue | switchValue == KeyEvent.vK_SPACE || switchValue == KeyEvent.vK_COMMA || switchValue == KeyEvent.vK_MINUS || switchValue == KeyEvent.vK_PERIOD || switchValue == KeyEvent.vK_SLASH || switchValue == KeyEvent.vK_0 || switchValue == KeyEvent.vK_1 || switchValue == KeyEvent.vK_2 || switchValue == KeyEvent.vK_3 || switchValue == KeyEvent.vK_4 || switchValue == KeyEvent.vK_5 || switchValue == KeyEvent.vK_6 || switchValue == KeyEvent.vK_7 || switchValue == KeyEvent.vK_8 || switchValue == KeyEvent.vK_9 || switchValue == KeyEvent.vK_SEMICOLON || switchValue == KeyEvent.vK_EQUALS || switchValue == KeyEvent.vK_A || switchValue == KeyEvent.vK_B || switchValue == KeyEvent.vK_C || switchValue == KeyEvent.vK_D || switchValue == KeyEvent.vK_E || switchValue == KeyEvent.vK_F || switchValue == KeyEvent.vK_G || switchValue == KeyEvent.vK_H || switchValue == KeyEvent.vK_I || switchValue == KeyEvent.vK_J || switchValue == KeyEvent.vK_K || switchValue == KeyEvent.vK_L || switchValue == KeyEvent.vK_M || switchValue == KeyEvent.vK_N || switchValue == KeyEvent.vK_O || switchValue == KeyEvent.vK_P || switchValue == KeyEvent.vK_Q || switchValue == KeyEvent.vK_R || switchValue == KeyEvent.vK_S || switchValue == KeyEvent.vK_T || switchValue == KeyEvent.vK_U || switchValue == KeyEvent.vK_V || switchValue == KeyEvent.vK_W || switchValue == KeyEvent.vK_X || switchValue == KeyEvent.vK_Y || switchValue == KeyEvent.vK_Z || switchValue == KeyEvent.vK_OPEN_BRACKET || switchValue == KeyEvent.vK_BACK_SLASH || switchValue == KeyEvent.vK_CLOSE_BRACKET || switchValue == KeyEvent.vK_NUMPAD0 || switchValue == KeyEvent.vK_NUMPAD1 || switchValue == KeyEvent.vK_NUMPAD2 || switchValue == KeyEvent.vK_NUMPAD3 || switchValue == KeyEvent.vK_NUMPAD4 || switchValue == KeyEvent.vK_NUMPAD5 || switchValue == KeyEvent.vK_NUMPAD6 || switchValue == KeyEvent.vK_NUMPAD7 || switchValue == KeyEvent.vK_NUMPAD8 || switchValue == KeyEvent.vK_NUMPAD9 || switchValue == KeyEvent.vK_MULTIPLY || switchValue == KeyEvent.vK_ADD || switchValue == KeyEvent.vK_SEPARATER || switchValue == KeyEvent.vK_SUBTRACT || switchValue == KeyEvent.vK_DECIMAL || switchValue == KeyEvent.vK_DIVIDE -> do
                javaReturn (True)
            _ -> do
                javaReturn (False)


