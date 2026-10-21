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
module ABHashMap (module ABHashMap, module HashMap) where

import HashMap hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, size, size_super, size_impl, isEmpty, isEmpty_super, isEmpty_impl, get, get_super, get_impl, containsKey, containsKey_super, containsKey_impl, put, put_super, put_impl, putAll, putAll_super, putAll_impl, remove, remove_super, remove_impl, clear, clear_super, clear_impl, containsValue, containsValue_super, containsValue_impl, keySet, keySet_super, keySet_impl, entrySet, entrySet_super, entrySet_impl, getOrDefault, getOrDefault_super, getOrDefault_impl, putIfAbsent, putIfAbsent_super, putIfAbsent_impl, clone, clone_super, clone_impl)
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
import qualified Entry -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified JsType -- jsinterop.annotations.JsType

data ABHashMap = ABHashMap
    { header_ :: JavaHeader
    , base :: HashMap.HashMap
    }

instance JavaNull ABHashMap where
    javaNull = javaNullRecord "ABHashMap"

instance JavaEquals ABHashMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABHashMap where
    (==) = jrecordEquals

instance JavaObjectClass ABHashMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABHashMap
newRecord_ = do
    base <- HashMap.newRecord_
    header_ <- newJavaHeader
    let this = ABHashMap header_ base
    jregisterLevel header_ this
    jregisterLevel header_ base
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "containsKey" (\() -> containsKey_impl this)
    jregisterMethod header_ "put" (\() -> put_impl this)
    jregisterMethod header_ "putAll" (\() -> putAll_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "containsValue" (\() -> containsValue_impl this)
    jregisterMethod header_ "keySet" (\() -> keySet_impl this)
    jregisterMethod header_ "entrySet" (\() -> entrySet_impl this)
    jregisterMethod header_ "getOrDefault" (\() -> getOrDefault_impl this)
    jregisterMethod header_ "putIfAbsent" (\() -> putIfAbsent_impl this)
    jregisterMethod header_ "clone" (\() -> clone_impl this)
    pure this

initFields_ :: ABHashMap -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABHashMap
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABHashMap -> IO ()
init_ this = do
    HashMap.init_ this.base
    initFields_ this


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: ABHashMap))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: ABHashMap))

size_impl :: ABHashMap -> IO (Int)
size_impl this = do
        (HashMap.size this.base)


isEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty object_ = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: ABHashMap))) ()

isEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty_super object_ = (isEmpty_impl (javaCast object_ :: ABHashMap))

isEmpty_impl :: ABHashMap -> IO (Bool)
isEmpty_impl this = do
        (HashMap.isEmpty this.base)


get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (v)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ABHashMap))) () (jtoObject a1)

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (v)
get_super object_ a1 = (get_impl (javaCast object_ :: ABHashMap)) (jtoObject a1)

get_impl :: ABHashMap -> JavaObject -> IO (v)
get_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (HashMap.get this.base key)


containsKey :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsKey object_ a1 = jmethod object_ "containsKey" (\() -> (containsKey_impl (javaCast object_ :: ABHashMap))) () (jtoObject a1)

containsKey_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsKey_super object_ a1 = (containsKey_impl (javaCast object_ :: ABHashMap)) (jtoObject a1)

containsKey_impl :: ABHashMap -> JavaObject -> IO (Bool)
containsKey_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (HashMap.containsKey this.base key)


put :: (JavaObjectClass this_) => this_ -> k -> v -> IO (v)
put object_ a1 a2 = jmethod object_ "put" (\() -> (put_impl (javaCast object_ :: ABHashMap))) () a1 a2

put_super :: (JavaObjectClass this_) => this_ -> k -> v -> IO (v)
put_super object_ a1 a2 = (put_impl (javaCast object_ :: ABHashMap)) a1 a2

put_impl :: ABHashMap -> k -> v -> IO (v)
put_impl this key value = do
        (HashMap.put this.base key value)


