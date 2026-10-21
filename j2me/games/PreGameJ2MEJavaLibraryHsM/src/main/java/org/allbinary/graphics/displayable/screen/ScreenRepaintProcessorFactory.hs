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
-- package org.allbinary.graphics.displayable.screen
module ScreenRepaintProcessorFactory where

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
import qualified ScreenRepaintProcessor -- same package or java.lang
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Processor -- org.allbinary.canvas.Processor

data ScreenRepaintProcessorFactory = ScreenRepaintProcessorFactory
    { header_ :: JavaHeader
    }

instance JavaNull ScreenRepaintProcessorFactory where
    javaNull = javaNullRecord "ScreenRepaintProcessorFactory"

instance JavaEquals ScreenRepaintProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenRepaintProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass ScreenRepaintProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenRepaintProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ScreenRepaintProcessorFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    pure this

initFields_ :: ScreenRepaintProcessorFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ScreenRepaintProcessorFactory)
getInstance = do
        pure (ScreenRepaintProcessorFactory.instance_)

new_ :: IO ScreenRepaintProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenRepaintProcessorFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


create :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (Processor.Processor)
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: ScreenRepaintProcessorFactory))) () a1

create_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (Processor.Processor)
create_super object_ a1 = (create_impl (javaCast object_ :: ScreenRepaintProcessorFactory)) a1

create_impl :: ScreenRepaintProcessorFactory -> Displayable.Displayable -> IO (Processor.Processor)
create_impl this displayable = do
    javaCatchReturn $ do
        if (Prelude.not (jio (J2MEUtil.isJ2ME))) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (ScreenRepaintProcessor.new_1 displayable))
        else do
            javaReturn =<< (Processor.getInstance)


