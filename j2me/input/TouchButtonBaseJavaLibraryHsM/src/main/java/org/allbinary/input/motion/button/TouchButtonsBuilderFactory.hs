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
-- package org.allbinary.input.motion.button
module TouchButtonsBuilderFactory where

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
import qualified NoButtonsTouchInputFactory -- same package or java.lang
import qualified BaseTouchInput -- same package or java.lang

data TouchButtonsBuilderFactory = TouchButtonsBuilderFactory
    { header_ :: JavaHeader
    }

instance JavaNull TouchButtonsBuilderFactory where
    javaNull = javaNullRecord "TouchButtonsBuilderFactory"

instance JavaEquals TouchButtonsBuilderFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonsBuilderFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonsBuilderFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nO_TOUCH_BUTTON_BUILDER_FACTORY #-}
nO_TOUCH_BUTTON_BUILDER_FACTORY = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchButtonsBuilderFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TouchButtonsBuilderFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TouchButtonsBuilderFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchButtonsBuilderFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonsBuilderFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> IO (BaseTouchInput.BaseTouchInput)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TouchButtonsBuilderFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (BaseTouchInput.BaseTouchInput)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: TouchButtonsBuilderFactory))

getInstance_impl :: TouchButtonsBuilderFactory -> IO (BaseTouchInput.BaseTouchInput)
getInstance_impl this = do
        (NoButtonsTouchInputFactory.getInstance)


