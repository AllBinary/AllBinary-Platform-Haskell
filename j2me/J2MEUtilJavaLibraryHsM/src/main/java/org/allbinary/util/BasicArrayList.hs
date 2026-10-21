{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.util
module BasicArrayList where

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
import qualified ArrayUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayListS -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data BasicArrayList = BasicArrayList
    { header_ :: JavaHeader
    , arrayUtil :: IORef (ArrayUtil.ArrayUtil)
    , objectArray :: IORef (JavaArray (Any.Any))
    , currentIndex :: IORef (Int)
    }

instance JavaNull BasicArrayList where
    javaNull = javaNullRecord "BasicArrayList"

instance JavaEquals BasicArrayList where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicArrayList where
    (==) = jrecordEquals

instance JavaObjectClass BasicArrayList where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sIZE = ", Size: "

newRecord_ :: IO BasicArrayList
newRecord_ = do
    header_ <- newJavaHeader
    arrayUtil <- newIORef javaNull
    objectArray <- newIORef javaNull
    currentIndex <- newIORef 0
    let this = BasicArrayList header_ arrayUtil objectArray currentIndex
    jregisterLevel header_ this
    jregisterMethod header_ "addAt" (\() -> addAt_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "removeAt" (\() -> removeAt_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "removeAll2" (\() -> removeAll2_impl this)
    jregisterMethod header_ "addAll2" (\() -> addAll2_impl this)
    jregisterMethod header_ "addAllList" (\() -> addAllList_impl this)
    jregisterMethod header_ "addAll" (\() -> addAll_impl this)
    jregisterMethod header_ "ensureCapacity" (\() -> ensureCapacity_impl this)
    jregisterMethod header_ "trimToSize" (\() -> trimToSize_impl this)
    jregisterMethod header_ "indexOf" (\() -> indexOf_impl this)
    jregisterMethod header_ "lastIndexOf" (\() -> lastIndexOf_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    jregisterMethod header_ "contains" (\() -> contains_impl this)
    jregisterMethod header_ "toArray" (\() -> toArray_impl this)
    jregisterMethod header_ "toArrayType" (\() -> toArrayType_impl this)
    jregisterMethod header_ "clone" (\() -> clone_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicArrayList -> IO ()
initFields_ this = do
    jset this.arrayUtil =<< (ArrayUtil.getInstance)
    jset this.objectArray (javaNull)
    jset this.currentIndex (0)
    pure ()

new_1 :: JavaArray (Any.Any) -> IO BasicArrayList
new_1 objectArray = do
    this <- newRecord_
    init_1 this objectArray
    pure this

init_1 :: BasicArrayList -> JavaArray (Any.Any) -> IO ()
init_1 this objectArray = do
        initFields_ this
        jset (this).objectArray (objectArray)
        pure ()


addAt :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> Int -> o2 -> IO (())
addAt object_ a1 a2 = jmethod object_ "addAt" (\() -> (addAt_impl (javaCast object_ :: BasicArrayList))) () a1 (jtoObject a2)

addAt_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> Int -> o2 -> IO (())
addAt_super object_ a1 a2 = (addAt_impl (javaCast object_ :: BasicArrayList)) a1 (jtoObject a2)

addAt_impl :: BasicArrayList -> Int -> JavaObject -> IO (())
addAt_impl this index elementObject_ = do
        let element = jtoObject elementObject_
        when ((index > (jget (this).currentIndex)) || (index < 0)) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).iNDEX_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer (BasicArrayList.sIZE))
            Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).currentIndex))
            javaThrow ((JavaException "IndexOutOfBoundsException" (jio (StringMaker.toString stringBuffer))))
        Control.Monad.void (BasicArrayList.ensureCapacity this ((jget (this).currentIndex) + 1))
        Control.Monad.void (jarraycopy (jget (this).objectArray) index (jget (this).objectArray) (index + 1) ((jget (this).currentIndex) - index))
        jsetIndex ((jget (this).objectArray)) (index) ((jtoObject element))
        jset (this).currentIndex ((jget (this).currentIndex) + 1)
        pure ()


