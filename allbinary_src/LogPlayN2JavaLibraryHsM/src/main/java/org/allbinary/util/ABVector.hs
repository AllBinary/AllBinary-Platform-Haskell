{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.util
module ABVector (module ABVector, module Vector) where

import Vector hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, ensureCapacity, ensureCapacity_super, ensureCapacity_impl, capacity, capacity_super, capacity_impl, size, size_super, size_impl, isEmpty, isEmpty_super, isEmpty_impl, contains, contains_super, contains_impl, indexOf, indexOf_super, indexOf_impl, lastIndexOf, lastIndexOf_super, lastIndexOf_impl, elementAt, elementAt_super, elementAt_impl, firstElement, firstElement_super, firstElement_impl, lastElement, lastElement_super, lastElement_impl, setElementAt, setElementAt_super, setElementAt_impl, removeElementAt, removeElementAt_super, removeElementAt_impl, addElement, addElement_super, addElement_impl, insertElementAt, insertElementAt_super, insertElementAt_impl, removeElement, removeElement_super, removeElement_impl, removeAllElements, removeAllElements_super, removeAllElements_impl, clone, clone_super, clone_impl, toArray, toArray_super, toArray_impl, set, set_super, set_impl, add, add_super, add_impl, remove_overload1, remove_overload1_super, remove_overload1_impl, remove, add, add_super, add_impl, remove_overload2, remove_overload2_super, remove_overload2_impl, remove, clear, clear_super, clear_impl, equals, equals_super, equals_impl, hashCode, hashCode_super, hashCode_impl, toString, toString_super, toString_impl, removeRange, removeRange_super, removeRange_impl)
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
import qualified Vector -- java.util.Vector
import qualified JsType -- jsinterop.annotations.JsType

data ABVector = ABVector
    { header_ :: JavaHeader
    , base :: Vector.Vector
    }

instance JavaNull ABVector where
    javaNull = javaNullRecord "ABVector"

instance JavaEquals ABVector where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABVector where
    (==) = jrecordEquals

instance JavaObjectClass ABVector where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABVector
newRecord_ = do
    base <- Vector.newRecord_
    header_ <- newJavaHeader
    let this = ABVector header_ base
    jregisterLevel header_ this
    jregisterLevel header_ base
    jregisterMethod header_ "ensureCapacity" (\() -> ensureCapacity_impl this)
    jregisterMethod header_ "capacity" (\() -> capacity_impl this)
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    jregisterMethod header_ "contains" (\() -> contains_impl this)
    jregisterMethod header_ "indexOf" (\() -> indexOf_impl this)
    jregisterMethod header_ "lastIndexOf" (\() -> lastIndexOf_impl this)
    jregisterMethod header_ "elementAt" (\() -> elementAt_impl this)
    jregisterMethod header_ "firstElement" (\() -> firstElement_impl this)
    jregisterMethod header_ "lastElement" (\() -> lastElement_impl this)
    jregisterMethod header_ "setElementAt" (\() -> setElementAt_impl this)
    jregisterMethod header_ "removeElementAt" (\() -> removeElementAt_impl this)
    jregisterMethod header_ "addElement" (\() -> addElement_impl this)
    jregisterMethod header_ "insertElementAt" (\() -> insertElementAt_impl this)
    jregisterMethod header_ "removeElement" (\() -> removeElement_impl this)
    jregisterMethod header_ "removeAllElements" (\() -> removeAllElements_impl this)
    jregisterMethod header_ "clone" (\() -> clone_impl this)
    jregisterMethod header_ "toArray" (\() -> toArray_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove_overload1" (\() -> remove_overload1_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove_overload2" (\() -> remove_overload2_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "equals" (\() -> equals_impl this)
    jregisterMethod header_ "hashCode" (\() -> hashCode_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "removeRange" (\() -> removeRange_impl this)
    pure this

initFields_ :: ABVector -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABVector
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABVector -> IO ()
init_ this = do
    Vector.init_ this.base
    initFields_ this


ensureCapacity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
ensureCapacity object_ a1 = jmethod object_ "ensureCapacity" (\() -> (ensureCapacity_impl (javaCast object_ :: ABVector))) () a1

ensureCapacity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
ensureCapacity_super object_ a1 = (ensureCapacity_impl (javaCast object_ :: ABVector)) a1

ensureCapacity_impl :: ABVector -> Int -> IO (())
ensureCapacity_impl this minCapacity = do
        Control.Monad.void (Vector.ensureCapacity this.base minCapacity)
        pure ()


capacity :: (JavaObjectClass this_) => this_ -> IO (Int)
capacity object_ = jmethod object_ "capacity" (\() -> (capacity_impl (javaCast object_ :: ABVector))) ()

capacity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
capacity_super object_ = (capacity_impl (javaCast object_ :: ABVector))

capacity_impl :: ABVector -> IO (Int)
capacity_impl this = do
        (Vector.capacity this.base)


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: ABVector))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: ABVector))

