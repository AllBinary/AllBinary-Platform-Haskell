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
-- package org.allbinary.game.combat.destroy
module DestroyableBaseBehavior where

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
import qualified Class -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified DestroyableInterface

-- implements DestroyableInterface
data DestroyableBaseBehavior = DestroyableBaseBehavior
    { header_ :: JavaHeader
    }

instance JavaNull DestroyableBaseBehavior where
    javaNull = javaNullRecord "DestroyableBaseBehavior"

instance JavaEquals DestroyableBaseBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DestroyableBaseBehavior where
    (==) = jrecordEquals

instance JavaObjectClass DestroyableBaseBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DestroyableBaseBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = DestroyableBaseBehavior header_
    jregisterLevel header_ this
    DestroyableInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    pure this

initFields_ :: DestroyableBaseBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DestroyableBaseBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DestroyableBaseBehavior -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DestroyableBaseBehavior)
getInstance = do
        pure (DestroyableBaseBehavior.instance_)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: DestroyableBaseBehavior))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: DestroyableBaseBehavior))

getName_impl :: DestroyableBaseBehavior -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


-- throws Exception
isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: DestroyableBaseBehavior))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: DestroyableBaseBehavior))

isDestroyed_impl :: DestroyableBaseBehavior -> IO (Bool)
isDestroyed_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: DestroyableBaseBehavior))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: DestroyableBaseBehavior)) a1

setDestroyed_impl :: DestroyableBaseBehavior -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        pure ()


