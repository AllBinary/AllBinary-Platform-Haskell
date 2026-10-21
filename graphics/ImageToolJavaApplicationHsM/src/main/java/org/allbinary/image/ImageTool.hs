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
-- package org.allbinary.image
module ImageTool where

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
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified ImageToolJFrame -- org.allbinary.image.gui.ImageToolJFrame
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageTool = ImageTool
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ImageTool where
    javaNull = javaNullRecord "ImageTool"

instance JavaEquals ImageTool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageTool where
    (==) = jrecordEquals

instance JavaObjectClass ImageTool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageTool
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ImageTool header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: ImageTool -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO ImageTool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageTool -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (invokeLater ((jget (java.awt).eventQueue)) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


