{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.util
module ArrayUtil where

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
import qualified Class -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified JsMethod -- jsinterop.annotations.JsMethod

data ArrayUtil = ArrayUtil
    { header_ :: JavaHeader
    , mathUtil :: IORef (MathUtil.MathUtil)
    }

instance JavaNull ArrayUtil where
    javaNull = javaNullRecord "ArrayUtil"

instance JavaEquals ArrayUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ArrayUtil where
    (==) = jrecordEquals

instance JavaObjectClass ArrayUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ArrayUtil
newRecord_ = do
    header_ <- newJavaHeader
    mathUtil <- newIORef javaNull
    let this = ArrayUtil header_ mathUtil
    jregisterLevel header_ this
    jregisterMethod header_ "copyOf" (\() -> copyOf_impl this)
    jregisterMethod header_ "copyOfType" (\() -> copyOfType_impl this)
    jregisterMethod header_ "copyOfbyte" (\() -> copyOfbyte_impl this)
    jregisterMethod header_ "copyOfshort" (\() -> copyOfshort_impl this)
    jregisterMethod header_ "copyOfint" (\() -> copyOfint_impl this)
    jregisterMethod header_ "copyOflong" (\() -> copyOflong_impl this)
    jregisterMethod header_ "copyOfchar" (\() -> copyOfchar_impl this)
    jregisterMethod header_ "copyOffloat" (\() -> copyOffloat_impl this)
    jregisterMethod header_ "copyOfdouble" (\() -> copyOfdouble_impl this)
    jregisterMethod header_ "copyOfboolean" (\() -> copyOfboolean_impl this)
    jregisterMethod header_ "reverse" (\() -> reverse_impl this)
    jregisterMethod header_ "flip" (\() -> flip_impl this)
    jregisterMethod header_ "toStringFromTwoDimensionaArray" (\() -> toStringFromTwoDimensionaArray_impl this)
    jregisterMethod header_ "toStringFromObjectArray" (\() -> toStringFromObjectArray_impl this)
    jregisterMethod header_ "toStringFromByteArray" (\() -> toStringFromByteArray_impl this)
    pure this

initFields_ :: ArrayUtil -> IO ()
initFields_ this = do
    jset this.mathUtil =<< (MathUtil.getInstance)
    pure ()

new_ :: IO ArrayUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ArrayUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ArrayUtil)
getInstance = do
        pure (ArrayUtil.instance_)


