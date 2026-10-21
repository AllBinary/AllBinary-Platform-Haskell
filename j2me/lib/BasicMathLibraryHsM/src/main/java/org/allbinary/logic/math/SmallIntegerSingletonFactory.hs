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
module SmallIntegerSingletonFactory where

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
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data SmallIntegerSingletonFactory = SmallIntegerSingletonFactory
    { header_ :: JavaHeader
    , nEGATIVE_MAX :: IORef (Int)
    , pOSITIVE_MAX :: IORef (Int)
    , iNTEGER_ARRAY :: IORef (JavaArray (Int))
    , sTRING_ARRAY :: IORef (JavaArray (String))
    , mIN :: IORef (Int)
    , lastMin :: IORef (Int)
    , lastNegativeMin :: IORef (Int)
    }

instance JavaNull SmallIntegerSingletonFactory where
    javaNull = javaNullRecord "SmallIntegerSingletonFactory"

instance JavaEquals SmallIntegerSingletonFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SmallIntegerSingletonFactory where
    (==) = jrecordEquals

instance JavaObjectClass SmallIntegerSingletonFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SmallIntegerSingletonFactory
newRecord_ = do
    header_ <- newJavaHeader
    nEGATIVE_MAX <- newIORef 0
    pOSITIVE_MAX <- newIORef 0
    iNTEGER_ARRAY <- newIORef javaNull
    sTRING_ARRAY <- newIORef javaNull
    mIN <- newIORef 0
    lastMin <- newIORef 0
    lastNegativeMin <- newIORef 0
    let this = SmallIntegerSingletonFactory header_ nEGATIVE_MAX pOSITIVE_MAX iNTEGER_ARRAY sTRING_ARRAY mIN lastMin lastNegativeMin
    jregisterLevel header_ this
    jregisterMethod header_ "getMin" (\() -> getMin_impl this)
    jregisterMethod header_ "getMinAllowed" (\() -> getMinAllowed_impl this)
    jregisterMethod header_ "initWithRange" (\() -> initWithRange_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getAt" (\() -> getAt_impl this)
    jregisterMethod header_ "getAtNoThrow" (\() -> getAtNoThrow_impl this)
    jregisterMethod header_ "createInstance" (\() -> createInstance_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    pure this

initFields_ :: SmallIntegerSingletonFactory -> IO ()
initFields_ this = do
    jset this.nEGATIVE_MAX (500)
    jset this.pOSITIVE_MAX (0x2D1)
    jset this.iNTEGER_ARRAY ((jnewArray (((jget (this).nEGATIVE_MAX) + (jget (this).pOSITIVE_MAX))) javaNull))
    jset this.sTRING_ARRAY ((jnewArray (((jget (this).nEGATIVE_MAX) + (jget (this).pOSITIVE_MAX))) javaNull))
    jset this.mIN (0)
    jset this.lastMin (0)
    jset this.lastNegativeMin (0)
    pure ()


getInstance :: IO (SmallIntegerSingletonFactory)
getInstance = do
        pure (SmallIntegerSingletonFactory.instance_)


getMin :: (JavaObjectClass this_) => this_ -> IO (Int)
getMin object_ = jmethod object_ "getMin" (\() -> (getMin_impl (javaCast object_ :: SmallIntegerSingletonFactory))) ()

getMin_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMin_super object_ = (getMin_impl (javaCast object_ :: SmallIntegerSingletonFactory))

getMin_impl :: SmallIntegerSingletonFactory -> IO (Int)
getMin_impl this = do
        minAllowed <- (SmallIntegerSingletonFactory.getMinAllowed this)
        when ((jget (this).mIN) <= minAllowed) $ do
            if (jio (J2MEUtil.isJ2ME)) then do
                pure ()
            else if (jio (AndroidUtil.isAndroid)) then do
                logUtil <- (LogUtil.getInstance)
                Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Android InputFactory was initialized before GameMidlet: "))) (jget (this).mIN)))))) this "getMin")
                Control.Monad.void (SmallIntegerSingletonFactory.initWithRange this 0x291 6)
            else do
                logUtil <- (LogUtil.getInstance)
                Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: "))) (jget (this).mIN)))))) this "getMin")
                Control.Monad.void (SmallIntegerSingletonFactory.initWithRange this 0x2D0 6)
        when ((jget (this).mIN) <= minAllowed) $ do
            logUtil <- (LogUtil.getInstance)
            Control.Monad.void (LogUtil.put logUtil "This means you loaded the InputFactory before determining the platform input size requirements." this "getMin" (JavaException "Exception" ""))
        pure ((jget (this).mIN))


getMinAllowed :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinAllowed object_ = jmethod object_ "getMinAllowed" (\() -> (getMinAllowed_impl (javaCast object_ :: SmallIntegerSingletonFactory))) ()

getMinAllowed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinAllowed_super object_ = (getMinAllowed_impl (javaCast object_ :: SmallIntegerSingletonFactory))

getMinAllowed_impl :: SmallIntegerSingletonFactory -> IO (Int)
getMinAllowed_impl this = do
    javaCatchReturn $ do
        if (jio (J2MEUtil.isJ2ME)) then do
            javaReturn (0)
        else do
            if (jio (AndroidUtil.isAndroid)) then do
                javaReturn (0x101)
            else do
                javaReturn (23)


initWithRange :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initWithRange object_ a1 a2 = jmethod object_ "initWithRange" (\() -> (initWithRange_impl (javaCast object_ :: SmallIntegerSingletonFactory))) () a1 a2

initWithRange_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initWithRange_super object_ a1 a2 = (initWithRange_impl (javaCast object_ :: SmallIntegerSingletonFactory)) a1 a2

initWithRange_impl :: SmallIntegerSingletonFactory -> Int -> Int -> IO (())
initWithRange_impl this value negativeValue = do
        forM_ [(value - 1), (value - 1) + (-1) .. (jget (this).lastMin)] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).iNTEGER_ARRAY)) ((index + (jget (this).nEGATIVE_MAX))) ((Prelude.fromIntegral (index) :: Int))
        forM_ [(negativeValue - 1), (negativeValue - 1) + (-1) .. (jget (this).lastNegativeMin)] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).iNTEGER_ARRAY)) (index) ((Prelude.fromIntegral ((Prelude.negate index)) :: Int))
        when ((jget (this).lastMin) < value) $ do
            jset (this).lastMin (value)
            jset (this).mIN (value)
        when ((jget (this).lastNegativeMin) < negativeValue) $ do
            jset (this).lastNegativeMin (negativeValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: SmallIntegerSingletonFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: SmallIntegerSingletonFactory))

