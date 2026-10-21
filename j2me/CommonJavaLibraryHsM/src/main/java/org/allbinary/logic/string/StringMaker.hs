{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.string
module StringMaker where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor

data StringMaker = StringMaker
    { header_ :: JavaHeader
    , charArray :: IORef (JavaArray (Char))
    , currentLength :: IORef (Int)
    }

instance JavaNull StringMaker where
    javaNull = javaNullRecord "StringMaker"

instance JavaEquals StringMaker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StringMaker where
    (==) = jrecordEquals

instance JavaObjectClass StringMaker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StringMaker
newRecord_ = do
    header_ <- newJavaHeader
    charArray <- newIORef javaNull
    currentLength <- newIORef 0
    let this = StringMaker header_ charArray currentLength
    jregisterLevel header_ this
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "appendchar" (\() -> appendchar_impl this)
    jregisterMethod header_ "appendCharArray" (\() -> appendCharArray_impl this)
    jregisterMethod header_ "appendbyte" (\() -> appendbyte_impl this)
    jregisterMethod header_ "appendshort" (\() -> appendshort_impl this)
    jregisterMethod header_ "appendint" (\() -> appendint_impl this)
    jregisterMethod header_ "appendlong" (\() -> appendlong_impl this)
    jregisterMethod header_ "appendfloat" (\() -> appendfloat_impl this)
    jregisterMethod header_ "appendboolean" (\() -> appendboolean_impl this)
    jregisterMethod header_ "ensureCapacity" (\() -> ensureCapacity_impl this)
    jregisterMethod header_ "min" (\() -> min_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "length" (\() -> length_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: StringMaker -> IO ()
initFields_ this = do
    jset this.charArray (javaNull)
    jset this.currentLength (0)
    pure ()

new_ :: IO StringMaker
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StringMaker -> IO ()
init_ this = do
        initFields_ this
        jset (this).charArray ((jnewArray (20) '\0'))
        pure ()


append :: (JavaObjectClass this_) => this_ -> String -> IO (StringMaker)
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: StringMaker))) () a1

append_super :: (JavaObjectClass this_) => this_ -> String -> IO (StringMaker)
append_super object_ a1 = (append_impl (javaCast object_ :: StringMaker)) a1

append_impl :: StringMaker -> String -> IO (StringMaker)
append_impl this string = do
        let stringLength = (Prelude.length string)
        Control.Monad.void (StringMaker.ensureCapacity this ((jget (this).currentLength) + stringLength))
        Control.Monad.void (jgetChars string 0 stringLength (jget (this).charArray) (jget (this).currentLength))
        jset (this).currentLength (((jget (this).currentLength) + stringLength))
        pure (this)


appendchar :: (JavaObjectClass this_) => this_ -> Char -> IO (StringMaker)
appendchar object_ a1 = jmethod object_ "appendchar" (\() -> (appendchar_impl (javaCast object_ :: StringMaker))) () a1

appendchar_super :: (JavaObjectClass this_) => this_ -> Char -> IO (StringMaker)
appendchar_super object_ a1 = (appendchar_impl (javaCast object_ :: StringMaker)) a1

appendchar_impl :: StringMaker -> Char -> IO (StringMaker)
appendchar_impl this c = do
        Control.Monad.void (StringMaker.ensureCapacity this ((jget (this).currentLength) + 1))
        jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) (c)
        pure (this)


appendCharArray :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (StringMaker)
appendCharArray object_ a1 a2 a3 = jmethod object_ "appendCharArray" (\() -> (appendCharArray_impl (javaCast object_ :: StringMaker))) () a1 a2 a3

appendCharArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (StringMaker)
appendCharArray_super object_ a1 a2 a3 = (appendCharArray_impl (javaCast object_ :: StringMaker)) a1 a2 a3

