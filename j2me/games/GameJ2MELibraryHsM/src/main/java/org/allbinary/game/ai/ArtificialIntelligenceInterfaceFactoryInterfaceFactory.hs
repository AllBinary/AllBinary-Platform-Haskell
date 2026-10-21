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
-- package org.allbinary.game.ai
module ArtificialIntelligenceInterfaceFactoryInterfaceFactory where

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
import qualified BasicAI -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ArtificialIntelligenceInterfaceFactoryInterface -- same package or java.lang
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data ArtificialIntelligenceInterfaceFactoryInterfaceFactory = ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ArtificialIntelligenceInterfaceFactoryInterfaceFactory where
    javaNull = javaNullRecord "ArtificialIntelligenceInterfaceFactoryInterfaceFactory"

instance JavaEquals ArtificialIntelligenceInterfaceFactoryInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ArtificialIntelligenceInterfaceFactoryInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass ArtificialIntelligenceInterfaceFactoryInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ArtificialIntelligenceInterfaceFactoryInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = ArtificialIntelligenceInterfaceFactoryInterfaceFactory header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getInstanceFromCollection" (\() -> getInstanceFromCollection_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory -> IO ()
initFields_ this = do
    jset this.list =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    pure ()

new_ :: IO ArtificialIntelligenceInterfaceFactoryInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory))

clear_impl :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory -> IO (())
clear_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        pure ()


getInstance :: IO (ArtificialIntelligenceInterfaceFactoryInterfaceFactory)
getInstance = do
        pure ((jget ArtificialIntelligenceInterfaceFactoryInterfaceFactory.sINGLETON))


getInstanceFromCollection :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface)
getInstanceFromCollection object_ a1 = jmethod object_ "getInstanceFromCollection" (\() -> (getInstanceFromCollection_impl (javaCast object_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory))) () a1

getInstanceFromCollection_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface)
getInstanceFromCollection_super object_ a1 = (getInstanceFromCollection_impl (javaCast object_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory)) a1

getInstanceFromCollection_impl :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory -> ABHashtable.ABHashtable -> IO (ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface)
getInstanceFromCollection_impl this hashtable = do
        let typeInteger = (javaCast (jio (ABHashtable.get hashtable (javaCast BasicAI.iD :: Any.Any))) :: Int)
        let type_ = typeInteger
        let artificialIntelligenceInterfaceFactoryInterface = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((type_ - 1))) :: ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface)
        pure (artificialIntelligenceInterfaceFactoryInterface)


add :: (JavaObjectClass this_) => this_ -> ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory)) a1

add_impl :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory -> ArtificialIntelligenceInterfaceFactoryInterface.ArtificialIntelligenceInterfaceFactoryInterface -> IO (())
add_impl this artificialIntelligenceInterfaceFactoryInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) artificialIntelligenceInterfaceFactoryInterface)
        pure ()


