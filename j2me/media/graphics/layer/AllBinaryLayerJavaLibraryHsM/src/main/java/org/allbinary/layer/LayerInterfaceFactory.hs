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
-- package org.allbinary.layer
module LayerInterfaceFactory where

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
import qualified Layer -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LayerInterfaceFactoryInterface -- same package or java.lang
import qualified AllBinaryLayer -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data LayerInterfaceFactory = LayerInterfaceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , hASHTABLE_LABEL :: IORef (String)
    }

instance JavaNull LayerInterfaceFactory where
    javaNull = javaNullRecord "LayerInterfaceFactory"

instance JavaEquals LayerInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass LayerInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    list <- newIORef javaNull
    hASHTABLE_LABEL <- newIORef ""
    let this = LayerInterfaceFactory header_ logUtil list hASHTABLE_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getNexInstance" (\() -> getNexInstance_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: LayerInterfaceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.list =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.hASHTABLE_LABEL ("Hashtable: ")
    pure ()

new_ :: IO LayerInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LayerInterfaceFactory)
getInstance = do
        pure (LayerInterfaceFactory.sINGLETON)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LayerInterfaceFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: LayerInterfaceFactory))

init_impl :: LayerInterfaceFactory -> IO (())
init_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        pure ()


-- throws Exception
getNexInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNexInstance object_ a1 a2 a3 a4 = jmethod object_ "getNexInstance" (\() -> (getNexInstance_impl (javaCast object_ :: LayerInterfaceFactory))) () a1 a2 a3 a4

getNexInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNexInstance_super object_ a1 a2 a3 a4 = (getNexInstance_impl (javaCast object_ :: LayerInterfaceFactory)) a1 a2 a3 a4

getNexInstance_impl :: LayerInterfaceFactory -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNexInstance_impl this hashtable x y z = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).hASHTABLE_LABEL)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) hashtable))))))) this (jget (commonStrings).gET_INSTANCE))
        let typeInteger = (javaCast (jio (ABHashtable.get hashtable (javaCast Layer.iD :: Any.Any))) :: Int)
        let layerInterfaceFactoryInterface = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((typeInteger - 1))) :: LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
        (LayerInterfaceFactoryInterface.getNextInstance layerInterfaceFactoryInterface hashtable x y z)


add :: (JavaObjectClass this_) => this_ -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: LayerInterfaceFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: LayerInterfaceFactory)) a1

add_impl :: LayerInterfaceFactory -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (())
add_impl this layerInterfaceFactoryInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterfaceFactoryInterface)
        pure ()


