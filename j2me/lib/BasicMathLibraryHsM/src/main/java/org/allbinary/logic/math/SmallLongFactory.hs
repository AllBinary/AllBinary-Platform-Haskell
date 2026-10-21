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
-- package org.allbinary.logic.math
module SmallLongFactory where

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

data SmallLongFactory = SmallLongFactory
    { header_ :: JavaHeader
    , nEGATIVE_MAX :: IORef (Int)
    , pOSITIVE_MAX :: IORef (Int)
    , iNTEGER_ARRAY :: IORef (JavaArray (Int64))
    , sTRING_ARRAY :: IORef (JavaArray (String))
    , mIN :: IORef (Int)
    , lastMin :: IORef (Int)
    , lastNegativeMin :: IORef (Int)
    }

instance JavaNull SmallLongFactory where
    javaNull = javaNullRecord "SmallLongFactory"

instance JavaEquals SmallLongFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SmallLongFactory where
    (==) = jrecordEquals

instance JavaObjectClass SmallLongFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SmallLongFactory
newRecord_ = do
    header_ <- newJavaHeader
    nEGATIVE_MAX <- newIORef 0
    pOSITIVE_MAX <- newIORef 0
    iNTEGER_ARRAY <- newIORef javaNull
    sTRING_ARRAY <- newIORef javaNull
    mIN <- newIORef 0
    lastMin <- newIORef 0
    lastNegativeMin <- newIORef 0
    let this = SmallLongFactory header_ nEGATIVE_MAX pOSITIVE_MAX iNTEGER_ARRAY sTRING_ARRAY mIN lastMin lastNegativeMin
    jregisterLevel header_ this
    jregisterMethod header_ "initWithRange" (\() -> initWithRange_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceNoThrow" (\() -> getInstanceNoThrow_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    pure this

initFields_ :: SmallLongFactory -> IO ()
initFields_ this = do
    jset this.nEGATIVE_MAX (500)
    jset this.pOSITIVE_MAX (0x2D1)
    jset this.iNTEGER_ARRAY ((jnewArray (((jget (this).nEGATIVE_MAX) + (jget (this).pOSITIVE_MAX))) javaNull))
    jset this.sTRING_ARRAY ((jnewArray (((jget (this).nEGATIVE_MAX) + (jget (this).pOSITIVE_MAX))) javaNull))
    jset this.mIN (0)
    jset this.lastMin (0)
    jset this.lastNegativeMin (0)
    pure ()


getInstance :: IO (SmallLongFactory)
getInstance = do
        pure (SmallLongFactory.instance_)


initWithRange :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initWithRange object_ a1 a2 = jmethod object_ "initWithRange" (\() -> (initWithRange_impl (javaCast object_ :: SmallLongFactory))) () a1 a2

initWithRange_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initWithRange_super object_ a1 a2 = (initWithRange_impl (javaCast object_ :: SmallLongFactory)) a1 a2

initWithRange_impl :: SmallLongFactory -> Int -> Int -> IO (())
initWithRange_impl this value negativeValue = do
        forM_ [(value - 1), (value - 1) + (-1) .. (jget (this).lastMin)] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).iNTEGER_ARRAY)) ((index + (jget (this).nEGATIVE_MAX))) ((Prelude.fromIntegral (index) :: Int64))
        forM_ [(negativeValue - 1), (negativeValue - 1) + (-1) .. (jget (this).lastNegativeMin)] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).iNTEGER_ARRAY)) (index) ((Prelude.fromIntegral ((Prelude.negate index)) :: Int64))
        when ((jget (this).lastMin) < value) $ do
            jset (this).lastMin (value)
            jset (this).mIN (value)
        when ((jget (this).lastNegativeMin) < negativeValue) $ do
            jset (this).lastNegativeMin (negativeValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: SmallLongFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: SmallLongFactory))

init_impl :: SmallLongFactory -> IO (())
init_impl this = do
        when ((jindex ((jget (this).iNTEGER_ARRAY)) (0)) == javaNull) $ do
            when (((jget (this).lastMin) < (jget (this).pOSITIVE_MAX)) || ((jget (this).lastNegativeMin) < (jget (this).nEGATIVE_MAX))) $ do
                forM_ [((jget (this).pOSITIVE_MAX) - 1), ((jget (this).pOSITIVE_MAX) - 1) + (-1) .. (jget (this).lastMin)] $ \index -> javaIteration (pure ()) $ do
                    jsetIndex ((jget (this).iNTEGER_ARRAY)) ((index + (jget (this).nEGATIVE_MAX))) ((Prelude.fromIntegral (index) :: Int64))
                forM_ [((jget (this).nEGATIVE_MAX) - 1), ((jget (this).nEGATIVE_MAX) - 1) + (-1) .. (jget (this).lastNegativeMin)] $ \index -> javaIteration (pure ()) $ do
                    jsetIndex ((jget (this).iNTEGER_ARRAY)) (index) ((Prelude.fromIntegral ((Prelude.negate index)) :: Int64))
                jset (this).lastMin ((jget (this).pOSITIVE_MAX))
                jset (this).lastNegativeMin ((jget (this).nEGATIVE_MAX))
        pure ()

new_ :: IO SmallLongFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SmallLongFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstanceNoThrow :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
getInstanceNoThrow object_ a1 = jmethod object_ "getInstanceNoThrow" (\() -> (getInstanceNoThrow_impl (javaCast object_ :: SmallLongFactory))) () a1

getInstanceNoThrow_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
getInstanceNoThrow_super object_ a1 = (getInstanceNoThrow_impl (javaCast object_ :: SmallLongFactory)) a1

getInstanceNoThrow_impl :: SmallLongFactory -> Int64 -> IO (Int64)
getInstanceNoThrow_impl this index = do
    javaCatchReturn $ do
        when ((index + (Prelude.fromIntegral (jget (this).nEGATIVE_MAX))) > (Prelude.fromIntegral ((jlength (jget (this).iNTEGER_ARRAY)) - 1))) $ do
            javaReturn ((jindex ((jget (this).iNTEGER_ARRAY)) (((Prelude.negate 1) + (jget (this).nEGATIVE_MAX)))))
        pure ((jindex ((jget (this).iNTEGER_ARRAY)) ((((Prelude.fromIntegral index)) + (jget (this).nEGATIVE_MAX)))))


getString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getString object_ a1 = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: SmallLongFactory))) () a1

getString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getString_super object_ a1 = (getString_impl (javaCast object_ :: SmallLongFactory)) a1

getString_impl :: SmallLongFactory -> Int -> IO (String)
getString_impl this index = do
        let i = (index + (jget (this).nEGATIVE_MAX))
        when ((jindex ((jget (this).sTRING_ARRAY)) (i)) == javaNull) $ do
            assignedValue <- (toString ((jindex ((jget (this).iNTEGER_ARRAY)) (i))))
            jsetIndex ((jget (this).sTRING_ARRAY)) (i) (assignedValue)
        pure ((jindex ((jget (this).sTRING_ARRAY)) (i)))


