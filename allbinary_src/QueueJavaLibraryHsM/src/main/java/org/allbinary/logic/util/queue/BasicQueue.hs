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
-- package org.allbinary.logic.util.queue
module BasicQueue where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicQueue = BasicQueue
    { header_ :: JavaHeader
    , queueVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicQueue where
    javaNull = javaNullRecord "BasicQueue"

instance JavaEquals BasicQueue where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicQueue where
    (==) = jrecordEquals

instance JavaObjectClass BasicQueue where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicQueue
newRecord_ = do
    header_ <- newJavaHeader
    queueVector <- newIORef javaNull
    let this = BasicQueue header_ queueVector
    jregisterLevel header_ this
    jregisterMethod header_ "offer" (\() -> offer_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "removeLast" (\() -> removeLast_impl this)
    pure this

initFields_ :: BasicQueue -> IO ()
initFields_ this = do
    jset this.queueVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO BasicQueue
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicQueue -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
offer :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
offer object_ a1 = jmethod object_ "offer" (\() -> (offer_impl (javaCast object_ :: BasicQueue))) () (jtoObject a1)

offer_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
offer_super object_ a1 = (offer_impl (javaCast object_ :: BasicQueue)) (jtoObject a1)

offer_impl :: BasicQueue -> JavaObject -> IO (Bool)
offer_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (BasicArrayList.add ((jget (this).queueVector)) anyType)
        pure (True)


remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: BasicQueue))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: BasicQueue)) (jtoObject a1)

remove_impl :: BasicQueue -> JavaObject -> IO (())
remove_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (BasicArrayList.remove ((jget (this).queueVector)) anyType)
        pure ()


removeLast :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
removeLast object_ = jmethod object_ "removeLast" (\() -> (removeLast_impl (javaCast object_ :: BasicQueue))) ()

removeLast_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
removeLast_super object_ = (removeLast_impl (javaCast object_ :: BasicQueue))

removeLast_impl :: BasicQueue -> IO (Any.Any)
removeLast_impl this = do
        anyType <- (BasicArrayList.get ((jget (this).queueVector)) ((jio (BasicArrayList.size ((jget (this).queueVector)))) - 1))
        Control.Monad.void (BasicArrayList.remove ((jget (this).queueVector)) anyType)
        pure ((jtoObject anyType))