copyOf :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Int -> IO (JavaArray (Any.Any))
copyOf object_ a1 a2 = jmethod object_ "copyOf" (\() -> (copyOf_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOf_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Int -> IO (JavaArray (Any.Any))
copyOf_super object_ a1 a2 = (copyOf_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOf_impl :: ArrayUtil -> JavaArray (Any.Any) -> Int -> IO (JavaArray (Any.Any))
copyOf_impl this original newLength = do
        (ArrayUtil.copyOfType this original newLength (jio (jobjectGetClass original)))


copyOfType :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Int -> Class.Class -> IO (JavaArray (Any.Any))
copyOfType object_ a1 a2 a3 = jmethod object_ "copyOfType" (\() -> (copyOfType_impl (javaCast object_ :: ArrayUtil))) () a1 a2 a3

copyOfType_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> Int -> Class.Class -> IO (JavaArray (Any.Any))
copyOfType_super object_ a1 a2 a3 = (copyOfType_impl (javaCast object_ :: ArrayUtil)) a1 a2 a3

copyOfType_impl :: ArrayUtil -> JavaArray (Any.Any) -> Int -> Class.Class -> IO (JavaArray (Any.Any))
copyOfType_impl this original newLength newType = do
        let copy = (jnewArray (newLength) javaNull)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOfbyte :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> IO (JavaArray (Int8))
copyOfbyte object_ a1 a2 = jmethod object_ "copyOfbyte" (\() -> (copyOfbyte_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOfbyte_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> IO (JavaArray (Int8))
copyOfbyte_super object_ a1 a2 = (copyOfbyte_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOfbyte_impl :: ArrayUtil -> JavaArray (Int8) -> Int -> IO (JavaArray (Int8))
copyOfbyte_impl this original newLength = do
        let copy = (jnewArray (newLength) 0)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOfshort :: (JavaObjectClass this_) => this_ -> JavaArray (Int16) -> Int -> IO (JavaArray (Int16))
copyOfshort object_ a1 a2 = jmethod object_ "copyOfshort" (\() -> (copyOfshort_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOfshort_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int16) -> Int -> IO (JavaArray (Int16))
copyOfshort_super object_ a1 a2 = (copyOfshort_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOfshort_impl :: ArrayUtil -> JavaArray (Int16) -> Int -> IO (JavaArray (Int16))
copyOfshort_impl this original newLength = do
        let copy = (jnewArray (newLength) 0)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOfint :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (JavaArray (Int))
copyOfint object_ a1 a2 = jmethod object_ "copyOfint" (\() -> (copyOfint_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOfint_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> IO (JavaArray (Int))
copyOfint_super object_ a1 a2 = (copyOfint_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOfint_impl :: ArrayUtil -> JavaArray (Int) -> Int -> IO (JavaArray (Int))
copyOfint_impl this original newLength = do
        let copy = (jnewArray (newLength) 0)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOflong :: (JavaObjectClass this_) => this_ -> JavaArray (Int64) -> Int -> IO (JavaArray (Int64))
copyOflong object_ a1 a2 = jmethod object_ "copyOflong" (\() -> (copyOflong_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOflong_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int64) -> Int -> IO (JavaArray (Int64))
copyOflong_super object_ a1 a2 = (copyOflong_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOflong_impl :: ArrayUtil -> JavaArray (Int64) -> Int -> IO (JavaArray (Int64))
copyOflong_impl this original newLength = do
        let copy = (jnewArray (newLength) 0)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOfchar :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> IO (JavaArray (Char))
copyOfchar object_ a1 a2 = jmethod object_ "copyOfchar" (\() -> (copyOfchar_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOfchar_super :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> IO (JavaArray (Char))
copyOfchar_super object_ a1 a2 = (copyOfchar_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOfchar_impl :: ArrayUtil -> JavaArray (Char) -> Int -> IO (JavaArray (Char))
copyOfchar_impl this original newLength = do
        let copy = (jnewArray (newLength) '\0')
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOffloat :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (JavaArray (Float))
copyOffloat object_ a1 a2 = jmethod object_ "copyOffloat" (\() -> (copyOffloat_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOffloat_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Int -> IO (JavaArray (Float))
copyOffloat_super object_ a1 a2 = (copyOffloat_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOffloat_impl :: ArrayUtil -> JavaArray (Float) -> Int -> IO (JavaArray (Float))
copyOffloat_impl this original newLength = do
        let copy = (jnewArray (newLength) 0.0)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOfdouble :: (JavaObjectClass this_) => this_ -> JavaArray (Double) -> Int -> IO (JavaArray (Double))
copyOfdouble object_ a1 a2 = jmethod object_ "copyOfdouble" (\() -> (copyOfdouble_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOfdouble_super :: (JavaObjectClass this_) => this_ -> JavaArray (Double) -> Int -> IO (JavaArray (Double))
copyOfdouble_super object_ a1 a2 = (copyOfdouble_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOfdouble_impl :: ArrayUtil -> JavaArray (Double) -> Int -> IO (JavaArray (Double))
copyOfdouble_impl this original newLength = do
        let copy = (jnewArray (newLength) 0.0)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


copyOfboolean :: (JavaObjectClass this_) => this_ -> JavaArray (Bool) -> Int -> IO (JavaArray (Bool))
copyOfboolean object_ a1 a2 = jmethod object_ "copyOfboolean" (\() -> (copyOfboolean_impl (javaCast object_ :: ArrayUtil))) () a1 a2

copyOfboolean_super :: (JavaObjectClass this_) => this_ -> JavaArray (Bool) -> Int -> IO (JavaArray (Bool))
copyOfboolean_super object_ a1 a2 = (copyOfboolean_impl (javaCast object_ :: ArrayUtil)) a1 a2

copyOfboolean_impl :: ArrayUtil -> JavaArray (Bool) -> Int -> IO (JavaArray (Bool))
copyOfboolean_impl this original newLength = do
        let copy = (jnewArray (newLength) False)
        Control.Monad.void (jarraycopy original 0 copy 0 (jio (MathUtil.min ((jget (this).mathUtil)) (jlength original) newLength)))
        pure (copy)


reverse :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
reverse object_ a1 = jmethod object_ "reverse" (\() -> (reverse_impl (javaCast object_ :: ArrayUtil))) () a1

reverse_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
reverse_super object_ a1 = (reverse_impl (javaCast object_ :: ArrayUtil)) a1

reverse_impl :: ArrayUtil -> JavaArray (Int) -> IO (())
reverse_impl this intArray = do
        let length = ((jlength intArray) - 1)
        temp <- newIORef (0)
        let size = (length `quot` 2)
        forM_ [0 .. size] $ \index -> javaIteration (pure ()) $ do
            jset temp ((jindex intArray (index)))
            jsetIndex intArray (index) ((jindex intArray ((length - index))))
            jsetIndex intArray ((length - index)) ((jget temp))
        pure ()


flip :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> IO (())
flip object_ a1 a2 a3 = jmethod object_ "flip" (\() -> (flip_impl (javaCast object_ :: ArrayUtil))) () a1 a2 a3

flip_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> IO (())
flip_super object_ a1 a2 a3 = (flip_impl (javaCast object_ :: ArrayUtil)) a1 a2 a3

flip_impl :: ArrayUtil -> JavaArray (Int) -> Int -> Int -> IO (())
flip_impl this intArray width height = do
        let length = (height - 1)
        temp <- newIORef (0)
        index <- newIORef (0)
        rowIndex <- newIORef (0)
        forM_ [0 .. (length `quot` 2)] $ \y -> javaIteration (pure ()) $ do
            forM_ [0 .. width - 1] $ \x -> javaIteration (pure ()) $ do
                jset rowIndex (((((length - y)) * width)))
                jset index ((x + ((y * width))))
                jset temp ((jindex intArray ((jget index))))
                jsetIndex intArray ((jget index)) ((jindex intArray (((jget rowIndex) + x))))
                jsetIndex intArray (((jget rowIndex) + x)) ((jget temp))
        pure ()


toStringFromTwoDimensionaArray :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (String)
toStringFromTwoDimensionaArray object_ a1 = jmethod object_ "toStringFromTwoDimensionaArray" (\() -> (toStringFromTwoDimensionaArray_impl (javaCast object_ :: ArrayUtil))) () a1

toStringFromTwoDimensionaArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (String)
toStringFromTwoDimensionaArray_super object_ a1 = (toStringFromTwoDimensionaArray_impl (javaCast object_ :: ArrayUtil)) a1

toStringFromTwoDimensionaArray_impl :: ArrayUtil -> JavaArray (JavaArray (Int)) -> IO (String)
toStringFromTwoDimensionaArray_impl this twoDimensionalIntArray = do
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        let endIndex = (jlength twoDimensionalIntArray)
        let endIndex2 = (jlength (jindex twoDimensionalIntArray (0)))
        forM_ [0 .. endIndex - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).bRACE_OPEN))
            forM_ [0 .. endIndex2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jindex ((jindex twoDimensionalIntArray (index))) (index2)))))
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).bRACE_CLOSE))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        (StringMaker.toString stringBuffer)


toStringFromObjectArray :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (String)
toStringFromObjectArray object_ a1 = jmethod object_ "toStringFromObjectArray" (\() -> (toStringFromObjectArray_impl (javaCast object_ :: ArrayUtil))) () a1

toStringFromObjectArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (String)
toStringFromObjectArray_super object_ a1 = (toStringFromObjectArray_impl (javaCast object_ :: ArrayUtil)) a1

toStringFromObjectArray_impl :: ArrayUtil -> JavaArray (Any.Any) -> IO (String)
toStringFromObjectArray_impl this objectArray = do
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        forM_ [0 .. (jlength objectArray) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jindex objectArray (index)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        (StringMaker.toString stringBuffer)


toStringFromByteArray :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (String)
toStringFromByteArray object_ a1 = jmethod object_ "toStringFromByteArray" (\() -> (toStringFromByteArray_impl (javaCast object_ :: ArrayUtil))) () a1

toStringFromByteArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (String)
toStringFromByteArray_super object_ a1 = (toStringFromByteArray_impl (javaCast object_ :: ArrayUtil)) a1

toStringFromByteArray_impl :: ArrayUtil -> JavaArray (Int8) -> IO (String)
toStringFromByteArray_impl this byteArray = do
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        forM_ [0 .. (jlength byteArray) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.appendbyte stringBuffer (jindex byteArray (index)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        (StringMaker.toString stringBuffer)


