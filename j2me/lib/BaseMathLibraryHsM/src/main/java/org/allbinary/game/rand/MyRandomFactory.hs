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
-- package org.allbinary.game.rand
module MyRandomFactory where

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
import qualified Random -- java.util.Random
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data MyRandomFactory = MyRandomFactory
    { header_ :: JavaHeader
    , mathUtil :: IORef (MathUtil.MathUtil)
    , rand :: IORef (Random.Random)
    }

instance JavaNull MyRandomFactory where
    javaNull = javaNullRecord "MyRandomFactory"

instance JavaEquals MyRandomFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyRandomFactory where
    (==) = jrecordEquals

instance JavaObjectClass MyRandomFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MyRandomFactory
newRecord_ = do
    header_ <- newJavaHeader
    mathUtil <- newIORef javaNull
    rand <- newIORef javaNull
    let this = MyRandomFactory header_ mathUtil rand
    jregisterLevel header_ this
    jregisterMethod header_ "setSeed" (\() -> setSeed_impl this)
    jregisterMethod header_ "getNextInt" (\() -> getNextInt_impl this)
    jregisterMethod header_ "getAbsoluteNextInt" (\() -> getAbsoluteNextInt_impl this)
    jregisterMethod header_ "getAbsoluteNextIntAllowZero" (\() -> getAbsoluteNextIntAllowZero_impl this)
    jregisterMethod header_ "shuffle" (\() -> shuffle_impl this)
    jregisterMethod header_ "shuffleTotal" (\() -> shuffleTotal_impl this)
    jregisterMethod header_ "shuffle2" (\() -> shuffle2_impl this)
    jregisterMethod header_ "shuffle2Total" (\() -> shuffle2Total_impl this)
    pure this

initFields_ :: MyRandomFactory -> IO ()
initFields_ this = do
    jset this.mathUtil =<< (MathUtil.getInstance)
    jset this.rand (javaNull)
    pure ()


getInstance :: IO (MyRandomFactory)
getInstance = do
        pure (MyRandomFactory.instance_)

new_ :: IO MyRandomFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyRandomFactory -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (Random.new_1 (jio jcurrentTimeMillis))
        jset (this).rand (assignedValue)
        pure ()


setSeed :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setSeed object_ a1 = jmethod object_ "setSeed" (\() -> (setSeed_impl (javaCast object_ :: MyRandomFactory))) () a1

setSeed_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setSeed_super object_ a1 = (setSeed_impl (javaCast object_ :: MyRandomFactory)) a1

setSeed_impl :: MyRandomFactory -> Int64 -> IO (())
setSeed_impl this seed = do
        assignedValue <- (Random.new_1 seed)
        jset (this).rand (assignedValue)
        pure ()


getNextInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getNextInt object_ a1 = jmethod object_ "getNextInt" (\() -> (getNextInt_impl (javaCast object_ :: MyRandomFactory))) () a1

getNextInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getNextInt_super object_ a1 = (getNextInt_impl (javaCast object_ :: MyRandomFactory)) a1

getNextInt_impl :: MyRandomFactory -> Int -> IO (Int)
getNextInt_impl this range = do
        let div = ((((2147483647 :: Int) `quot` range)) + 1)
        pure ((((jio (Random.nextInt ((jget (this).rand)))) `quot` div)))


getAbsoluteNextInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAbsoluteNextInt object_ a1 = jmethod object_ "getAbsoluteNextInt" (\() -> (getAbsoluteNextInt_impl (javaCast object_ :: MyRandomFactory))) () a1

getAbsoluteNextInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAbsoluteNextInt_super object_ a1 = (getAbsoluteNextInt_impl (javaCast object_ :: MyRandomFactory)) a1

getAbsoluteNextInt_impl :: MyRandomFactory -> Int -> IO (Int)
getAbsoluteNextInt_impl this range = do
        (MathUtil.abs ((jget (this).mathUtil)) (jio (MyRandomFactory.getNextInt this range)))


getAbsoluteNextIntAllowZero :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAbsoluteNextIntAllowZero object_ a1 = jmethod object_ "getAbsoluteNextIntAllowZero" (\() -> (getAbsoluteNextIntAllowZero_impl (javaCast object_ :: MyRandomFactory))) () a1

getAbsoluteNextIntAllowZero_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAbsoluteNextIntAllowZero_super object_ a1 = (getAbsoluteNextIntAllowZero_impl (javaCast object_ :: MyRandomFactory)) a1

getAbsoluteNextIntAllowZero_impl :: MyRandomFactory -> Int -> IO (Int)
getAbsoluteNextIntAllowZero_impl this range = do
    javaCatchReturn $ do
        if (range == 0) then do
            javaReturn (0)
        else do
            javaReturn =<< (MathUtil.abs ((jget (this).mathUtil)) (jio (MyRandomFactory.getNextInt this range)))


shuffle :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
shuffle object_ a1 = jmethod object_ "shuffle" (\() -> (shuffle_impl (javaCast object_ :: MyRandomFactory))) () a1

shuffle_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
shuffle_super object_ a1 = (shuffle_impl (javaCast object_ :: MyRandomFactory)) a1

shuffle_impl :: MyRandomFactory -> JavaArray (Int) -> IO (())
shuffle_impl this intArray = do
        Control.Monad.void (MyRandomFactory.shuffleTotal this intArray ((jlength intArray) * 7))
        pure ()


