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
-- package org.allbinary.game
module NullIntermissionEnableListener where

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
import qualified IntermissionEnableListenerInterface

-- implements IntermissionEnableListenerInterface
data NullIntermissionEnableListener = NullIntermissionEnableListener
    { header_ :: JavaHeader
    }

instance JavaNull NullIntermissionEnableListener where
    javaNull = javaNullRecord "NullIntermissionEnableListener"

instance JavaEquals NullIntermissionEnableListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullIntermissionEnableListener where
    (==) = jrecordEquals

instance JavaObjectClass NullIntermissionEnableListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: IntermissionEnableListenerInterface.IntermissionEnableListenerInterface) (new_)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullIntermissionEnableListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullIntermissionEnableListener header_
    jregisterLevel header_ this
    IntermissionEnableListenerInterface.registerInterface_ header_
    jregisterMethod header_ "notifyIntermission" (\() -> notifyIntermission_impl this)
    pure this

initFields_ :: NullIntermissionEnableListener -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (IntermissionEnableListenerInterface.IntermissionEnableListenerInterface)
getInstance = do
        pure (NullIntermissionEnableListener.sINGLETON)

new_ :: IO NullIntermissionEnableListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullIntermissionEnableListener -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


notifyIntermission :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
notifyIntermission object_ a1 = jmethod object_ "notifyIntermission" (\() -> (notifyIntermission_impl (javaCast object_ :: NullIntermissionEnableListener))) () a1

notifyIntermission_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
notifyIntermission_super object_ a1 = (notifyIntermission_impl (javaCast object_ :: NullIntermissionEnableListener)) a1

notifyIntermission_impl :: NullIntermissionEnableListener -> Bool -> IO (())
notifyIntermission_impl this enable = do
        pure ()


