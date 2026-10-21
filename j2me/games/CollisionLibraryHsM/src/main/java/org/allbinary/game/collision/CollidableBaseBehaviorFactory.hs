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
module CollidableBaseBehaviorFactory where

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
import qualified CollidableBaseBehaviorFactoryInterface

-- implements CollidableBaseBehaviorFactoryInterface
data CollidableBaseBehaviorFactory = CollidableBaseBehaviorFactory
    { header_ :: JavaHeader
    }

instance JavaNull CollidableBaseBehaviorFactory where
    javaNull = javaNullRecord "CollidableBaseBehaviorFactory"

instance JavaEquals CollidableBaseBehaviorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableBaseBehaviorFactory where
    (==) = jrecordEquals

instance JavaObjectClass CollidableBaseBehaviorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CollidableBaseBehaviorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CollidableBaseBehaviorFactory header_
    jregisterLevel header_ this
    CollidableBaseBehaviorFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "createBehavior" (\() -> createBehavior_impl this)
    pure this

initFields_ :: CollidableBaseBehaviorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CollidableBaseBehaviorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollidableBaseBehaviorFactory -> IO ()
init_ this = do
    initFields_ this


createBehavior :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior object_ = jmethod object_ "createBehavior" (\() -> (createBehavior_impl (javaCast object_ :: CollidableBaseBehaviorFactory))) ()

createBehavior_super :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior_super object_ = (createBehavior_impl (javaCast object_ :: CollidableBaseBehaviorFactory))

createBehavior_impl :: CollidableBaseBehaviorFactory -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