add :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BasicArrayList))) () (jtoObject a1)

add_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
add_super object_ a1 = (add_impl (javaCast object_ :: BasicArrayList)) (jtoObject a1)

add_impl :: BasicArrayList -> JavaObject -> IO (Bool)
add_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (BasicArrayList.ensureCapacity this ((jget (this).currentIndex) + 1))
        jsetIndex ((jget (this).objectArray)) ((jpostIncrement (this).currentIndex (+ 1))) ((jtoObject anyType))
        pure (True)


removeAt :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
removeAt object_ a1 = jmethod object_ "removeAt" (\() -> (removeAt_impl (javaCast object_ :: BasicArrayList))) () a1

removeAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
removeAt_super object_ a1 = (removeAt_impl (javaCast object_ :: BasicArrayList)) a1

removeAt_impl :: BasicArrayList -> Int -> IO (Any.Any)
removeAt_impl this index = do
        when (index >= (jget (this).currentIndex)) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).iNDEX_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer (BasicArrayList.sIZE))
            Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).currentIndex))
            javaThrow ((JavaException "IndexOutOfBoundsException" (jio (StringMaker.toString stringBuffer))))
        let oldValue = (jindex ((jget (this).objectArray)) (index))
        let numMoved = (((jget (this).currentIndex) - index) - 1)
        when (numMoved > 0) $ do
            Control.Monad.void (jarraycopy (jget (this).objectArray) (index + 1) (jget (this).objectArray) index numMoved)
        jsetIndex ((jget (this).objectArray)) ((jpreIncrement (this).currentIndex (Prelude.subtract 1))) (javaNull)
        pure ((jtoObject oldValue))


remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: BasicArrayList))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
remove_super object_ a1 = (remove_impl (javaCast object_ :: BasicArrayList)) (jtoObject a1)

remove_impl :: BasicArrayList -> JavaObject -> IO (Bool)
remove_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if (anyType == javaNull) then do
            forM_ [0 .. (jget (this).currentIndex) - 1] $ \index -> javaIteration (pure ()) $ do
                when ((jindex ((jget (this).objectArray)) (index)) == javaNull) $ do
                    let numMoved = (((jget (this).currentIndex) - index) - 1)
                    when (numMoved > 0) $ do
                        Control.Monad.void (jarraycopy (jget (this).objectArray) (index + 1) (jget (this).objectArray) index numMoved)
                    jsetIndex ((jget (this).objectArray)) ((jpreIncrement (this).currentIndex (Prelude.subtract 1))) (javaNull)
                    javaReturn (True)
        else do
            forM_ [0 .. (jget (this).currentIndex) - 1] $ \index -> javaIteration (pure ()) $ do
                when ((anyType == (jindex ((jget (this).objectArray)) (index))) || (jio (Any.equals anyType (jindex ((jget (this).objectArray)) (index))))) $ do
                    let numMoved = (((jget (this).currentIndex) - index) - 1)
                    when (numMoved > 0) $ do
                        Control.Monad.void (jarraycopy (jget (this).objectArray) (index + 1) (jget (this).objectArray) index numMoved)
                    jsetIndex ((jget (this).objectArray)) ((jpreIncrement (this).currentIndex (Prelude.subtract 1))) (javaNull)
                    javaReturn (True)
        pure (False)


removeAll2 :: (JavaObjectClass this_) => this_ -> BasicArrayList -> IO (Bool)
removeAll2 object_ a1 = jmethod object_ "removeAll2" (\() -> (removeAll2_impl (javaCast object_ :: BasicArrayList))) () a1

removeAll2_super :: (JavaObjectClass this_) => this_ -> BasicArrayList -> IO (Bool)
removeAll2_super object_ a1 = (removeAll2_impl (javaCast object_ :: BasicArrayList)) a1

