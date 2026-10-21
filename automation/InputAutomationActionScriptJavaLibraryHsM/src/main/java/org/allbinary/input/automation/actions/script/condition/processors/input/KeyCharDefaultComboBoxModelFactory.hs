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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module KeyCharDefaultComboBoxModelFactory where

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
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified KeyStroke -- same package or java.lang
import qualified KeyStrokeMap -- abbot.tester.KeyStrokeMap
import qualified KeySingletonFactory -- org.allbinary.input.KeySingletonFactory
-- import javax.swing.*

data KeyCharDefaultComboBoxModelFactory = KeyCharDefaultComboBoxModelFactory
    { header_ :: JavaHeader
    }

instance JavaNull KeyCharDefaultComboBoxModelFactory where
    javaNull = javaNullRecord "KeyCharDefaultComboBoxModelFactory"

instance JavaEquals KeyCharDefaultComboBoxModelFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyCharDefaultComboBoxModelFactory where
    (==) = jrecordEquals

instance JavaObjectClass KeyCharDefaultComboBoxModelFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeyCharDefaultComboBoxModelFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = KeyCharDefaultComboBoxModelFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: KeyCharDefaultComboBoxModelFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO KeyCharDefaultComboBoxModelFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeyCharDefaultComboBoxModelFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (DefaultComboBoxModel.DefaultComboBoxModel)
getInstance = do
        defaultComboBoxModel <- (DefaultComboBoxModel.new_)
        keyArray <- (KeySingletonFactory.getArray)
        forM_ [0 .. (jlength keyArray) - 1] $ \index -> javaIteration (pure ()) $ do
            let nextKey = (jindex keyArray (index))
            keyStroke <- (KeyStroke.getKeyStroke (nextKey) 0)
            keyChar <- (KeyStrokeMap.getChar keyStroke)
            Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (javaToString keyChar))
        pure (defaultComboBoxModel)


