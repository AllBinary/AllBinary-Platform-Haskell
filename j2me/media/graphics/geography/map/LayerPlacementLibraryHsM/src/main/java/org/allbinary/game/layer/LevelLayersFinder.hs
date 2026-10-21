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
-- package org.allbinary.game.layer
module LevelLayersFinder where

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
import qualified Enumeration -- java.util.Enumeration
import qualified Layer -- org.allbinary.layer.Layer
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil

data LevelLayersFinder = LevelLayersFinder
    { header_ :: JavaHeader
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    }

instance JavaNull LevelLayersFinder where
    javaNull = javaNullRecord "LevelLayersFinder"

instance JavaEquals LevelLayersFinder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LevelLayersFinder where
    (==) = jrecordEquals

instance JavaObjectClass LevelLayersFinder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LevelLayersFinder
newRecord_ = do
    header_ <- newJavaHeader
    enumerationUtil <- newIORef javaNull
    let this = LevelLayersFinder header_ enumerationUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: LevelLayersFinder -> IO ()
initFields_ this = do
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    pure ()

new_ :: IO LevelLayersFinder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LevelLayersFinder -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LevelLayersFinder)
getInstance = do
        pure (LevelLayersFinder.instance_)


get :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (BasicArrayList.BasicArrayList)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: LevelLayersFinder))) () a1

get_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (BasicArrayList.BasicArrayList)
get_super object_ a1 = (get_impl (javaCast object_ :: LevelLayersFinder)) a1

get_impl :: LevelLayersFinder -> ABHashtable.ABHashtable -> IO (BasicArrayList.BasicArrayList)
get_impl this hashtable = do
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        enumeration <- (ABHashtable.keys hashtable)
        layerHashtableCanBeNull <- newIORef (javaNull)
        integerCanBeNull <- newIORef (javaNull)
        cachedIntegerCanBeNull <- newIORef (javaNull)
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            jset layerHashtableCanBeNull ((javaCast (jio (ABHashtable.get hashtable (javaCast (jio (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)) :: Any.Any))) :: ABHashtable.ABHashtable))
            jset integerCanBeNull ((javaCast (jio (ABHashtable.get ((jget layerHashtableCanBeNull)) (javaCast Layer.iD :: Any.Any))) :: Int))
            assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (jget integerCanBeNull))
            jset cachedIntegerCanBeNull (assignedValue)
            when (Prelude.not (jio (BasicArrayList.contains list (jget cachedIntegerCanBeNull)))) $ do
                Control.Monad.void (BasicArrayList.add list (jget cachedIntegerCanBeNull))
        pure (list)