putAll :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (())
putAll object_ a1 = jmethod object_ "putAll" (\() -> (putAll_impl (javaCast object_ :: ABHashMap))) () a1

putAll_super :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (())
putAll_super object_ a1 = (putAll_impl (javaCast object_ :: ABHashMap)) a1

putAll_impl :: ABHashMap -> Map.Map -> IO (())
putAll_impl this map = do
        Control.Monad.void (HashMap.putAll this.base map)
        pure ()


remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (v)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: ABHashMap))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (v)
remove_super object_ a1 = (remove_impl (javaCast object_ :: ABHashMap)) (jtoObject a1)

remove_impl :: ABHashMap -> JavaObject -> IO (v)
remove_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (HashMap.remove this.base key)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: ABHashMap))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: ABHashMap))

clear_impl :: ABHashMap -> IO (())
clear_impl this = do
        Control.Monad.void (HashMap.clear this.base)
        pure ()


containsValue :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsValue object_ a1 = jmethod object_ "containsValue" (\() -> (containsValue_impl (javaCast object_ :: ABHashMap))) () (jtoObject a1)

containsValue_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsValue_super object_ a1 = (containsValue_impl (javaCast object_ :: ABHashMap)) (jtoObject a1)

containsValue_impl :: ABHashMap -> JavaObject -> IO (Bool)
containsValue_impl this valueObject_ = do
        let value = jtoObject valueObject_
        (HashMap.containsValue this.base value)


keySet :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
keySet object_ = jmethod object_ "keySet" (\() -> (keySet_impl (javaCast object_ :: ABHashMap))) ()

keySet_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
keySet_super object_ = (keySet_impl (javaCast object_ :: ABHashMap))

keySet_impl :: ABHashMap -> IO (Set.Set)
keySet_impl this = do
        (HashMap.keySet this.base)


entrySet :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
entrySet object_ = jmethod object_ "entrySet" (\() -> (entrySet_impl (javaCast object_ :: ABHashMap))) ()

entrySet_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
entrySet_super object_ = (entrySet_impl (javaCast object_ :: ABHashMap))

entrySet_impl :: ABHashMap -> IO (Set.Set)
entrySet_impl this = do
        (HashMap.entrySet this.base)


getOrDefault :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> v -> IO (v)
getOrDefault object_ a1 a2 = jmethod object_ "getOrDefault" (\() -> (getOrDefault_impl (javaCast object_ :: ABHashMap))) () (jtoObject a1) a2

getOrDefault_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> v -> IO (v)
getOrDefault_super object_ a1 a2 = (getOrDefault_impl (javaCast object_ :: ABHashMap)) (jtoObject a1) a2

getOrDefault_impl :: ABHashMap -> JavaObject -> v -> IO (v)
getOrDefault_impl this keyObject_ defaultValue = do
        let key = jtoObject keyObject_
        (HashMap.getOrDefault this.base key defaultValue)


putIfAbsent :: (JavaObjectClass this_) => this_ -> k -> v -> IO (v)
putIfAbsent object_ a1 a2 = jmethod object_ "putIfAbsent" (\() -> (putIfAbsent_impl (javaCast object_ :: ABHashMap))) () a1 a2

putIfAbsent_super :: (JavaObjectClass this_) => this_ -> k -> v -> IO (v)
putIfAbsent_super object_ a1 a2 = (putIfAbsent_impl (javaCast object_ :: ABHashMap)) a1 a2

putIfAbsent_impl :: ABHashMap -> k -> v -> IO (v)
putIfAbsent_impl this key value = do
        (HashMap.putIfAbsent this.base key value)


clone :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone object_ = jmethod object_ "clone" (\() -> (clone_impl (javaCast object_ :: ABHashMap))) ()

clone_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
clone_super object_ = (clone_impl (javaCast object_ :: ABHashMap))

clone_impl :: ABHashMap -> IO (Any.Any)
clone_impl this = do
        (fmap jtoObject (HashMap.clone this.base))