removeAll2_impl :: BasicArrayList -> BasicArrayList -> IO (Bool)
removeAll2_impl this list = do
        result <- newIORef (True)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            if (jio (BasicArrayList.remove this (jio (BasicArrayList.get list index)))) then do
                pure ()
            else do
                jset result (False)
        pure ((jget result))


addAll2 :: (JavaObjectClass this_) => this_ -> BasicArrayList -> IO (Bool)
addAll2 object_ a1 = jmethod object_ "addAll2" (\() -> (addAll2_impl (javaCast object_ :: BasicArrayList))) () a1

addAll2_super :: (JavaObjectClass this_) => this_ -> BasicArrayList -> IO (Bool)
addAll2_super object_ a1 = (addAll2_impl (javaCast object_ :: BasicArrayList)) a1

addAll2_impl :: BasicArrayList -> BasicArrayList -> IO (Bool)
addAll2_impl this list = do
        Control.Monad.void (BasicArrayList.ensureCapacity this ((jget (this).currentIndex) + (jget (list).currentIndex)))
        let listSize = (jget (list).currentIndex)
        forM_ [0 .. listSize - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).objectArray)) ((jpostIncrement (this).currentIndex (+ 1))) ((jtoObject (jindex ((jget (list).objectArray)) (index))))
        pure (True)


addAllList :: (JavaObjectClass this_) => this_ -> BasicArrayList -> IO (Bool)
addAllList object_ a1 = jmethod object_ "addAllList" (\() -> (addAllList_impl (javaCast object_ :: BasicArrayList))) () a1

addAllList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList -> IO (Bool)
addAllList_super object_ a1 = (addAllList_impl (javaCast object_ :: BasicArrayList)) a1

addAllList_impl :: BasicArrayList -> BasicArrayList -> IO (Bool)
addAllList_impl this list = do
        newObjectArray <- (BasicArrayList.toArray list)
        (BasicArrayList.addAll this newObjectArray)


addAll :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (Bool)
addAll object_ a1 = jmethod object_ "addAll" (\() -> (addAll_impl (javaCast object_ :: BasicArrayList))) () a1

addAll_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (Bool)
addAll_super object_ a1 = (addAll_impl (javaCast object_ :: BasicArrayList)) a1

addAll_impl :: BasicArrayList -> JavaArray (Any.Any) -> IO (Bool)
addAll_impl this newObjectArray = do
        let numSize = (jlength newObjectArray)
        Control.Monad.void (BasicArrayList.ensureCapacity this ((jget (this).currentIndex) + numSize))
        Control.Monad.void (jarraycopy newObjectArray 0 (jget (this).objectArray) (jget (this).currentIndex) numSize)
        jset (this).currentIndex (((jget (this).currentIndex) + numSize))
        pure ((numSize /= 0))


ensureCapacity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
ensureCapacity object_ a1 = jmethod object_ "ensureCapacity" (\() -> (ensureCapacity_impl (javaCast object_ :: BasicArrayList))) () a1

ensureCapacity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
ensureCapacity_super object_ a1 = (ensureCapacity_impl (javaCast object_ :: BasicArrayList)) a1

ensureCapacity_impl :: BasicArrayList -> Int -> IO (())
ensureCapacity_impl this minSize = do
        let oldCapacity = (jlength (jget (this).objectArray))
        when (minSize > oldCapacity) $ do
            newCapacity <- newIORef ((((((oldCapacity * 3)) `Data.Bits.shiftR` 1)) + 1))
            when ((jget newCapacity) < minSize) $ do
                jset newCapacity (minSize)
            assignedValue <- (ArrayUtil.copyOf ((jget (this).arrayUtil)) (jget (this).objectArray) (jget newCapacity))
            jset (this).objectArray (assignedValue)
        pure ()


trimToSize :: (JavaObjectClass this_) => this_ -> IO (())
trimToSize object_ = jmethod object_ "trimToSize" (\() -> (trimToSize_impl (javaCast object_ :: BasicArrayList))) ()

trimToSize_super :: (JavaObjectClass this_) => this_ -> IO (())
trimToSize_super object_ = (trimToSize_impl (javaCast object_ :: BasicArrayList))

