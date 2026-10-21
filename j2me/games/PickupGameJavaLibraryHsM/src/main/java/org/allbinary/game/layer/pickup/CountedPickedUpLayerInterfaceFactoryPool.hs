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
-- package org.allbinary.game.layer.pickup
module CountedPickedUpLayerInterfaceFactoryPool where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CountedPickedUpLayerInterfaceFactoryPool = CountedPickedUpLayerInterfaceFactoryPool
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull CountedPickedUpLayerInterfaceFactoryPool where
    javaNull = javaNullRecord "CountedPickedUpLayerInterfaceFactoryPool"

instance JavaEquals CountedPickedUpLayerInterfaceFactoryPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CountedPickedUpLayerInterfaceFactoryPool where
    (==) = jrecordEquals

instance JavaObjectClass CountedPickedUpLayerInterfaceFactoryPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CountedPickedUpLayerInterfaceFactoryPool
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = CountedPickedUpLayerInterfaceFactoryPool header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: CountedPickedUpLayerInterfaceFactoryPool -> IO ()
initFields_ this = do
    jset this.list (javaNull)
    pure ()

new_ :: IO CountedPickedUpLayerInterfaceFactoryPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CountedPickedUpLayerInterfaceFactoryPool -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactoryPool))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactoryPool))

getList_impl :: CountedPickedUpLayerInterfaceFactoryPool -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


getInstance :: IO (CountedPickedUpLayerInterfaceFactoryPool)
getInstance = do
        pure ((jget CountedPickedUpLayerInterfaceFactoryPool.sINGLETON))


init :: IO (())
init = do
        assignedValue <- (new_)
        jset CountedPickedUpLayerInterfaceFactoryPool.sINGLETON (assignedValue)
        pure ()