size_impl :: ABVector -> IO (Int)
size_impl this = do
        (Vector.size this.base)


isEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty object_ = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: ABVector))) ()

isEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty_super object_ = (isEmpty_impl (javaCast object_ :: ABVector))

isEmpty_impl :: ABVector -> IO (Bool)
isEmpty_impl this = do
        (Vector.isEmpty this.base)


contains :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
contains object_ a1 = jmethod object_ "contains" (\() -> (contains_impl (javaCast object_ :: ABVector))) () (jtoObject a1)

contains_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
contains_super object_ a1 = (contains_impl (javaCast object_ :: ABVector)) (jtoObject a1)

contains_impl :: ABVector -> JavaObject -> IO (Bool)
contains_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Vector.contains this.base obj)


indexOf :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
indexOf object_ a1 = jmethod object_ "indexOf" (\() -> (indexOf_impl (javaCast object_ :: ABVector))) () (jtoObject a1)

indexOf_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
indexOf_super object_ a1 = (indexOf_impl (javaCast object_ :: ABVector)) (jtoObject a1)

indexOf_impl :: ABVector -> JavaObject -> IO (Int)
indexOf_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Vector.indexOf this.base obj)


lastIndexOf :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
lastIndexOf object_ a1 = jmethod object_ "lastIndexOf" (\() -> (lastIndexOf_impl (javaCast object_ :: ABVector))) () (jtoObject a1)

lastIndexOf_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
lastIndexOf_super object_ a1 = (lastIndexOf_impl (javaCast object_ :: ABVector)) (jtoObject a1)

lastIndexOf_impl :: ABVector -> JavaObject -> IO (Int)
lastIndexOf_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Vector.lastIndexOf this.base obj)


elementAt :: (JavaObjectClass this_) => this_ -> Int -> IO (e)
elementAt object_ a1 = jmethod object_ "elementAt" (\() -> (elementAt_impl (javaCast object_ :: ABVector))) () a1

elementAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (e)
elementAt_super object_ a1 = (elementAt_impl (javaCast object_ :: ABVector)) a1

elementAt_impl :: ABVector -> Int -> IO (e)
elementAt_impl this index = do
        (Vector.elementAt this.base index)


firstElement :: (JavaObjectClass this_) => this_ -> IO (e)
firstElement object_ = jmethod object_ "firstElement" (\() -> (firstElement_impl (javaCast object_ :: ABVector))) ()

firstElement_super :: (JavaObjectClass this_) => this_ -> IO (e)
firstElement_super object_ = (firstElement_impl (javaCast object_ :: ABVector))

firstElement_impl :: ABVector -> IO (e)
firstElement_impl this = do
        (Vector.firstElement this.base)


lastElement :: (JavaObjectClass this_) => this_ -> IO (e)
lastElement object_ = jmethod object_ "lastElement" (\() -> (lastElement_impl (javaCast object_ :: ABVector))) ()

lastElement_super :: (JavaObjectClass this_) => this_ -> IO (e)
lastElement_super object_ = (lastElement_impl (javaCast object_ :: ABVector))

lastElement_impl :: ABVector -> IO (e)
lastElement_impl this = do
        (Vector.lastElement this.base)


