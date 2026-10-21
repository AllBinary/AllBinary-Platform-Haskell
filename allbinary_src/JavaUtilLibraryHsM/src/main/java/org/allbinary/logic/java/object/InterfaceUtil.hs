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
-- package org.allbinary.logic.java.anyType
module InterfaceUtil where

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
import qualified Class -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data InterfaceUtil = InterfaceUtil
    { header_ :: JavaHeader
    }

instance JavaNull InterfaceUtil where
    javaNull = javaNullRecord "InterfaceUtil"

instance JavaEquals InterfaceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InterfaceUtil where
    (==) = jrecordEquals

instance JavaObjectClass InterfaceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InterfaceUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = InterfaceUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: InterfaceUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InterfaceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InterfaceUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


viewAll :: Class.Class -> String -> IO (String)
viewAll myClass lineBreak = do
        stringBuffer <- (StringMaker.new_)
        interfaces <- (Class.getInterfaces myClass)
        Control.Monad.void (StringMaker.append stringBuffer lineBreak)
        Control.Monad.void (StringMaker.append stringBuffer "Interfaces: ")
        Control.Monad.void (StringMaker.append stringBuffer lineBreak)
        forM_ [0 .. (jlength interfaces) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Interface: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex interfaces (index))))))
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
        (StringMaker.toString stringBuffer)


getClass :: String -> JavaArray (Class.Class) -> IO (Class.Class)
getClass interfaceName interfaces = do
    javaCatchReturn $ do
        when (((interfaceName /= javaNull) && (interfaces /= javaNull)) && ((jlength interfaces) > 0)) $ do
            forM_ [0 .. (jlength interfaces) - 1] $ \index -> javaIteration (pure ()) $ do
                when ((jio (indexOf ((jio (getName ((jindex interfaces (index)))))) interfaceName)) >= 0) $ do
                    javaReturn ((jindex interfaces (index)))
        pure (javaNull)


-- Java overloads of isImplemented: calls the overload for the types of the arguments
isImplemented :: (JavaObjectClass o1, JavaObjectClass o2) => o1 -> o2 -> IO (Bool)
isImplemented a1 a2
    | jisInstanceOf a1 (javaNull :: Class.Class) = isImplemented_overload1 (javaCast a1 :: Class.Class) a2
    | jisInstanceOf a1 (javaNull :: String) = isImplemented_overload2 (javaCast a1 :: String) a2
    | otherwise = isImplemented_overload2 (javaCast a1 :: String) a2

isImplemented_overload1 :: (JavaObjectClass o2) => Class.Class -> o2 -> IO (Bool)
isImplemented_overload1 clazz anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        classes <- (Class.getInterfaces ((jio (jobjectGetClass anyType))))
        forM_ [0 .. (jlength classes) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jio (Class.compareTo ((jio (Class.getName clazz))) (jio (getName ((jindex classes (index))))))) == 0) $ do
                javaReturn (True)
        pure (False)


isImplemented_overload2 :: (JavaObjectClass o2) => String -> o2 -> IO (Bool)
isImplemented_overload2 className anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        classes <- (Class.getInterfaces ((jio (jobjectGetClass anyType))))
        forM_ [0 .. (jlength classes) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jio (indexOf ((jio (getName ((jindex classes (index)))))) className)) == 0) $ do
                javaReturn (True)
        pure (False)


isImplementedView :: (JavaObjectClass o2) => Class.Class -> o2 -> IO (String)
isImplementedView clazz anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        stringBuffer <- (StringMaker.new_)
        classes <- (Class.getInterfaces ((jio (jobjectGetClass anyType))))
        Control.Monad.void (StringMaker.append stringBuffer "isImplementedView: \n")
        forM_ [0 .. (jlength classes) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName clazz)))
            Control.Monad.void (StringMaker.append stringBuffer " should be = ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex classes (index))))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex classes (index))))))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        (StringMaker.toString stringBuffer)


