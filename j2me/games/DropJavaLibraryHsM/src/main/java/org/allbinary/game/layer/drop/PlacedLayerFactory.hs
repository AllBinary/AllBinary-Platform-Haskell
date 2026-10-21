{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.drop
module PlacedLayerFactory where

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
import qualified AllBinaryLayerFactoryInterface -- org.allbinary.layer.AllBinaryLayerFactoryInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data PlacedLayerFactory = PlacedLayerFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull PlacedLayerFactory where
    javaNull = javaNullRecord "PlacedLayerFactory"

instance JavaEquals PlacedLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlacedLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlacedLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlacedLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    let this = PlacedLayerFactory header_ list basicArrayListUtil
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getRandomInstance" (\() -> getRandomInstance_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: PlacedLayerFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO PlacedLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlacedLayerFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: PlacedLayerFactory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: PlacedLayerFactory))

clear_impl :: PlacedLayerFactory -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


getInstance :: IO (PlacedLayerFactory)
getInstance = do
        pure (PlacedLayerFactory.instance_)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: PlacedLayerFactory))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: PlacedLayerFactory))

getSize_impl :: PlacedLayerFactory -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).list)))


getRandomInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface)
getRandomInstance object_ = jmethod object_ "getRandomInstance" (\() -> (getRandomInstance_impl (javaCast object_ :: PlacedLayerFactory))) ()

getRandomInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface)
getRandomInstance_super object_ = (getRandomInstance_impl (javaCast object_ :: PlacedLayerFactory))

getRandomInstance_impl :: PlacedLayerFactory -> IO (AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface)
getRandomInstance_impl this = do
        pure ((javaCast (jio (BasicArrayListUtil.getRandom ((jget (this).basicArrayListUtil)) (jget (this).list))) :: AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface))


add :: (JavaObjectClass this_) => this_ -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PlacedLayerFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PlacedLayerFactory)) a1

add_impl :: PlacedLayerFactory -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> IO (())
add_impl this layerInterfaceFactoryInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterfaceFactoryInterface)
        pure ()


