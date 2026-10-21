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
-- package org.allbinary.midlet
module MidletExitProcessorFactory where

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
import qualified MidletExitProcessor -- same package or java.lang
import qualified MIDlet -- javax.microedition.midlet.MIDlet
import qualified AppletUtil -- org.allbinary.AppletUtil
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Processor -- org.allbinary.canvas.Processor

data MidletExitProcessorFactory = MidletExitProcessorFactory
    { header_ :: JavaHeader
    }

instance JavaNull MidletExitProcessorFactory where
    javaNull = javaNullRecord "MidletExitProcessorFactory"

instance JavaEquals MidletExitProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MidletExitProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass MidletExitProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MidletExitProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = MidletExitProcessorFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getExitInstance" (\() -> getExitInstance_impl this)
    pure this

initFields_ :: MidletExitProcessorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MidletExitProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MidletExitProcessorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MidletExitProcessorFactory)
getInstance = do
        pure (MidletExitProcessorFactory.instance_)


getExitInstance :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (Processor.Processor)
getExitInstance object_ a1 = jmethod object_ "getExitInstance" (\() -> (getExitInstance_impl (javaCast object_ :: MidletExitProcessorFactory))) () a1

getExitInstance_super :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (Processor.Processor)
getExitInstance_super object_ a1 = (getExitInstance_impl (javaCast object_ :: MidletExitProcessorFactory)) a1

getExitInstance_impl :: MidletExitProcessorFactory -> MIDlet.MIDlet -> IO (Processor.Processor)
getExitInstance_impl this midlet = do
    javaCatchReturn $ do
        if ((jio (AppletUtil.isAppletLoader midlet)) || (jio (J2MEUtil.isJ2ME))) then do
            javaReturn =<< (Processor.getInstance)
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (MidletExitProcessor.new_1 midlet))


