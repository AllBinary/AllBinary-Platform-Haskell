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
-- package org.allbinary.math
module AngleIncrementInfoFactory where

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
import qualified AngleIncrementInfo -- same package or java.lang
import qualified AngleFactory -- same package or java.lang

data AngleIncrementInfoFactory = AngleIncrementInfoFactory
    { header_ :: JavaHeader
    , angleIncrementInfo :: IORef (JavaArray (AngleIncrementInfo.AngleIncrementInfo))
    }

instance JavaNull AngleIncrementInfoFactory where
    javaNull = javaNullRecord "AngleIncrementInfoFactory"

instance JavaEquals AngleIncrementInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AngleIncrementInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass AngleIncrementInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AngleIncrementInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    angleIncrementInfo <- newIORef javaNull
    let this = AngleIncrementInfoFactory header_ angleIncrementInfo
    jregisterLevel header_ this
    jregisterMethod header_ "getAt" (\() -> getAt_impl this)
    pure this

initFields_ :: AngleIncrementInfoFactory -> IO ()
initFields_ this = do
    jset this.angleIncrementInfo ((jnewArray ((Prelude.fromIntegral (jget ((jio (AngleFactory.getInstance))).tOTAL_ANGLE))) javaNull))
    pure ()

new_ :: IO AngleIncrementInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AngleIncrementInfoFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AngleIncrementInfoFactory)
getInstance = do
        pure (AngleIncrementInfoFactory.instance_)


getAt :: (JavaObjectClass this_) => this_ -> Int16 -> IO (AngleIncrementInfo.AngleIncrementInfo)
getAt object_ a1 = jmethod object_ "getAt" (\() -> (getAt_impl (javaCast object_ :: AngleIncrementInfoFactory))) () a1

getAt_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (AngleIncrementInfo.AngleIncrementInfo)
getAt_super object_ a1 = (getAt_impl (javaCast object_ :: AngleIncrementInfoFactory)) a1

getAt_impl :: AngleIncrementInfoFactory -> Int16 -> IO (AngleIncrementInfo.AngleIncrementInfo)
getAt_impl this angleIncrement = do
    javaCatchReturn $ do
        let halfAngleIncrement = (((Prelude.fromIntegral angleIncrement) `Data.Bits.shiftR` 1))
        angleIncrementInfo <- newIORef (javaNull)
        let angleIncrementInfoCanBeNull = (jindex ((jget (this).angleIncrementInfo)) (halfAngleIncrement))
        if (angleIncrementInfoCanBeNull == javaNull) then do
            assignedValue <- (AngleIncrementInfo.new_1 angleIncrement)
            jset angleIncrementInfo (assignedValue)
            jsetIndex ((jget (this).angleIncrementInfo)) (halfAngleIncrement) ((jget angleIncrementInfo))
            javaReturn ((jget angleIncrementInfo))
        else do
            jset angleIncrementInfo (angleIncrementInfoCanBeNull)
        pure ((jget angleIncrementInfo))


