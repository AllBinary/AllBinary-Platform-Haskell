{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary
module TsUtil where

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
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified Form -- javax.microedition.lcdui.Form
import qualified InvalidRecordIDException -- javax.microedition.rms.InvalidRecordIDException
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified RecordStoreException -- javax.microedition.rms.RecordStoreException
import qualified RecordStoreNotOpenException -- javax.microedition.rms.RecordStoreNotOpenException
import qualified NullUtil -- org.allbinary.logic.NullUtil

data TsUtil = TsUtil
    { header_ :: JavaHeader
    }

instance JavaNull TsUtil where
    javaNull = javaNullRecord "TsUtil"

instance JavaEquals TsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TsUtil where
    (==) = jrecordEquals

instance JavaObjectClass TsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = TsUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "longBitsToDouble" (\() -> longBitsToDouble_impl this)
    jregisterMethod header_ "intBitsToFloat" (\() -> intBitsToFloat_impl this)
    jregisterMethod header_ "hashCode" (\() -> hashCode_impl this)
    jregisterMethod header_ "waitFor" (\() -> waitFor_impl this)
    jregisterMethod header_ "getRecord" (\() -> getRecord_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "equalIgnoreCase" (\() -> equalIgnoreCase_impl this)
    jregisterMethod header_ "equalsNotstring" (\() -> equalsNotstring_impl this)
    jregisterMethod header_ "toNumberFromChar" (\() -> toNumberFromChar_impl this)
    jregisterMethod header_ "toNumber" (\() -> toNumber_impl this)
    jregisterMethod header_ "getByteArray" (\() -> getByteArray_impl this)
    jregisterMethod header_ "isItemListener" (\() -> isItemListener_impl this)
    jregisterMethod header_ "gc" (\() -> gc_impl this)
    pure this

initFields_ :: TsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TsUtil)
getInstance = do
        pure (TsUtil.instance_)


longBitsToDouble :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Double)
longBitsToDouble object_ a1 = jmethod object_ "longBitsToDouble" (\() -> (longBitsToDouble_impl (javaCast object_ :: TsUtil))) () a1

longBitsToDouble_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Double)
longBitsToDouble_super object_ a1 = (longBitsToDouble_impl (javaCast object_ :: TsUtil)) a1

longBitsToDouble_impl :: TsUtil -> Int64 -> IO (Double)
longBitsToDouble_impl this bits = do
        pure ((GHC.Float.castWord64ToDouble (Prelude.fromIntegral bits)))


intBitsToFloat :: (JavaObjectClass this_) => this_ -> Int -> IO (Float)
intBitsToFloat object_ a1 = jmethod object_ "intBitsToFloat" (\() -> (intBitsToFloat_impl (javaCast object_ :: TsUtil))) () a1

intBitsToFloat_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Float)
intBitsToFloat_super object_ a1 = (intBitsToFloat_impl (javaCast object_ :: TsUtil)) a1

intBitsToFloat_impl :: TsUtil -> Int -> IO (Float)
intBitsToFloat_impl this bits = do
        pure ((GHC.Float.castWord32ToFloat (Prelude.fromIntegral bits)))


hashCode :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
hashCode object_ a1 = jmethod object_ "hashCode" (\() -> (hashCode_impl (javaCast object_ :: TsUtil))) () (jtoObject a1)

hashCode_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
hashCode_super object_ a1 = (hashCode_impl (javaCast object_ :: TsUtil)) (jtoObject a1)

hashCode_impl :: TsUtil -> JavaObject -> IO (Int)
hashCode_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        (Any.hashCode anyType)


-- throws InterruptedException
waitFor :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int64 -> IO (())
waitFor object_ a1 a2 = jmethod object_ "waitFor" (\() -> (waitFor_impl (javaCast object_ :: TsUtil))) () (jtoObject a1) a2

waitFor_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int64 -> IO (())
waitFor_super object_ a1 a2 = (waitFor_impl (javaCast object_ :: TsUtil)) (jtoObject a1) a2

waitFor_impl :: TsUtil -> JavaObject -> Int64 -> IO (())
waitFor_impl this anyObject_ timeoutMillis = do
        let any = jtoObject anyObject_
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws RecordStoreNotOpenException, InvalidRecordIDException, RecordStoreException
getRecord :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (JavaArray (Int8))
getRecord object_ a1 a2 = jmethod object_ "getRecord" (\() -> (getRecord_impl (javaCast object_ :: TsUtil))) () (jtoObject a1) a2

getRecord_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (JavaArray (Int8))
getRecord_super object_ a1 a2 = (getRecord_impl (javaCast object_ :: TsUtil)) (jtoObject a1) a2

