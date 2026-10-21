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
-- package org.allbinary.game.collision
module CollidableNeverCollideBehaviorFactory (module CollidableNeverCollideBehaviorFactory, module CollidableBaseBehaviorFactory) where

import CollidableBaseBehaviorFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, createBehavior, createBehavior_super, createBehavior_impl, instanceC, instance_)
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
import qualified CollidableNeverCollideBehavior -- same package or java.lang
import qualified CollidableBaseBehavior -- same package or java.lang
import qualified CollidableBaseBehaviorFactory

data CollidableNeverCollideBehaviorFactory = CollidableNeverCollideBehaviorFactory
    { header_ :: JavaHeader
    , base :: CollidableBaseBehaviorFactory.CollidableBaseBehaviorFactory
    , instance_ :: IORef (CollidableNeverCollideBehavior.CollidableNeverCollideBehavior)
    }

instance JavaNull CollidableNeverCollideBehaviorFactory where
    javaNull = javaNullRecord "CollidableNeverCollideBehaviorFactory"

instance JavaEquals CollidableNeverCollideBehaviorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableNeverCollideBehaviorFactory where
    (==) = jrecordEquals

instance JavaObjectClass CollidableNeverCollideBehaviorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO CollidableNeverCollideBehaviorFactory
newRecord_ = do
    base <- CollidableBaseBehaviorFactory.newRecord_
    let header_ = base.header_
    instance_ <- newIORef javaNull
    let this = CollidableNeverCollideBehaviorFactory header_ base instance_
    jregisterLevel header_ this
    jregisterMethod header_ "createBehavior" (\() -> createBehavior_impl this)
    pure this

initFields_ :: CollidableNeverCollideBehaviorFactory -> IO ()
initFields_ this = do
    jset this.instance_ =<< (CollidableNeverCollideBehavior.new_1 False)
    pure ()

new_ :: IO CollidableNeverCollideBehaviorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollidableNeverCollideBehaviorFactory -> IO ()
init_ this = do
    CollidableBaseBehaviorFactory.init_ this.base
    initFields_ this


getInstance :: IO (CollidableNeverCollideBehaviorFactory)
getInstance = do
        pure (CollidableNeverCollideBehaviorFactory.instanceC)


createBehavior :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior object_ = jmethod object_ "createBehavior" (\() -> (createBehavior_impl (javaCast object_ :: CollidableNeverCollideBehaviorFactory))) ()

createBehavior_super :: (JavaObjectClass this_) => this_ -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior_super object_ = (createBehavior_impl (javaCast object_ :: CollidableNeverCollideBehaviorFactory))

createBehavior_impl :: CollidableNeverCollideBehaviorFactory -> IO (CollidableBaseBehavior.CollidableBaseBehavior)
createBehavior_impl this = do
        pure ((javaCast (jget (this).instance_) :: CollidableBaseBehavior.CollidableBaseBehavior))


