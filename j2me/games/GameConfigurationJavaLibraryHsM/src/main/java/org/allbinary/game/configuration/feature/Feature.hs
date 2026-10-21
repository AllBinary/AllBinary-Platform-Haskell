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
-- package org.allbinary.game.configuration.feature
module Feature where

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
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data Feature = Feature
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull Feature where
    javaNull = javaNullRecord "Feature"

instance JavaEquals Feature where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Feature where
    (==) = jrecordEquals

instance JavaObjectClass Feature where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashtable #-}
hashtable = unsafePerformIO ((StdUtil.createHashtable ((jio (StdUtil.getInstance)))) >>= newIORef)

newRecord_ :: IO Feature
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = Feature header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: Feature -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO Feature
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: Feature -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        Control.Monad.void (Feature.add name this)
        Control.Monad.void (ChangedGameFeatureListener.add ((jio (ChangedGameFeatureListener.getInstance))) this)
        pure ()


getInstance :: String -> IO (Feature)
getInstance name = do
        pure ((javaCast (jio (get ((jget Feature.hashtable)) name)) :: Feature))


add :: String -> Feature -> IO (())
add name gameFeature = do
        Control.Monad.void (put ((jget Feature.hashtable)) name gameFeature)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Feature))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Feature))

toString_impl :: Feature -> IO (String)
toString_impl this = do
        (Feature.getName this)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: Feature))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: Feature))

getName_impl :: Feature -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