setElementAt :: (JavaObjectClass this_) => this_ -> e -> Int -> IO (())
setElementAt object_ a1 a2 = jmethod object_ "setElementAt" (\() -> (setElementAt_impl (javaCast object_ :: ABVector))) () a1 a2

setElementAt_super :: (JavaObjectClass this_) => this_ -> e -> Int -> IO (())
setElementAt_super object_ a1 a2 = (setElementAt_impl (javaCast object_ :: ABVector)) a1 a2

setElementAt_impl :: ABVector -> e -> Int -> IO (())
setElementAt_impl this obj index = do
        Control.Monad.void (Vector.setElementAt this.base obj index)
        pure ()


removeElementAt :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removeElementAt object_ a1 = jmethod object_ "removeElementAt" (\() -> (removeElementAt_impl (javaCast object_ :: ABVector))) () a1

removeElementAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removeElementAt_super object_ a1 = (removeElementAt_impl (javaCast object_ :: ABVector)) a1

removeElementAt_impl :: ABVector -> Int -> IO (())
removeElementAt_impl this index = do
        Control.Monad.void (Vector.removeElementAt this.base index)
        pure ()


addElement :: (JavaObjectClass this_) => this_ -> e -> IO (())
addElement object_ a1 = jmethod object_ "addElement" (\() -> (addElement_impl (javaCast object_ :: ABVector))) () a1

addElement_super :: (JavaObjectClass this_) => this_ -> e -> IO (())
addElement_super object_ a1 = (addElement_impl (javaCast object_ :: ABVector)) a1

addElement_impl :: ABVector -> e -> IO (())
addElement_impl this obj = do
        Control.Monad.void (Vector.addElement this.base obj)
        pure ()


insertElementAt :: (JavaObjectClass this_) => this_ -> e -> Int -> IO (())
insertElementAt object_ a1 a2 = jmethod object_ "insertElementAt" (\() -> (insertElementAt_impl (javaCast object_ :: ABVector))) () a1 a2

insertElementAt_super :: (JavaObjectClass this_) => this_ -> e -> Int -> IO (())
insertElementAt_super object_ a1 a2 = (insertElementAt_impl (javaCast object_ :: ABVector)) a1 a2

insertElementAt_impl :: ABVector -> e -> Int -> IO (())
insertElementAt_impl this obj index = do
        Control.Monad.void (Vector.insertElementAt this.base obj index)
        pure ()


removeElement :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
removeElement object_ a1 = jmethod object_ "removeElement" (\() -> (removeElement_impl (javaCast object_ :: ABVector))) () (jtoObject a1)

removeElement_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
removeElement_super object_ a1 = (removeElement_impl (javaCast object_ :: ABVector)) (jtoObject a1)

removeElement_impl :: ABVector -> JavaObject -> IO (Bool)
removeElement_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Vector.removeElement this.base obj)


removeAllElements :: (JavaObjectClass this_) => this_ -> IO (())
removeAllElements object_ = jmethod object_ "removeAllElements" (\() -> (removeAllElements_impl (javaCast object_ :: ABVector))) ()

removeAllElements_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllElements_super object_ = (removeAllElements_impl (javaCast object_ :: ABVector))

removeAllElements_impl :: ABVector -> IO (())
removeAllElements_impl this = do
        Control.Monad.void (Vector.removeAllElements this.base)
        pure ()


clone :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone object_ = jmethod object_ "clone" (\() -> (clone_impl (javaCast object_ :: ABVector))) ()

clone_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone_super object_ = (clone_impl (javaCast object_ :: ABVector))

clone_impl :: ABVector -> IO (Any.Any)
clone_impl this = do
        (fmap jtoObject (Vector.clone this.base))


toArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
toArray object_ = jmethod object_ "toArray" (\() -> (toArray_impl (javaCast object_ :: ABVector))) ()

toArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Any.Any))
toArray_super object_ = (toArray_impl (javaCast object_ :: ABVector))

toArray_impl :: ABVector -> IO (JavaArray (Any.Any))
toArray_impl this = do
        (Vector.toArray this.base)


set :: (JavaObjectClass this_) => this_ -> Int -> e -> IO (e)
set object_ a1 a2 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: ABVector))) () a1 a2

