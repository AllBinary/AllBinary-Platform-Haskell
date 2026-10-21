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
-- package org.allbinary.android.input
module VirtualKeyboardFactory where

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
import qualified VirtualKeyboard -- same package or java.lang
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory
import qualified VirtualKeyboardAPI1 -- org.allbinary.android.input.api1.VirtualKeyboardAPI1
import qualified VirtualKeyboardAPI3 -- org.allbinary.android.input.api3.VirtualKeyboardAPI3
import qualified Activity -- android.app.Activity

data VirtualKeyboardFactory = VirtualKeyboardFactory
    { header_ :: JavaHeader
    }

instance JavaNull VirtualKeyboardFactory where
    javaNull = javaNullRecord "VirtualKeyboardFactory"

instance JavaEquals VirtualKeyboardFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VirtualKeyboardFactory where
    (==) = jrecordEquals

instance JavaObjectClass VirtualKeyboardFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE virtualKeyboard #-}
virtualKeyboard = unsafePerformIO (newIORef (VirtualKeyboard.nULL_VIRTUAL_KEYBOARD))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VirtualKeyboardFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = VirtualKeyboardFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: VirtualKeyboardFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO VirtualKeyboardFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VirtualKeyboardFactory -> IO ()
init_ this = do
    initFields_ this


init :: Activity.Activity -> IO (())
init activity = do
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        if (sDK_VERSION <= 2) then do
            assignedValue <- (VirtualKeyboardAPI1.new_1 activity)
            jset VirtualKeyboardFactory.virtualKeyboard (assignedValue)
        else do
            assignedValue <- (VirtualKeyboardAPI3.new_1 activity)
            jset VirtualKeyboardFactory.virtualKeyboard (assignedValue)
        pure ()


getInstance :: IO (VirtualKeyboard.VirtualKeyboard)
getInstance = do
        pure ((jget VirtualKeyboardFactory.virtualKeyboard))


