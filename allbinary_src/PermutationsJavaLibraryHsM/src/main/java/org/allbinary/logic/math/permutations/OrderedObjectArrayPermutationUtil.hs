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
-- package org.allbinary.logic.math.permutations
module OrderedObjectArrayPermutationUtil where

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
import qualified ComparableObject -- same package or java.lang
import qualified ObjectPermutationVisitor -- same package or java.lang
import qualified Arrays -- java.util.Arrays
import qualified TsUtil -- org.allbinary.TsUtil
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

data OrderedObjectArrayPermutationUtil = OrderedObjectArrayPermutationUtil
    { header_ :: JavaHeader
    , tOTAL_ITERATIONS_TABLE :: IORef (String)
    , fINISHED :: IORef (String)
    }

instance JavaNull OrderedObjectArrayPermutationUtil where
    javaNull = javaNullRecord "OrderedObjectArrayPermutationUtil"

instance JavaEquals OrderedObjectArrayPermutationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderedObjectArrayPermutationUtil where
    (==) = jrecordEquals

instance JavaObjectClass OrderedObjectArrayPermutationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrderedObjectArrayPermutationUtil
newRecord_ = do
    header_ <- newJavaHeader
    tOTAL_ITERATIONS_TABLE <- newIORef ""
    fINISHED <- newIORef ""
    let this = OrderedObjectArrayPermutationUtil header_ tOTAL_ITERATIONS_TABLE fINISHED
    jregisterLevel header_ this
    jregisterMethod header_ "getNext" (\() -> getNext_impl this)
    jregisterMethod header_ "swap" (\() -> swap_impl this)
    jregisterMethod header_ "factorial" (\() -> factorial_impl this)
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    pure this

initFields_ :: OrderedObjectArrayPermutationUtil -> IO ()
initFields_ this = do
    jset this.tOTAL_ITERATIONS_TABLE ("Total Iterations: ")
    jset this.fINISHED ("\nFINISHED")
    pure ()


getInstance :: IO (OrderedObjectArrayPermutationUtil)
getInstance = do
        pure (OrderedObjectArrayPermutationUtil.instance_)

new_ :: IO OrderedObjectArrayPermutationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderedObjectArrayPermutationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getNext :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (())
getNext object_ a1 = jmethod object_ "getNext" (\() -> (getNext_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil))) () a1

getNext_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (())
getNext_super object_ a1 = (getNext_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil)) a1

getNext_impl :: OrderedObjectArrayPermutationUtil -> JavaArray (Any.Any) -> IO (())
getNext_impl this data_ = do
        let length = (jlength data_)
        i <- newIORef ((length - 1))
        tsUtil <- (TsUtil.getInstance)
        fix $ \loop -> when ((jio (TsUtil.hashCode tsUtil (jindex data_ (((jget i) - 1))))) >= (jio (TsUtil.hashCode tsUtil (jindex data_ ((jget i)))))) $ javaIteration (loop) $ do
            jset i (((jget i) - 1))
        j <- newIORef (length)
        fix $ \loop -> when ((jio (TsUtil.hashCode tsUtil (jindex data_ (((jget j) - 1))))) <= (jio (TsUtil.hashCode tsUtil (jindex data_ (((jget i) - 1)))))) $ javaIteration (loop) $ do
            jset j (((jget j) - 1))
        Control.Monad.void (OrderedObjectArrayPermutationUtil.swap this data_ ((jget i) - 1) ((jget j) - 1))
        jset i ((jget i) + 1)
        jset j (length)
        fix $ \loop -> when ((jget i) < (jget j)) $ javaIteration (loop) $ do
            Control.Monad.void (OrderedObjectArrayPermutationUtil.swap this data_ ((jget i) - 1) ((jget j) - 1))
            jset i ((jget i) + 1)
            jset j ((jget j) - 1)
        pure ()


swap :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Int -> Int -> IO (())
swap object_ a1 a2 a3 = jmethod object_ "swap" (\() -> (swap_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil))) () a1 a2 a3

swap_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Int -> Int -> IO (())
swap_super object_ a1 a2 a3 = (swap_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil)) a1 a2 a3

swap_impl :: OrderedObjectArrayPermutationUtil -> JavaArray (Any.Any) -> Int -> Int -> IO (())
swap_impl this data_ a b = do
        let temp = (jindex data_ (a))
        jsetIndex data_ (a) ((jtoObject (jindex data_ (b))))
        jsetIndex data_ (b) ((jtoObject temp))
        pure ()


factorial :: (JavaObjectClass this_) => this_ -> Int -> IO (Int64)
factorial object_ a1 = jmethod object_ "factorial" (\() -> (factorial_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil))) () a1

factorial_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int64)
factorial_super object_ a1 = (factorial_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil)) a1

factorial_impl :: OrderedObjectArrayPermutationUtil -> Int -> IO (Int64)
factorial_impl this dataLength = do
        temp <- newIORef (1)
        when (dataLength > 1) $ do
            forM_ [1 .. dataLength] $ \i -> javaIteration (pure ()) $ do
                jset temp (((jget temp) * (Prelude.fromIntegral i)))
        pure ((jget temp))


generate :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Visitor.Visitor -> IO (())
generate object_ a1 a2 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil))) () a1 a2

generate_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Visitor.Visitor -> IO (())
generate_super object_ a1 a2 = (generate_impl (javaCast object_ :: OrderedObjectArrayPermutationUtil)) a1 a2

generate_impl :: OrderedObjectArrayPermutationUtil -> JavaArray (Any.Any) -> Visitor.Visitor -> IO (())
generate_impl this data_ visitor = do
        iterations <- (OrderedObjectArrayPermutationUtil.factorial this (jlength data_))
        Control.Monad.void (putStr (javaToString (jget (this).tOTAL_ITERATIONS_TABLE)))
        Control.Monad.void (putStrLn (javaToString iterations))
        forM_ [0 .. (iterations - 1) - 1] $ \count -> javaIteration (pure ()) $ do
            Control.Monad.void (OrderedObjectArrayPermutationUtil.getNext this data_)
            Control.Monad.void (Visitor.visit visitor this)
        Control.Monad.void (putStrLn (javaToString (jget (this).fINISHED)))
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        let tOTAL = 7
        let data_ = (jnewArray (tOTAL) javaNull)
        forM_ [0 .. tOTAL - 1] $ \i -> javaIteration (pure ()) $ do
            assignedValue <- (fmap jtoObject (ComparableObject.new_))
            jsetIndex data_ (i) (assignedValue)
        Control.Monad.void (Arrays.sort data_)
        permutationVisitor <- (ObjectPermutationVisitor.new_1 data_)
        let oRIGINAL_DATA_LABEL = "Original Data: "
        Control.Monad.void (putStr (javaToString oRIGINAL_DATA_LABEL))
        Control.Monad.void (ObjectPermutationVisitor.visit permutationVisitor data_)
        Control.Monad.void (OrderedObjectArrayPermutationUtil.generate ((jio (OrderedObjectArrayPermutationUtil.getInstance))) data_ permutationVisitor)
        pure ()


