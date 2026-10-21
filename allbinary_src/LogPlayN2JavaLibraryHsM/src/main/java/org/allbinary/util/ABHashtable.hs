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
module ABHashtable (module ABHashtable, module Hashtable) where

import Hashtable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, size, size_super, size_impl, isEmpty, isEmpty_super, isEmpty_impl, elements, elements_super, elements_impl, contains, contains_super, contains_impl, containsValue, containsValue_super, containsValue_impl, containsKey, containsKey_super, containsKey_impl, get, get_super, get_impl, clear, clear_super, clear_impl, clone, clone_super, clone_impl, toString, toString_super, toString_impl, equals, equals_super, equals_impl, hashCode, hashCode_super, hashCode_impl)
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
import qualified Enumeration -- java.util.Enumeration
import qualified Hashtable -- java.util.Hashtable
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified JsType -- jsinterop.annotations.JsType

data ABHashtable = ABHashtable
    { header_ :: JavaHeader
    , base :: Hashtable.Hashtable
    }

instance JavaNull ABHashtable where
    javaNull = javaNullRecord "ABHashtable"

instance JavaEquals ABHashtable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABHashtable where
    (==) = jrecordEquals

instance JavaObjectClass ABHashtable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABHashtable
newRecord_ = do
    base <- Hashtable.newRecord_
    header_ <- newJavaHeader
    let this = ABHashtable header_ base
    jregisterLevel header_ this
    jregisterLevel header_ base
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    jregisterMethod header_ "elements" (\() -> elements_impl this)
    jregisterMethod header_ "contains" (\() -> contains_impl this)
    jregisterMethod header_ "containsValue" (\() -> containsValue_impl this)
    jregisterMethod header_ "containsKey" (\() -> containsKey_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "clone" (\() -> clone_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "equals" (\() -> equals_impl this)
    jregisterMethod header_ "hashCode" (\() -> hashCode_impl this)
    pure this

initFields_ :: ABHashtable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABHashtable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABHashtable -> IO ()
init_ this = do
        Hashtable.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: ABHashtable))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: ABHashtable))

size_impl :: ABHashtable -> IO (Int)
size_impl this = do
        (Hashtable.size this.base)


isEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty object_ = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: ABHashtable))) ()

isEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty_super object_ = (isEmpty_impl (javaCast object_ :: ABHashtable))

isEmpty_impl :: ABHashtable -> IO (Bool)
isEmpty_impl this = do
        (Hashtable.isEmpty this.base)


elements :: (JavaObjectClass this_) => this_ -> IO (Enumeration.Enumeration)
elements object_ = jmethod object_ "elements" (\() -> (elements_impl (javaCast object_ :: ABHashtable))) ()

elements_super :: (JavaObjectClass this_) => this_ -> IO (Enumeration.Enumeration)
elements_super object_ = (elements_impl (javaCast object_ :: ABHashtable))

elements_impl :: ABHashtable -> IO (Enumeration.Enumeration)
elements_impl this = do
        (Hashtable.elements this.base)


contains :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
contains object_ a1 = jmethod object_ "contains" (\() -> (contains_impl (javaCast object_ :: ABHashtable))) () (jtoObject a1)

contains_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
contains_super object_ a1 = (contains_impl (javaCast object_ :: ABHashtable)) (jtoObject a1)

contains_impl :: ABHashtable -> JavaObject -> IO (Bool)
contains_impl this valueObject_ = do
        let value = jtoObject valueObject_
        (Hashtable.contains this.base value)


containsValue :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsValue object_ a1 = jmethod object_ "containsValue" (\() -> (containsValue_impl (javaCast object_ :: ABHashtable))) () (jtoObject a1)

containsValue_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsValue_super object_ a1 = (containsValue_impl (javaCast object_ :: ABHashtable)) (jtoObject a1)

containsValue_impl :: ABHashtable -> JavaObject -> IO (Bool)
containsValue_impl this valueObject_ = do
        let value = jtoObject valueObject_
        (Hashtable.containsValue this.base value)


containsKey :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsKey object_ a1 = jmethod object_ "containsKey" (\() -> (containsKey_impl (javaCast object_ :: ABHashtable))) () (jtoObject a1)

containsKey_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsKey_super object_ a1 = (containsKey_impl (javaCast object_ :: ABHashtable)) (jtoObject a1)

containsKey_impl :: ABHashtable -> JavaObject -> IO (Bool)
containsKey_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (Hashtable.containsKey this.base key)


get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (v)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ABHashtable))) () (jtoObject a1)

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (v)
get_super object_ a1 = (get_impl (javaCast object_ :: ABHashtable)) (jtoObject a1)

get_impl :: ABHashtable -> JavaObject -> IO (v)
get_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (Hashtable.get this.base key)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: ABHashtable))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: ABHashtable))

clear_impl :: ABHashtable -> IO (())
clear_impl this = do
        Control.Monad.void (Hashtable.clear this.base)
        pure ()


clone :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone object_ = jmethod object_ "clone" (\() -> (clone_impl (javaCast object_ :: ABHashtable))) ()

clone_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone_super object_ = (clone_impl (javaCast object_ :: ABHashtable))

clone_impl :: ABHashtable -> IO (Any.Any)
clone_impl this = do
        (fmap jtoObject (Hashtable.clone this.base))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ABHashtable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ABHashtable))

toString_impl :: ABHashtable -> IO (String)
toString_impl this = do
        (Hashtable.toString this.base)


equals :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
equals object_ a1 = jmethod object_ "equals" (\() -> (equals_impl (javaCast object_ :: ABHashtable))) () (jtoObject a1)

equals_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
equals_super object_ a1 = (equals_impl (javaCast object_ :: ABHashtable)) (jtoObject a1)

equals_impl :: ABHashtable -> JavaObject -> IO (Bool)
equals_impl this objObject_ = do
        let obj = jtoObject objObject_
        (Hashtable.equals this.base obj)


hashCode :: (JavaObjectClass this_) => this_ -> IO (Int)
hashCode object_ = jmethod object_ "hashCode" (\() -> (hashCode_impl (javaCast object_ :: ABHashtable))) ()

hashCode_super :: (JavaObjectClass this_) => this_ -> IO (Int)
hashCode_super object_ = (hashCode_impl (javaCast object_ :: ABHashtable))

hashCode_impl :: ABHashtable -> IO (Int)
hashCode_impl this = do
        (Hashtable.hashCode this.base)