trimToSize_impl :: BasicArrayList -> IO (())
trimToSize_impl this = do
        let oldCapacity = (jlength (jget (this).objectArray))
        when ((jget (this).currentIndex) < oldCapacity) $ do
            assignedValue <- (ArrayUtil.copyOf ((jget (this).arrayUtil)) (jget (this).objectArray) (jget (this).currentIndex))
            jset (this).objectArray (assignedValue)
        pure ()


indexOf :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
indexOf object_ a1 = jmethod object_ "indexOf" (\() -> (indexOf_impl (javaCast object_ :: BasicArrayList))) () (jtoObject a1)

indexOf_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
indexOf_super object_ a1 = (indexOf_impl (javaCast object_ :: BasicArrayList)) (jtoObject a1)

indexOf_impl :: BasicArrayList -> JavaObject -> IO (Int)
indexOf_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if (anyType == javaNull) then do
            forM_ [0 .. (jget (this).currentIndex) - 1] $ \i -> javaIteration (pure ()) $ do
                when ((jindex ((jget (this).objectArray)) (i)) == javaNull) $ do
                    javaReturn (i)
        else do
            forM_ [0 .. (jget (this).currentIndex) - 1] $ \i -> javaIteration (pure ()) $ do
                when (jio (Any.equals anyType (jindex ((jget (this).objectArray)) (i)))) $ do
                    javaReturn (i)
        pure ((Prelude.negate 1))


lastIndexOf :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
lastIndexOf object_ a1 = jmethod object_ "lastIndexOf" (\() -> (lastIndexOf_impl (javaCast object_ :: BasicArrayList))) () (jtoObject a1)

lastIndexOf_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
lastIndexOf_super object_ a1 = (lastIndexOf_impl (javaCast object_ :: BasicArrayList)) (jtoObject a1)

lastIndexOf_impl :: BasicArrayList -> JavaObject -> IO (Int)
lastIndexOf_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if (anyType == javaNull) then do
            forM_ [((jget (this).currentIndex) - 1), ((jget (this).currentIndex) - 1) + (-1) .. 0] $ \i -> javaIteration (pure ()) $ do
                when ((jindex ((jget (this).objectArray)) (i)) == javaNull) $ do
                    javaReturn (i)
        else do
            forM_ [((jget (this).currentIndex) - 1), ((jget (this).currentIndex) - 1) + (-1) .. 0] $ \i -> javaIteration (pure ()) $ do
                when (jio (Any.equals anyType (jindex ((jget (this).objectArray)) (i)))) $ do
                    javaReturn (i)
        pure ((Prelude.negate 1))


get :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: BasicArrayList))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Any.Any)
get_super object_ a1 = (get_impl (javaCast object_ :: BasicArrayList)) a1

get_impl :: BasicArrayList -> Int -> IO (Any.Any)
get_impl this index = do
        when (index >= (jget (this).currentIndex)) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).iNDEX_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer (BasicArrayList.sIZE))
            Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).currentIndex))
            javaThrow ((JavaException "IndexOutOfBoundsException" (jio (StringMaker.toString stringBuffer))))
        pure ((jtoObject (jindex ((jget (this).objectArray)) (index))))


set :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> Int -> o2 -> IO (Any.Any)
set object_ a1 a2 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: BasicArrayList))) () a1 (jtoObject a2)

set_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> Int -> o2 -> IO (Any.Any)
set_super object_ a1 a2 = (set_impl (javaCast object_ :: BasicArrayList)) a1 (jtoObject a2)

set_impl :: BasicArrayList -> Int -> JavaObject -> IO (Any.Any)
set_impl this index elementObject_ = do
        let element = jtoObject elementObject_
        when (index >= (jget (this).currentIndex)) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).iNDEX_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer (BasicArrayList.sIZE))
            Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).currentIndex))
            javaThrow ((JavaException "IndexOutOfBoundsException" (jio (StringMaker.toString stringBuffer))))
        let oldValue = (jindex ((jget (this).objectArray)) (index))
        jsetIndex ((jget (this).objectArray)) (index) ((jtoObject element))
        pure ((jtoObject oldValue))


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: BasicArrayList))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: BasicArrayList))

