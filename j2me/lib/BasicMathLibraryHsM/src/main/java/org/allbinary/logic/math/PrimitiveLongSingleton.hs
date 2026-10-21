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
module PrimitiveLongSingleton where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data PrimitiveLongSingleton = PrimitiveLongSingleton
    { header_ :: JavaHeader
    , uNK :: IORef (JavaArray (Char))
    , nUMBER_ARRAY :: IORef (JavaArray (Int8))
    , nUMBER_CHAR_ARRAY :: IORef (JavaArray (Char))
    , nUMBER_CHAR_ARRAYS :: IORef (JavaArray (JavaArray (Char)))
    , zERO :: IORef (JavaArray (Char))
    }

instance JavaNull PrimitiveLongSingleton where
    javaNull = javaNullRecord "PrimitiveLongSingleton"

instance JavaEquals PrimitiveLongSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimitiveLongSingleton where
    (==) = jrecordEquals

instance JavaObjectClass PrimitiveLongSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PrimitiveLongSingleton
newRecord_ = do
    header_ <- newJavaHeader
    uNK <- newIORef javaNull
    nUMBER_ARRAY <- newIORef javaNull
    nUMBER_CHAR_ARRAY <- newIORef javaNull
    nUMBER_CHAR_ARRAYS <- newIORef javaNull
    zERO <- newIORef javaNull
    let this = PrimitiveLongSingleton header_ uNK nUMBER_ARRAY nUMBER_CHAR_ARRAY nUMBER_CHAR_ARRAYS zERO
    jregisterLevel header_ this
    jregisterMethod header_ "getNumberFromChar" (\() -> getNumberFromChar_impl this)
    pure this

initFields_ :: PrimitiveLongSingleton -> IO ()
initFields_ this = do
    jset this.uNK ((jarrayFromList ['U', 'n', 'k']))
    jset this.nUMBER_ARRAY ((jarrayFromList [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]))
    jset this.nUMBER_CHAR_ARRAY ((jarrayFromList ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']))
    jset this.nUMBER_CHAR_ARRAYS ((jarrayFromList [(jarrayFromList ['0']), (jarrayFromList ['1']), (jarrayFromList ['2']), (jarrayFromList ['3']), (jarrayFromList ['4']), (jarrayFromList ['5']), (jarrayFromList ['6']), (jarrayFromList ['7']), (jarrayFromList ['8']), (jarrayFromList ['9'])]))
    jset this.zERO ((jarrayFromList [(jindex ((jget (this).nUMBER_CHAR_ARRAY)) (0))]))
    pure ()

new_ :: IO PrimitiveLongSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PrimitiveLongSingleton -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PrimitiveLongSingleton)
getInstance = do
        pure (PrimitiveLongSingleton.instance_)


-- throws Exception
getNumberFromChar :: (JavaObjectClass this_) => this_ -> Char -> IO (Int8)
getNumberFromChar object_ a1 = jmethod object_ "getNumberFromChar" (\() -> (getNumberFromChar_impl (javaCast object_ :: PrimitiveLongSingleton))) () a1

getNumberFromChar_super :: (JavaObjectClass this_) => this_ -> Char -> IO (Int8)
getNumberFromChar_super object_ a1 = (getNumberFromChar_impl (javaCast object_ :: PrimitiveLongSingleton)) a1

getNumberFromChar_impl :: PrimitiveLongSingleton -> Char -> IO (Int8)
getNumberFromChar_impl this numberAsChar = do
    javaCatchReturn $ do
        let size = (jlength (jget (this).nUMBER_CHAR_ARRAY))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).nUMBER_CHAR_ARRAY)) (index)) == numberAsChar) $ do
                javaReturn ((jindex ((jget (this).nUMBER_ARRAY)) (index)))
        javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.appendchar ((jio (StringMaker.append ((jio (StringMaker.new_))) "numberAsChar was not in array: "))) numberAsChar)))))))


