{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.platform
module ThreedObjResources where

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
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data ThreedObjResources = ThreedObjResources
    { header_ :: JavaHeader
    , hashtable :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull ThreedObjResources where
    javaNull = javaNullRecord "ThreedObjResources"

instance JavaEquals ThreedObjResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreedObjResources where
    (==) = jrecordEquals

instance JavaObjectClass ThreedObjResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreedObjResources
newRecord_ = do
    header_ <- newJavaHeader
    hashtable <- newIORef javaNull
    let this = ThreedObjResources header_ hashtable
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: ThreedObjResources -> IO ()
initFields_ this = do
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    pure ()

new_ :: IO ThreedObjResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThreedObjResources -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ThreedObjResources)
getInstance = do
        pure (ThreedObjResources.instance_)


get :: (JavaObjectClass this_) => this_ -> String -> IO (String)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ThreedObjResources))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
get_super object_ a1 = (get_impl (javaCast object_ :: ThreedObjResources)) a1

get_impl :: ThreedObjResources -> String -> IO (String)
get_impl this resourceName = do
    javaCatchReturn $ do
        let resourceName2 = (javaCast (jio (ABHashtable.get ((jget (this).hashtable)) resourceName)) :: String)
        when (resourceName2 /= javaNull) $ do
            javaReturn (resourceName2)
        pure (resourceName)


