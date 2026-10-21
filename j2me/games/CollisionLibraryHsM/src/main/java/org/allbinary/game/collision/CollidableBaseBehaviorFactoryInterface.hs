{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.collision
module CollidableBaseBehaviorFactoryInterface where

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
import qualified CollidableBaseBehavior -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data CollidableBaseBehaviorFactoryInterface = CollidableBaseBehaviorFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull CollidableBaseBehaviorFactoryInterface where
    javaNull = javaNullRecord "CollidableBaseBehaviorFactoryInterface"

instance JavaEquals CollidableBaseBehaviorFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableBaseBehaviorFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass CollidableBaseBehaviorFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CollidableBaseBehaviorFactoryInterface
fromHeader_ header = CollidableBaseBehaviorFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CollidableBaseBehaviorFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


createBehavior :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior object_ = jmethod object_ "createBehavior" (\() -> (createBehavior_impl (javaCast object_ :: CollidableBaseBehaviorFactoryInterface))) ()

createBehavior_super :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior_super object_ = (createBehavior_impl (javaCast object_ :: CollidableBaseBehaviorFactoryInterface))

createBehavior_impl :: CollidableBaseBehaviorFactoryInterface -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior_impl this = javaAbstractMethod "createBehavior"