init_impl :: SmallIntegerSingletonFactory -> IO (())
init_impl this = do
        when (((jget (this).lastMin) < (jget (this).pOSITIVE_MAX)) || ((jget (this).lastNegativeMin) < (jget (this).nEGATIVE_MAX))) $ do
            forM_ [((jget (this).pOSITIVE_MAX) - 1), ((jget (this).pOSITIVE_MAX) - 1) + (-1) .. (jget (this).lastMin)] $ \index -> javaIteration (pure ()) $ do
                jsetIndex ((jget (this).iNTEGER_ARRAY)) ((index + (jget (this).nEGATIVE_MAX))) ((Prelude.fromIntegral (index) :: Int))
            forM_ [((jget (this).nEGATIVE_MAX) - 1), ((jget (this).nEGATIVE_MAX) - 1) + (-1) .. (jget (this).lastNegativeMin)] $ \index -> javaIteration (pure ()) $ do
                jsetIndex ((jget (this).iNTEGER_ARRAY)) (index) ((Prelude.fromIntegral ((Prelude.negate index)) :: Int))
            jset (this).lastMin ((jget (this).pOSITIVE_MAX))
            jset (this).mIN ((jget (this).lastMin))
            jset (this).lastNegativeMin ((jget (this).nEGATIVE_MAX))
        pure ()

new_ :: IO SmallIntegerSingletonFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SmallIntegerSingletonFactory -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (SmallIntegerSingletonFactory.initWithRange this 23 0)
        pure ()


getAt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAt object_ a1 = jmethod object_ "getAt" (\() -> (getAt_impl (javaCast object_ :: SmallIntegerSingletonFactory))) () a1

getAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAt_super object_ a1 = (getAt_impl (javaCast object_ :: SmallIntegerSingletonFactory)) a1

getAt_impl :: SmallIntegerSingletonFactory -> Int -> IO (Int)
getAt_impl this index = do
        pure ((jindex ((jget (this).iNTEGER_ARRAY)) ((index + (jget (this).nEGATIVE_MAX)))))


getAtNoThrow :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAtNoThrow object_ a1 = jmethod object_ "getAtNoThrow" (\() -> (getAtNoThrow_impl (javaCast object_ :: SmallIntegerSingletonFactory))) () a1

getAtNoThrow_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAtNoThrow_super object_ a1 = (getAtNoThrow_impl (javaCast object_ :: SmallIntegerSingletonFactory)) a1

getAtNoThrow_impl :: SmallIntegerSingletonFactory -> Int -> IO (Int)
getAtNoThrow_impl this index = do
    javaCatchReturn $ do
        when ((index + (jget (this).nEGATIVE_MAX)) > ((jlength (jget (this).iNTEGER_ARRAY)) - 1)) $ do
            javaReturn ((jindex ((jget (this).iNTEGER_ARRAY)) (((Prelude.negate 1) + (jget (this).nEGATIVE_MAX)))))
        pure ((jindex ((jget (this).iNTEGER_ARRAY)) ((index + (jget (this).nEGATIVE_MAX)))))


createInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
createInstance object_ a1 = jmethod object_ "createInstance" (\() -> (createInstance_impl (javaCast object_ :: SmallIntegerSingletonFactory))) () a1

createInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
createInstance_super object_ a1 = (createInstance_impl (javaCast object_ :: SmallIntegerSingletonFactory)) a1

createInstance_impl :: SmallIntegerSingletonFactory -> Int -> IO (Int)
createInstance_impl this index = do
        integer <- newIORef =<< (SmallIntegerSingletonFactory.getAt this index)
        when ((jget integer) == javaNull) $ do
            jset integer ((Prelude.fromIntegral (index) :: Int))
        pure ((jget integer))


getString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getString object_ a1 = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: SmallIntegerSingletonFactory))) () a1

getString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getString_super object_ a1 = (getString_impl (javaCast object_ :: SmallIntegerSingletonFactory)) a1

getString_impl :: SmallIntegerSingletonFactory -> Int -> IO (String)
getString_impl this index = do
        let i = (index + (jget (this).nEGATIVE_MAX))
        when ((jindex ((jget (this).sTRING_ARRAY)) (i)) == javaNull) $ do
            assignedValue <- (toString ((jindex ((jget (this).iNTEGER_ARRAY)) (i))))
            jsetIndex ((jget (this).sTRING_ARRAY)) (i) (assignedValue)
        pure ((jindex ((jget (this).sTRING_ARRAY)) (i)))


