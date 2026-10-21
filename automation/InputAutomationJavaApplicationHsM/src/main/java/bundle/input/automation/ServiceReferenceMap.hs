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
-- package bundle.input.automation
module ServiceReferenceMap where

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
import qualified Collection -- java.util.Collection
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified ServiceReference -- org.osgi.framework.ServiceReference
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

-- implements Map
data ServiceReferenceMap = ServiceReferenceMap
    { header_ :: JavaHeader
    , serviceReference :: IORef (ServiceReference.ServiceReference)
    }

instance JavaNull ServiceReferenceMap where
    javaNull = javaNullRecord "ServiceReferenceMap"

instance JavaEquals ServiceReferenceMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ServiceReferenceMap where
    (==) = jrecordEquals

instance JavaObjectClass ServiceReferenceMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ServiceReferenceMap
newRecord_ = do
    header_ <- newJavaHeader
    serviceReference <- newIORef javaNull
    let this = ServiceReferenceMap header_ serviceReference
    jregisterLevel header_ this
    Map.registerInterface_ header_
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    jregisterMethod header_ "containsKey" (\() -> containsKey_impl this)
    jregisterMethod header_ "containsValue" (\() -> containsValue_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "put" (\() -> put_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "putAll" (\() -> putAll_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "keySet" (\() -> keySet_impl this)
    jregisterMethod header_ "values" (\() -> values_impl this)
    jregisterMethod header_ "entrySet" (\() -> entrySet_impl this)
    pure this

initFields_ :: ServiceReferenceMap -> IO ()
initFields_ this = do
    jset this.serviceReference (javaNull)
    pure ()

new_1 :: ServiceReference.ServiceReference -> IO ServiceReferenceMap
new_1 serviceReference = do
    this <- newRecord_
    init_1 this serviceReference
    pure this

init_1 :: ServiceReferenceMap -> ServiceReference.ServiceReference -> IO ()
init_1 this serviceReference = do
        initFields_ this
        jset (this).serviceReference (serviceReference)
        pure ()


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: ServiceReferenceMap))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: ServiceReferenceMap))

size_impl :: ServiceReferenceMap -> IO (Int)
size_impl this = do
        pure ((Prelude.negate 1))


isEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty object_ = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: ServiceReferenceMap))) ()

isEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty_super object_ = (isEmpty_impl (javaCast object_ :: ServiceReferenceMap))

isEmpty_impl :: ServiceReferenceMap -> IO (Bool)
isEmpty_impl this = do
        pure (False)


containsKey :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsKey object_ a1 = jmethod object_ "containsKey" (\() -> (containsKey_impl (javaCast object_ :: ServiceReferenceMap))) () (jtoObject a1)

containsKey_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsKey_super object_ a1 = (containsKey_impl (javaCast object_ :: ServiceReferenceMap)) (jtoObject a1)

containsKey_impl :: ServiceReferenceMap -> JavaObject -> IO (Bool)
containsKey_impl this keyObject_ = do
        let key = jtoObject keyObject_
        pure (False)


containsValue :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsValue object_ a1 = jmethod object_ "containsValue" (\() -> (containsValue_impl (javaCast object_ :: ServiceReferenceMap))) () (jtoObject a1)

containsValue_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
containsValue_super object_ a1 = (containsValue_impl (javaCast object_ :: ServiceReferenceMap)) (jtoObject a1)

containsValue_impl :: ServiceReferenceMap -> JavaObject -> IO (Bool)
containsValue_impl this valueObject_ = do
        let value = jtoObject valueObject_
        pure (False)


get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ServiceReferenceMap))) () (jtoObject a1)

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
get_super object_ a1 = (get_impl (javaCast object_ :: ServiceReferenceMap)) (jtoObject a1)

get_impl :: ServiceReferenceMap -> JavaObject -> IO (Any.Any)
get_impl this keyObject_ = do
        let key = jtoObject keyObject_
        (fmap jtoObject (ServiceReference.getProperty ((jget (this).serviceReference)) (javaCast key :: String)))


put :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (Any.Any)
put object_ a1 a2 = jmethod object_ "put" (\() -> (put_impl (javaCast object_ :: ServiceReferenceMap))) () (jtoObject a1) (jtoObject a2)

put_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (Any.Any)
put_super object_ a1 a2 = (put_impl (javaCast object_ :: ServiceReferenceMap)) (jtoObject a1) (jtoObject a2)

put_impl :: ServiceReferenceMap -> JavaObject -> JavaObject -> IO (Any.Any)
put_impl this keyObject_ valueObject_ = do
        let key = jtoObject keyObject_
        let value = jtoObject valueObject_
        pure (javaNull)


remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: ServiceReferenceMap))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
remove_super object_ a1 = (remove_impl (javaCast object_ :: ServiceReferenceMap)) (jtoObject a1)

remove_impl :: ServiceReferenceMap -> JavaObject -> IO (Any.Any)
remove_impl this keyObject_ = do
        let key = jtoObject keyObject_
        pure (javaNull)


putAll :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (())
putAll object_ a1 = jmethod object_ "putAll" (\() -> (putAll_impl (javaCast object_ :: ServiceReferenceMap))) () a1

putAll_super :: (JavaObjectClass this_) => this_ -> Map.Map -> IO (())
putAll_super object_ a1 = (putAll_impl (javaCast object_ :: ServiceReferenceMap)) a1

putAll_impl :: ServiceReferenceMap -> Map.Map -> IO (())
putAll_impl this m = do
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: ServiceReferenceMap))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: ServiceReferenceMap))

clear_impl :: ServiceReferenceMap -> IO (())
clear_impl this = do
        pure ()


keySet :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
keySet object_ = jmethod object_ "keySet" (\() -> (keySet_impl (javaCast object_ :: ServiceReferenceMap))) ()

keySet_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
keySet_super object_ = (keySet_impl (javaCast object_ :: ServiceReferenceMap))

keySet_impl :: ServiceReferenceMap -> IO (Set.Set)
keySet_impl this = do
        keyStringArray <- (ServiceReference.getPropertyKeys ((jget (this).serviceReference)))
        pure (javaNull)


values :: (JavaObjectClass this_) => this_ -> IO (Collection.Collection)
values object_ = jmethod object_ "values" (\() -> (values_impl (javaCast object_ :: ServiceReferenceMap))) ()

values_super :: (JavaObjectClass this_) => this_ -> IO (Collection.Collection)
values_super object_ = (values_impl (javaCast object_ :: ServiceReferenceMap))

values_impl :: ServiceReferenceMap -> IO (Collection.Collection)
values_impl this = do
        pure (javaNull)


entrySet :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
entrySet object_ = jmethod object_ "entrySet" (\() -> (entrySet_impl (javaCast object_ :: ServiceReferenceMap))) ()

entrySet_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
entrySet_super object_ = (entrySet_impl (javaCast object_ :: ServiceReferenceMap))

entrySet_impl :: ServiceReferenceMap -> IO (Set.Set)
entrySet_impl this = do
        pure (javaNull)


toString :: Map.Map -> IO (String)
toString map = do
        stringBuffer <- (StringMaker.new_)
        (StringMaker.toString stringBuffer)