shuffleTotal :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
shuffleTotal object_ a1 a2 = jmethod object_ "shuffleTotal" (\() -> (shuffleTotal_impl (javaCast object_ :: MyRandomFactory))) () a1 a2

shuffleTotal_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (())
shuffleTotal_super object_ a1 a2 = (shuffleTotal_impl (javaCast object_ :: MyRandomFactory)) a1 a2

shuffleTotal_impl :: MyRandomFactory -> JavaArray (Int) -> Int -> IO (())
shuffleTotal_impl this intArray shuffleTotal = do
        let size = (jlength intArray)
        randomIndex <- newIORef (0)
        randomIndex2 <- newIORef (0)
        value <- newIORef (0)
        forM_ [0 .. shuffleTotal - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (MyRandomFactory.getAbsoluteNextIntAllowZero this size)
            jset randomIndex (assignedValue)
            assignedValue <- (MyRandomFactory.getAbsoluteNextIntAllowZero this size)
            jset randomIndex2 (assignedValue)
            jset value ((jindex intArray ((jget randomIndex))))
            jsetIndex intArray ((jget randomIndex)) ((jindex intArray ((jget randomIndex2))))
            jsetIndex intArray ((jget randomIndex2)) ((jget value))
        pure ()


shuffle2 :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> JavaArray (Int) -> IO (())
shuffle2 object_ a1 a2 = jmethod object_ "shuffle2" (\() -> (shuffle2_impl (javaCast object_ :: MyRandomFactory))) () a1 a2

shuffle2_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> JavaArray (Int) -> IO (())
shuffle2_super object_ a1 a2 = (shuffle2_impl (javaCast object_ :: MyRandomFactory)) a1 a2

shuffle2_impl :: MyRandomFactory -> JavaArray (Int) -> JavaArray (Int) -> IO (())
shuffle2_impl this intArray intArray2 = do
        Control.Monad.void (MyRandomFactory.shuffle2Total this intArray intArray2 ((jlength intArray) * 7))
        pure ()


shuffle2Total :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (())
shuffle2Total object_ a1 a2 a3 = jmethod object_ "shuffle2Total" (\() -> (shuffle2Total_impl (javaCast object_ :: MyRandomFactory))) () a1 a2 a3

shuffle2Total_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (())
shuffle2Total_super object_ a1 a2 a3 = (shuffle2Total_impl (javaCast object_ :: MyRandomFactory)) a1 a2 a3

shuffle2Total_impl :: MyRandomFactory -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (())
shuffle2Total_impl this intArray intArray2 shuffleTotal = do
        let size = (jlength intArray)
        randomIndex <- newIORef (0)
        randomIndex2 <- newIORef (0)
        value <- newIORef (0)
        value2 <- newIORef (0)
        forM_ [0 .. shuffleTotal - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (MyRandomFactory.getAbsoluteNextIntAllowZero this size)
            jset randomIndex (assignedValue)
            assignedValue <- (MyRandomFactory.getAbsoluteNextIntAllowZero this size)
            jset randomIndex2 (assignedValue)
            jset value ((jindex intArray ((jget randomIndex))))
            jset value2 ((jindex intArray2 ((jget randomIndex))))
            jsetIndex intArray ((jget randomIndex)) ((jindex intArray ((jget randomIndex2))))
            jsetIndex intArray ((jget randomIndex2)) ((jget value))
            jsetIndex intArray2 ((jget randomIndex)) ((jindex intArray2 ((jget randomIndex2))))
            jsetIndex intArray2 ((jget randomIndex2)) ((jget value2))
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        randomFactory <- (MyRandomFactory.getInstance)
        stringBuilder <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        let size2 = 100
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append ((jio (StringMaker.appendint stringBuilder (jio (MyRandomFactory.getAbsoluteNextInt randomFactory 3))))) (jget (commonSeps).cOMMA))
        Control.Monad.void (putStrLn (javaToString (jio (StringMaker.toString stringBuilder))))
        Control.Monad.void (StringMaker.delete stringBuilder 0 (jio (StringMaker.length stringBuilder)))
        let intArray = (jnewArray (52) 0)
        let intArray2 = (jnewArray (52) 0)
        let size = (jlength intArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex intArray (index) (index)
            jsetIndex intArray2 (index) (index)
        Control.Monad.void (MyRandomFactory.shuffle2 randomFactory intArray intArray2)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append ((jio (StringMaker.appendint stringBuilder (jindex intArray (index))))) (jget (commonSeps).cOMMA))
        Control.Monad.void (putStrLn (javaToString (jio (StringMaker.toString stringBuilder))))
        Control.Monad.void (StringMaker.delete stringBuilder 0 (jio (StringMaker.length stringBuilder)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append ((jio (StringMaker.appendint stringBuilder (jindex intArray2 (index))))) (jget (commonSeps).cOMMA))
        Control.Monad.void (putStrLn (javaToString (jio (StringMaker.toString stringBuilder))))
        found <- newIORef (False)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset found (False)
            forM_ [0 .. size - 1] $ \index2 -> javaIteration (pure ()) $ do
                when ((jindex intArray (index2)) == index) $ do
                    jset found (True)
            when (Prelude.not (jget found)) $ do
                javaThrow ((JavaException "RuntimeException" ""))
        pure ()