getRecord_impl :: TsUtil -> JavaObject -> Int -> IO (JavaArray (Int8))
getRecord_impl this anyTypeObject_ recordId = do
        let anyType = jtoObject anyTypeObject_
        let recordStore = (javaCast anyType :: RecordStore.RecordStore)
        data_ <- newIORef (javaNull)
        do -- synchronized
            jset data_ ((jnewArray ((jio (RecordStore.getRecordSize recordStore recordId))) 0))
            Control.Monad.void (RecordStore.getRecord recordStore recordId (jget data_) 0)
        pure ((if ((jlength (jget data_)) < 1) then (jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY) else (jget data_)))


compareTo :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Int)
compareTo object_ a1 a2 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: TsUtil))) () a1 a2

compareTo_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Int)
compareTo_super object_ a1 a2 = (compareTo_impl (javaCast object_ :: TsUtil)) a1 a2

compareTo_impl :: TsUtil -> String -> String -> IO (Int)
compareTo_impl this a b = do
        pure ((Prelude.fromEnum (Prelude.compare a b) - 1))


equalIgnoreCase :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
equalIgnoreCase object_ a1 a2 = jmethod object_ "equalIgnoreCase" (\() -> (equalIgnoreCase_impl (javaCast object_ :: TsUtil))) () a1 a2

equalIgnoreCase_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
equalIgnoreCase_super object_ a1 a2 = (equalIgnoreCase_impl (javaCast object_ :: TsUtil)) a1 a2

equalIgnoreCase_impl :: TsUtil -> String -> String -> IO (Bool)
equalIgnoreCase_impl this a b = do
        pure ((Prelude.map Data.Char.toLower a == Prelude.map Data.Char.toLower b))


equalsNotstring :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (Bool)
equalsNotstring object_ a1 a2 = jmethod object_ "equalsNotstring" (\() -> (equalsNotstring_impl (javaCast object_ :: TsUtil))) () (jtoObject a1) (jtoObject a2)

equalsNotstring_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (Bool)
equalsNotstring_super object_ a1 a2 = (equalsNotstring_impl (javaCast object_ :: TsUtil)) (jtoObject a1) (jtoObject a2)

equalsNotstring_impl :: TsUtil -> JavaObject -> JavaObject -> IO (Bool)
equalsNotstring_impl this anyTypeObject_ object2Object_ = do
        let anyType = jtoObject anyTypeObject_
        let object2 = jtoObject object2Object_
        (Any.equals anyType object2)


toNumberFromChar :: (JavaObjectClass this_) => this_ -> Char -> IO (Int)
toNumberFromChar object_ a1 = jmethod object_ "toNumberFromChar" (\() -> (toNumberFromChar_impl (javaCast object_ :: TsUtil))) () a1

toNumberFromChar_super :: (JavaObjectClass this_) => this_ -> Char -> IO (Int)
toNumberFromChar_super object_ a1 = (toNumberFromChar_impl (javaCast object_ :: TsUtil)) a1

toNumberFromChar_impl :: TsUtil -> Char -> IO (Int)
toNumberFromChar_impl this value = do
        pure ((Prelude.fromIntegral (Prelude.fromEnum value)))


toNumber :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
toNumber object_ a1 = jmethod object_ "toNumber" (\() -> (toNumber_impl (javaCast object_ :: TsUtil))) () a1

toNumber_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
toNumber_super object_ a1 = (toNumber_impl (javaCast object_ :: TsUtil)) a1

toNumber_impl :: TsUtil -> Int -> IO (Int)
toNumber_impl this value = do
        pure (value)


getByteArray :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (Int8))
getByteArray object_ a1 = jmethod object_ "getByteArray" (\() -> (getByteArray_impl (javaCast object_ :: TsUtil))) () a1

getByteArray_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (Int8))
getByteArray_super object_ a1 = (getByteArray_impl (javaCast object_ :: TsUtil)) a1

getByteArray_impl :: TsUtil -> String -> IO (JavaArray (Int8))
getByteArray_impl this string = do
        pure ((jgetBytes string))


isItemListener :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (Bool)
isItemListener object_ a1 = jmethod object_ "isItemListener" (\() -> (isItemListener_impl (javaCast object_ :: TsUtil))) () a1

isItemListener_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (Bool)
isItemListener_super object_ a1 = (isItemListener_impl (javaCast object_ :: TsUtil)) a1

isItemListener_impl :: TsUtil -> Displayable.Displayable -> IO (Bool)
isItemListener_impl this owner = do
    javaCatchReturn $ do
        if (javaInstanceOf owner "Form") then do
            javaReturn (True)
        else do
            javaReturn (False)


gc :: (JavaObjectClass this_) => this_ -> IO (())
gc object_ = jmethod object_ "gc" (\() -> (gc_impl (javaCast object_ :: TsUtil))) ()

gc_super :: (JavaObjectClass this_) => this_ -> IO (())
gc_super object_ = (gc_impl (javaCast object_ :: TsUtil))

gc_impl :: TsUtil -> IO (())
gc_impl this = do
        pure ()


