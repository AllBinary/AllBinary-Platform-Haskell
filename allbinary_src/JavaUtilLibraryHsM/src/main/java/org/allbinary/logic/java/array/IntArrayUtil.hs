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
-- package org.allbinary.logic.java.array
module IntArrayUtil where

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

data IntArrayUtil = IntArrayUtil
    { header_ :: JavaHeader
    }

instance JavaNull IntArrayUtil where
    javaNull = javaNullRecord "IntArrayUtil"

instance JavaEquals IntArrayUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IntArrayUtil where
    (==) = jrecordEquals

instance JavaObjectClass IntArrayUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IntArrayUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = IntArrayUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: IntArrayUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO IntArrayUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IntArrayUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of toString: calls the overload for the types of the arguments
toString :: (JavaObjectClass o1) => o1 -> IO (String)
toString a1
    | jisInstanceOf a1 (javaNull :: JavaArray (Int)) = toString_overload1 (javaCast a1 :: JavaArray (Int))
    | jisInstanceOf a1 (javaNull :: JavaArray (JavaArray (Int))) = toString_overload2 (javaCast a1 :: JavaArray (JavaArray (Int)))
    | jisInstanceOf a1 (javaNull :: JavaArray (JavaArray (JavaArray (Int)))) = toString_overload3 (javaCast a1 :: JavaArray (JavaArray (JavaArray (Int))))
    | otherwise = toString_overload3 (javaCast a1 :: JavaArray (JavaArray (JavaArray (Int))))

toString_overload1 :: JavaArray (Int) -> IO (String)
toString_overload1 array = do
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. (jlength array) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.appendint stringBuffer (jindex array (index)))
            when (index < (jlength array)) $ do
                Control.Monad.void (StringMaker.append stringBuffer ", ")
        (StringMaker.toString stringBuffer)


toString_overload2 :: JavaArray (JavaArray (Int)) -> IO (String)
toString_overload2 array = do
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. (jlength array) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer "{")
            forM_ [0 .. (jlength (jindex array (index))) - 1] $ \index2 -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jindex ((jindex array (index))) (index2)))))
                when (index2 < ((jlength (jindex array (index))) - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer ", ")
            Control.Monad.void (StringMaker.append stringBuffer "}")
            when (index < ((jlength array) - 1)) $ do
                Control.Monad.void (StringMaker.append stringBuffer ", \n")
        (StringMaker.toString stringBuffer)


toString_overload3 :: JavaArray (JavaArray (JavaArray (Int))) -> IO (String)
toString_overload3 array = do
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. (jlength array) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer "{")
            forM_ [0 .. (jlength (jindex array (index))) - 1] $ \index2 -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer "{")
                forM_ [0 .. (jlength (jindex ((jindex array (index))) (index2))) - 1] $ \index3 -> javaIteration (pure ()) $ do
                    Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jindex ((jindex ((jindex array (index))) (index2))) (index3)))))
                    when (index3 < ((jlength (jindex ((jindex array (index))) (index2))) - 1)) $ do
                        Control.Monad.void (StringMaker.append stringBuffer ", ")
                Control.Monad.void (StringMaker.append stringBuffer "}")
                when (index2 < ((jlength (jindex array (index))) - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer ", ")
            Control.Monad.void (StringMaker.append stringBuffer "}")
            when (index < ((jlength array) - 1)) $ do
                Control.Monad.void (StringMaker.append stringBuffer ", \n")
        (StringMaker.toString stringBuffer)