clear_impl :: BasicArrayList -> IO (())
clear_impl this = do
        forM_ [0 .. (jget (this).currentIndex) - 1] $ \i -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).objectArray)) (i) (javaNull)
        jset (this).currentIndex (0)
        pure ()


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: BasicArrayList))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: BasicArrayList))

size_impl :: BasicArrayList -> IO (Int)
size_impl this = do
        pure ((jget (this).currentIndex))


isEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty object_ = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: BasicArrayList))) ()

isEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty_super object_ = (isEmpty_impl (javaCast object_ :: BasicArrayList))

isEmpty_impl :: BasicArrayList -> IO (Bool)
isEmpty_impl this = do
        pure (((jget (this).currentIndex) == 0))


contains :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
contains object_ a1 = jmethod object_ "contains" (\() -> (contains_impl (javaCast object_ :: BasicArrayList))) () (jtoObject a1)

contains_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
contains_super object_ a1 = (contains_impl (javaCast object_ :: BasicArrayList)) (jtoObject a1)

contains_impl :: BasicArrayList -> JavaObject -> IO (Bool)
contains_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure (((jio (BasicArrayList.indexOf this anyType)) >= 0))


toArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
toArray object_ = jmethod object_ "toArray" (\() -> (toArray_impl (javaCast object_ :: BasicArrayList))) ()

toArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
toArray_super object_ = (toArray_impl (javaCast object_ :: BasicArrayList))

toArray_impl :: BasicArrayList -> IO (JavaArray (Any.Any))
toArray_impl this = do
        (ArrayUtil.copyOf ((jget (this).arrayUtil)) (jget (this).objectArray) (jget (this).currentIndex))


toArrayType :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (JavaArray (Any.Any))
toArrayType object_ a1 = jmethod object_ "toArrayType" (\() -> (toArrayType_impl (javaCast object_ :: BasicArrayList))) () a1

toArrayType_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (JavaArray (Any.Any))
toArrayType_super object_ a1 = (toArrayType_impl (javaCast object_ :: BasicArrayList)) a1

toArrayType_impl :: BasicArrayList -> JavaArray (Any.Any) -> IO (JavaArray (Any.Any))
toArrayType_impl this objectArray = do
    javaCatchReturn $ do
        when ((jlength objectArray) < (jget (this).currentIndex)) $ do
            javaReturn =<< (ArrayUtil.copyOfType ((jget (this).arrayUtil)) (jget (this).objectArray) (jget (this).currentIndex) (jio (jobjectGetClass objectArray)))
        Control.Monad.void (jarraycopy (jget (this).objectArray) 0 objectArray 0 (jget (this).currentIndex))
        when ((jlength objectArray) > (jget (this).currentIndex)) $ do
            jsetIndex objectArray ((jget (this).currentIndex)) (javaNull)
        pure (objectArray)


clone :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone object_ = jmethod object_ "clone" (\() -> (clone_impl (javaCast object_ :: BasicArrayList))) ()

clone_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone_super object_ = (clone_impl (javaCast object_ :: BasicArrayList))

clone_impl :: BasicArrayList -> IO (Any.Any)
clone_impl this = do
        size <- (BasicArrayList.size this)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList) (BasicArrayListS.new_1 size))
        anyType <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset anyType ((jindex ((jget (this).objectArray)) (index)))
            Control.Monad.void (BasicArrayList.add list (jget anyType))
        pure ((jtoObject list))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicArrayList))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicArrayList))

toString_impl :: BasicArrayList -> IO (String)
toString_impl this = do
        let cOMMA_SEP = (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. (jget (this).currentIndex) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (toString ((jindex ((jget (this).objectArray)) (index))))))
            Control.Monad.void (StringMaker.append stringBuffer cOMMA_SEP)
        (StringMaker.toString stringBuffer)


