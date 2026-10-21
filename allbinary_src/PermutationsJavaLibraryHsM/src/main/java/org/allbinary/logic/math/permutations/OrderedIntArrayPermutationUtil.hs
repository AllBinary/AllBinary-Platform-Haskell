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
module OrderedIntArrayPermutationUtil where

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
import qualified IntPermutationVisitor -- same package or java.lang
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

data OrderedIntArrayPermutationUtil = OrderedIntArrayPermutationUtil
    { header_ :: JavaHeader
    , tOTAL_ITERATIONS_TABLE :: IORef (String)
    , fINISHED :: IORef (String)
    }

instance JavaNull OrderedIntArrayPermutationUtil where
    javaNull = javaNullRecord "OrderedIntArrayPermutationUtil"

instance JavaEquals OrderedIntArrayPermutationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderedIntArrayPermutationUtil where
    (==) = jrecordEquals

instance JavaObjectClass OrderedIntArrayPermutationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OrderedIntArrayPermutationUtil
newRecord_ = do
    header_ <- newJavaHeader
    tOTAL_ITERATIONS_TABLE <- newIORef ""
    fINISHED <- newIORef ""
    let this = OrderedIntArrayPermutationUtil header_ tOTAL_ITERATIONS_TABLE fINISHED
    jregisterLevel header_ this
    jregisterMethod header_ "getNext" (\() -> getNext_impl this)
    jregisterMethod header_ "swap" (\() -> swap_impl this)
    jregisterMethod header_ "factorial" (\() -> factorial_impl this)
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    pure this

initFields_ :: OrderedIntArrayPermutationUtil -> IO ()
initFields_ this = do
    jset this.tOTAL_ITERATIONS_TABLE ("Total Iterations: ")
    jset this.fINISHED ("\nFINISHED")
    pure ()


getInstance :: IO (OrderedIntArrayPermutationUtil)
getInstance = do
        pure (OrderedIntArrayPermutationUtil.instance_)

new_ :: IO OrderedIntArrayPermutationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderedIntArrayPermutationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getNext :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
getNext object_ a1 = jmethod object_ "getNext" (\() -> (getNext_impl (javaCast object_ :: OrderedIntArrayPermutationUtil))) () a1

getNext_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
getNext_super object_ a1 = (getNext_impl (javaCast object_ :: OrderedIntArrayPermutationUtil)) a1

getNext_impl :: OrderedIntArrayPermutationUtil -> JavaArray (Int) -> IO (())
getNext_impl this data_ = do
        let length = (jlength data_)
        i <- newIORef ((length - 1))
        fix $ \loop -> when ((jindex data_ (((jget i) - 1))) >= (jindex data_ ((jget i)))) $ javaIteration (loop) $ do
            jset i (((jget i) - 1))
        j <- newIORef (length)
        fix $ \loop -> when ((jindex data_ (((jget j) - 1))) <= (jindex data_ (((jget i) - 1)))) $ javaIteration (loop) $ do
            jset j (((jget j) - 1))
        Control.Monad.void (OrderedIntArrayPermutationUtil.swap this data_ ((jget i) - 1) ((jget j) - 1))
        jset i ((jget i) + 1)
        jset j (length)
        fix $ \loop -> when ((jget i) < (jget j)) $ javaIteration (loop) $ do
            Control.Monad.void (OrderedIntArrayPermutationUtil.swap this data_ ((jget i) - 1) ((jget j) - 1))
            jset i ((jget i) + 1)
            jset j ((jget j) - 1)
        pure ()


swap :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> IO (())
swap object_ a1 a2 a3 = jmethod object_ "swap" (\() -> (swap_impl (javaCast object_ :: OrderedIntArrayPermutationUtil))) () a1 a2 a3

swap_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> IO (())
swap_super object_ a1 a2 a3 = (swap_impl (javaCast object_ :: OrderedIntArrayPermutationUtil)) a1 a2 a3

swap_impl :: OrderedIntArrayPermutationUtil -> JavaArray (Int) -> Int -> Int -> IO (())
swap_impl this data_ a b = do
        let temp = (jindex data_ (a))
        jsetIndex data_ (a) ((jindex data_ (b)))
        jsetIndex data_ (b) (temp)
        pure ()


factorial :: (JavaObjectClass this_) => this_ -> Int -> IO (Int64)
factorial object_ a1 = jmethod object_ "factorial" (\() -> (factorial_impl (javaCast object_ :: OrderedIntArrayPermutationUtil))) () a1

factorial_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int64)
factorial_super object_ a1 = (factorial_impl (javaCast object_ :: OrderedIntArrayPermutationUtil)) a1

factorial_impl :: OrderedIntArrayPermutationUtil -> Int -> IO (Int64)
factorial_impl this dataLength = do
        temp <- newIORef (1)
        when (dataLength > 1) $ do
            forM_ [1 .. dataLength] $ \i -> javaIteration (pure ()) $ do
                jset temp (((jget temp) * (Prelude.fromIntegral i)))
        pure ((jget temp))


generate :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Visitor.Visitor -> IO (())
generate object_ a1 a2 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: OrderedIntArrayPermutationUtil))) () a1 a2

generate_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Visitor.Visitor -> IO (())
generate_super object_ a1 a2 = (generate_impl (javaCast object_ :: OrderedIntArrayPermutationUtil)) a1 a2

generate_impl :: OrderedIntArrayPermutationUtil -> JavaArray (Int) -> Visitor.Visitor -> IO (())
generate_impl this data_ visitor = do
        iterations <- (OrderedIntArrayPermutationUtil.factorial this (jlength data_))
        Control.Monad.void (putStr (javaToString (jget (this).tOTAL_ITERATIONS_TABLE)))
        Control.Monad.void (putStrLn (javaToString iterations))
        forM_ [0 .. (iterations - 1) - 1] $ \count -> javaIteration (pure ()) $ do
            Control.Monad.void (OrderedIntArrayPermutationUtil.getNext this data_)
            Control.Monad.void (Visitor.visit visitor this)
        Control.Monad.void (putStrLn (javaToString (jget (this).fINISHED)))
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        let tOTAL = 3
        let data_ = (jnewArray (tOTAL) 0)
        forM_ [0 .. tOTAL - 1] $ \i -> javaIteration (pure ()) $ do
            jsetIndex data_ (i) (i)
        permutationVisitor <- (IntPermutationVisitor.new_1 data_)
        let oRIGINAL_DATA_LABEL = "Original Data: "
        Control.Monad.void (putStr (javaToString oRIGINAL_DATA_LABEL))
        Control.Monad.void (IntPermutationVisitor.print permutationVisitor data_)
        Control.Monad.void (OrderedIntArrayPermutationUtil.generate ((jio (OrderedIntArrayPermutationUtil.getInstance))) data_ permutationVisitor)
        pure ()


