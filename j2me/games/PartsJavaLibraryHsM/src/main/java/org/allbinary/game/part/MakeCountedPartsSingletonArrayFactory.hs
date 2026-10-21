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
-- package org.allbinary.game.part
module MakeCountedPartsSingletonArrayFactory where

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
import qualified CountedLayerInterfaceFactoryPart -- same package or java.lang
import qualified PartInterface -- same package or java.lang
import qualified CountedPickedUpLayerInterfaceFactory -- org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
import qualified CountedPickedUpLayerInterfaceFactoryPool -- org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data MakeCountedPartsSingletonArrayFactory = MakeCountedPartsSingletonArrayFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull MakeCountedPartsSingletonArrayFactory where
    javaNull = javaNullRecord "MakeCountedPartsSingletonArrayFactory"

instance JavaEquals MakeCountedPartsSingletonArrayFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MakeCountedPartsSingletonArrayFactory where
    (==) = jrecordEquals

instance JavaObjectClass MakeCountedPartsSingletonArrayFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MakeCountedPartsSingletonArrayFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    list <- newIORef javaNull
    let this = MakeCountedPartsSingletonArrayFactory header_ logUtil list
    jregisterLevel header_ this
    jregisterMethod header_ "getUpdated" (\() -> getUpdated_impl this)
    pure this

initFields_ :: MakeCountedPartsSingletonArrayFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.list =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    pure ()

new_ :: IO MakeCountedPartsSingletonArrayFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MakeCountedPartsSingletonArrayFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MakeCountedPartsSingletonArrayFactory)
getInstance = do
        pure (MakeCountedPartsSingletonArrayFactory.instance_)


-- throws Exception
getUpdated :: (JavaObjectClass this_) => this_ -> JavaArray (PartInterface.PartInterface) -> IO (JavaArray (PartInterface.PartInterface))
getUpdated object_ a1 = jmethod object_ "getUpdated" (\() -> (getUpdated_impl (javaCast object_ :: MakeCountedPartsSingletonArrayFactory))) () a1

getUpdated_super :: (JavaObjectClass this_) => this_ -> JavaArray (PartInterface.PartInterface) -> IO (JavaArray (PartInterface.PartInterface))
getUpdated_super object_ a1 = (getUpdated_impl (javaCast object_ :: MakeCountedPartsSingletonArrayFactory)) a1

getUpdated_impl :: MakeCountedPartsSingletonArrayFactory -> JavaArray (PartInterface.PartInterface) -> IO (JavaArray (PartInterface.PartInterface))
getUpdated_impl this partInterfaceArray = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        forM_ [0 .. (jlength partInterfaceArray) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jindex partInterfaceArray (index)))
        countedBasicArrayList <- (CountedPickedUpLayerInterfaceFactoryPool.getList ((jio (CountedPickedUpLayerInterfaceFactoryPool.getInstance))))
        layerInterfaceFactoryInterface <- newIORef (javaNull)
        size <- (BasicArrayList.size countedBasicArrayList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset layerInterfaceFactoryInterface ((javaCast (jindex ((jget (countedBasicArrayList).objectArray)) (index)) :: CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jio (CountedLayerInterfaceFactoryPart.new_2 0 (jget layerInterfaceFactoryInterface))))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Total Parts: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).list)))))
        Control.Monad.void (StringMaker.append stringBuffer " Counted: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size countedBasicArrayList)))
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).gET_INSTANCE))
        let newPartInterfaceArray = (jnewArray ((jio (BasicArrayList.size ((jget (this).list))))) javaNull)
        let newSize = (jlength newPartInterfaceArray)
        forM_ [0 .. newSize - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex newPartInterfaceArray (index) ((javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: PartInterface.PartInterface))
        pure (newPartInterfaceArray)