set_super :: (JavaObjectClass this_) => this_ -> Int -> e -> IO (e)
set_super object_ a1 a2 = (set_impl (javaCast object_ :: ABVector)) a1 a2

set_impl :: ABVector -> Int -> e -> IO (e)
set_impl this index element = do
        (Vector.set this.base index element)


add :: (JavaObjectClass this_) => this_ -> e -> IO (Bool)
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ABVector))) () a1

add_super :: (JavaObjectClass this_) => this_ -> e -> IO (Bool)
add_super object_ a1 = (add_impl (javaCast object_ :: ABVector)) a1

add_impl :: ABVector -> e -> IO (Bool)
add_impl this element = do
        (Vector.add this.base element)


-- Java overloads of remove: calls the overload for the types of the arguments
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
remove this a1
    | jisInstanceOf a1 (javaNull :: Int) = remove_overload2 this (javaCast a1 :: Int)
    | otherwise = remove_overload1 this a1

remove_overload1 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
remove_overload1 object_ a1 = jmethod object_ "remove_overload1" (\() -> (remove_overload1_impl (javaCast object_ :: ABVector))) () (jtoObject a1)

remove_overload1_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
remove_overload1_super object_ a1 = (remove_overload1_impl (javaCast object_ :: ABVector)) (jtoObject a1)

remove_overload1_impl :: ABVector -> JavaObject -> IO (Bool)
remove_overload1_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Vector.remove this.base obj)


-- Java overload of add with a different parameter count: give it a different name
add :: (JavaObjectClass this_) => this_ -> Int -> e -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ABVector))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Int -> e -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: ABVector)) a1 a2

add_impl :: ABVector -> Int -> e -> IO (())
add_impl this index element = do
        Control.Monad.void (Vector.add this.base index element)
        pure ()


remove_overload2 :: (JavaObjectClass this_) => this_ -> Int -> IO (e)
remove_overload2 object_ a1 = jmethod object_ "remove_overload2" (\() -> (remove_overload2_impl (javaCast object_ :: ABVector))) () a1

remove_overload2_super :: (JavaObjectClass this_) => this_ -> Int -> IO (e)
remove_overload2_super object_ a1 = (remove_overload2_impl (javaCast object_ :: ABVector)) a1

remove_overload2_impl :: ABVector -> Int -> IO (e)
remove_overload2_impl this index = do
        (Vector.remove this.base index)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: ABVector))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: ABVector))

clear_impl :: ABVector -> IO (())
clear_impl this = do
        Control.Monad.void (Vector.clear this.base)
        pure ()


equals :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
equals object_ a1 = jmethod object_ "equals" (\() -> (equals_impl (javaCast object_ :: ABVector))) () (jtoObject a1)

equals_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
equals_super object_ a1 = (equals_impl (javaCast object_ :: ABVector)) (jtoObject a1)

equals_impl :: ABVector -> JavaObject -> IO (Bool)
equals_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Vector.equals this.base obj)


hashCode :: (JavaObjectClass this_) => this_ -> IO (Int)
hashCode object_ = jmethod object_ "hashCode" (\() -> (hashCode_impl (javaCast object_ :: ABVector))) ()

hashCode_super :: (JavaObjectClass this_) => this_ -> IO (Int)
hashCode_super object_ = (hashCode_impl (javaCast object_ :: ABVector))

hashCode_impl :: ABVector -> IO (Int)
hashCode_impl this = do
        (Vector.hashCode this.base)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ABVector))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ABVector))

toString_impl :: ABVector -> IO (String)
toString_impl this = do
        (Vector.toString this.base)


removeRange :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
removeRange object_ a1 a2 = jmethod object_ "removeRange" (\() -> (removeRange_impl (javaCast object_ :: ABVector))) () a1 a2

removeRange_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
removeRange_super object_ a1 a2 = (removeRange_impl (javaCast object_ :: ABVector)) a1 a2

removeRange_impl :: ABVector -> Int -> Int -> IO (())
removeRange_impl this fromIndex toIndex = do
        Control.Monad.void (Vector.removeRange this.base fromIndex toIndex)
        pure ()