appendCharArray_impl :: StringMaker -> JavaArray (Char) -> Int -> Int -> IO (StringMaker)
appendCharArray_impl this charArray start end = do
        Control.Monad.void (StringMaker.ensureCapacity this ((jget (this).currentLength) + ((end - start))))
        forM_ [start .. end - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ((jindex charArray (index)))
        pure (this)


appendbyte :: (JavaObjectClass this_) => this_ -> Int8 -> IO (StringMaker)
appendbyte object_ a1 = jmethod object_ "appendbyte" (\() -> (appendbyte_impl (javaCast object_ :: StringMaker))) () a1

appendbyte_super :: (JavaObjectClass this_) => this_ -> Int8 -> IO (StringMaker)
appendbyte_super object_ a1 = (appendbyte_impl (javaCast object_ :: StringMaker)) a1

appendbyte_impl :: StringMaker -> Int8 -> IO (StringMaker)
appendbyte_impl this b = do
        Control.Monad.void (StringMaker.append this (javaToString b))
        pure (this)


appendshort :: (JavaObjectClass this_) => this_ -> Int16 -> IO (StringMaker)
appendshort object_ a1 = jmethod object_ "appendshort" (\() -> (appendshort_impl (javaCast object_ :: StringMaker))) () a1

appendshort_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (StringMaker)
appendshort_super object_ a1 = (appendshort_impl (javaCast object_ :: StringMaker)) a1

appendshort_impl :: StringMaker -> Int16 -> IO (StringMaker)
appendshort_impl this b = do
        Control.Monad.void (StringMaker.append this (javaToString b))
        pure (this)


appendint :: (JavaObjectClass this_) => this_ -> Int -> IO (StringMaker)
appendint object_ a1 = jmethod object_ "appendint" (\() -> (appendint_impl (javaCast object_ :: StringMaker))) () a1

appendint_super :: (JavaObjectClass this_) => this_ -> Int -> IO (StringMaker)
appendint_super object_ a1 = (appendint_impl (javaCast object_ :: StringMaker)) a1

appendint_impl :: StringMaker -> Int -> IO (StringMaker)
appendint_impl this i = do
        Control.Monad.void (StringMaker.append this (javaToString i))
        pure (this)


appendlong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (StringMaker)
appendlong object_ a1 = jmethod object_ "appendlong" (\() -> (appendlong_impl (javaCast object_ :: StringMaker))) () a1

appendlong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (StringMaker)
appendlong_super object_ a1 = (appendlong_impl (javaCast object_ :: StringMaker)) a1

appendlong_impl :: StringMaker -> Int64 -> IO (StringMaker)
appendlong_impl this l = do
        Control.Monad.void (StringMaker.append this (javaToString l))
        pure (this)


appendfloat :: (JavaObjectClass this_) => this_ -> Float -> IO (StringMaker)
appendfloat object_ a1 = jmethod object_ "appendfloat" (\() -> (appendfloat_impl (javaCast object_ :: StringMaker))) () a1

appendfloat_super :: (JavaObjectClass this_) => this_ -> Float -> IO (StringMaker)
appendfloat_super object_ a1 = (appendfloat_impl (javaCast object_ :: StringMaker)) a1

appendfloat_impl :: StringMaker -> Float -> IO (StringMaker)
appendfloat_impl this f = do
        Control.Monad.void (StringMaker.append this (javaToString f))
        pure (this)


appendboolean :: (JavaObjectClass this_) => this_ -> Bool -> IO (StringMaker)
appendboolean object_ a1 = jmethod object_ "appendboolean" (\() -> (appendboolean_impl (javaCast object_ :: StringMaker))) () a1

appendboolean_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (StringMaker)
appendboolean_super object_ a1 = (appendboolean_impl (javaCast object_ :: StringMaker)) a1

appendboolean_impl :: StringMaker -> Bool -> IO (StringMaker)
appendboolean_impl this bool = do
        if bool then do
            Control.Monad.void (StringMaker.ensureCapacity this ((jget (this).currentLength) + 4))
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('t')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('r')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('u')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('e')
        else do
            Control.Monad.void (StringMaker.ensureCapacity this ((jget (this).currentLength) + 5))
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('f')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('a')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('l')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('s')
            jsetIndex ((jget (this).charArray)) ((jpostIncrement (this).currentLength (+ 1))) ('e')
        pure (this)


ensureCapacity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
ensureCapacity object_ a1 = jmethod object_ "ensureCapacity" (\() -> (ensureCapacity_impl (javaCast object_ :: StringMaker))) () a1

ensureCapacity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
ensureCapacity_super object_ a1 = (ensureCapacity_impl (javaCast object_ :: StringMaker)) a1

ensureCapacity_impl :: StringMaker -> Int -> IO (())
ensureCapacity_impl this minSize = do
        let oldCapacity = (jlength (jget (this).charArray))
        when (minSize > oldCapacity) $ do
            newCapacity <- newIORef ((oldCapacity * 3))
            when ((jget newCapacity) < minSize) $ do
                jset newCapacity (minSize)
            let copy = (jnewArray ((jget newCapacity)) '\0')
            min <- (StringMaker.min this (jlength (jget (this).charArray)) (jget newCapacity))
            Control.Monad.void (jarraycopy (jget (this).charArray) 0 copy 0 min)
            jset (this).charArray (copy)
        pure ()


min :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
min object_ a1 a2 = jmethod object_ "min" (\() -> (min_impl (javaCast object_ :: StringMaker))) () a1 a2

min_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
min_super object_ a1 a2 = (min_impl (javaCast object_ :: StringMaker)) a1 a2

min_impl :: StringMaker -> Int -> Int -> IO (Int)
min_impl this value value2 = do
        pure ((if ((value <= value2)) then value else value2))


delete :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (StringMaker)
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: StringMaker))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (StringMaker)
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: StringMaker)) a1 a2

delete_impl :: StringMaker -> Int -> Int -> IO (StringMaker)
delete_impl this start end = do
        jset (this).currentLength (((jget (this).currentLength) - ((end - start))))
        pure (this)


length :: (JavaObjectClass this_) => this_ -> IO (Int)
length object_ = jmethod object_ "length" (\() -> (length_impl (javaCast object_ :: StringMaker))) ()

length_super :: (JavaObjectClass this_) => this_ -> IO (Int)
length_super object_ = (length_impl (javaCast object_ :: StringMaker))

length_impl :: StringMaker -> IO (Int)
length_impl this = do
        pure ((jget (this).currentLength))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: StringMaker))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: StringMaker))

toString_impl :: StringMaker -> IO (String)
toString_impl this = do
        (jnewStringRange (jget (this).charArray) 0 (jget (this).currentLength))


