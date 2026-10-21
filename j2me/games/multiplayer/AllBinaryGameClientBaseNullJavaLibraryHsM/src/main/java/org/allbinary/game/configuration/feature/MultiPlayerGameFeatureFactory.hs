{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
module MultiPlayerGameFeatureFactory where

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
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory

data MultiPlayerGameFeatureFactory = MultiPlayerGameFeatureFactory
    { header_ :: JavaHeader
    }

instance JavaNull MultiPlayerGameFeatureFactory where
    javaNull = javaNullRecord "MultiPlayerGameFeatureFactory"

instance JavaEquals MultiPlayerGameFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiPlayerGameFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass MultiPlayerGameFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MultiPlayerGameFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = MultiPlayerGameFeatureFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "addCommands" (\() -> addCommands_impl this)
    pure this

initFields_ :: MultiPlayerGameFeatureFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (MultiPlayerGameFeatureFactory)
getInstance = do
        pure (MultiPlayerGameFeatureFactory.instance_)

new_ :: IO MultiPlayerGameFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MultiPlayerGameFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


addCommands :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addCommands object_ a1 = jmethod object_ "addCommands" (\() -> (addCommands_impl (javaCast object_ :: MultiPlayerGameFeatureFactory))) () (jtoObject a1)

addCommands_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addCommands_super object_ a1 = (addCommands_impl (javaCast object_ :: MultiPlayerGameFeatureFactory)) (jtoObject a1)

addCommands_impl :: MultiPlayerGameFeatureFactory -> JavaObject -> IO (())
addCommands_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        let canvas = (javaCast anyType :: Canvas.Canvas)
        Control.Monad.void (Canvas.addCommand canvas (jget (gameCommandsFactory).qUIT_COMMAND))
        pure ()


