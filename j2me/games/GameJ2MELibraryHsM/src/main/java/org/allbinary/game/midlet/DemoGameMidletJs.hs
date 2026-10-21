{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.game.midlet
module DemoGameMidletJs where

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
import qualified GameCanvasRunnableInterface -- org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface

-- Java interface: the classes that implement it have these functions
data DemoGameMidletJs = DemoGameMidletJs
    { header_ :: JavaHeader
    }

instance JavaNull DemoGameMidletJs where
    javaNull = javaNullRecord "DemoGameMidletJs"

instance JavaEquals DemoGameMidletJs where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameMidletJs where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameMidletJs where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DemoGameMidletJs
fromHeader_ header = DemoGameMidletJs header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DemoGameMidletJs header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
createDemoGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createDemoGameCanvasRunnableInterface object_ = jmethod object_ "createDemoGameCanvasRunnableInterface" (\() -> (createDemoGameCanvasRunnableInterface_impl (javaCast object_ :: DemoGameMidletJs))) ()

createDemoGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createDemoGameCanvasRunnableInterface_super object_ = (createDemoGameCanvasRunnableInterface_impl (javaCast object_ :: DemoGameMidletJs))

createDemoGameCanvasRunnableInterface_impl :: DemoGameMidletJs -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createDemoGameCanvasRunnableInterface_impl this = javaAbstractMethod "createDemoGameCanvasRunnableInterface"


