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
-- package org.allbinary.logic.java.anyType.clazz
module ClassUtil where

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
import qualified ConstructorUtil -- org.allbinary.logic.java.anyType.ConstructorUtil
import qualified InterfaceUtil -- org.allbinary.logic.java.anyType.InterfaceUtil
import qualified MethodUtil -- org.allbinary.logic.java.anyType.MethodUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data ClassUtil = ClassUtil
    { header_ :: JavaHeader
    }

instance JavaNull ClassUtil where
    javaNull = javaNullRecord "ClassUtil"

instance JavaEquals ClassUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ClassUtil where
    (==) = jrecordEquals

instance JavaObjectClass ClassUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ClassUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ClassUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ClassUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ClassUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ClassUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of viewAll: calls the overload for the types of the arguments
viewAll :: (JavaObjectClass o1) => o1 -> String -> IO (String)
viewAll a1 a2
    | jisInstanceOf a1 (javaNull :: Class.Class) = viewAll_overload2 (javaCast a1 :: Class.Class) a2
    | otherwise = viewAll_overload1 a1 a2

viewAll_overload1 :: (JavaObjectClass o1) => o1 -> String -> IO (String)
viewAll_overload1 anyTypeObject_ lineBreak = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if (anyType /= javaNull) then do
            javaReturn =<< (ClassUtil.viewAll (jio (jobjectGetClass anyType)) lineBreak)
        else do
            pure ("Object Null")


viewAll_overload2 :: Class.Class -> String -> IO (String)
viewAll_overload2 myClass lineBreak = do
    javaCatchReturn $ do
        if (myClass /= javaNull) then do
            stringBuffer <- (StringMaker.new_)
            classes <- (Class.getClasses myClass)
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            Control.Monad.void (StringMaker.append stringBuffer "Class: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName myClass)))
            Control.Monad.void (StringMaker.append stringBuffer " uses ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jlength classes))
            Control.Monad.void (StringMaker.append stringBuffer " other classes")
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            Control.Monad.void (StringMaker.append stringBuffer "Classes: ")
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            forM_ [0 .. (jlength classes) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Class: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex classes (index))))))
                Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            Control.Monad.void (StringMaker.append stringBuffer (jio (InterfaceUtil.viewAll myClass lineBreak)))
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            Control.Monad.void (StringMaker.append stringBuffer (jio (ConstructorUtil.viewAll myClass lineBreak)))
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            Control.Monad.void (StringMaker.append stringBuffer (jio (MethodUtil.viewAll myClass lineBreak)))
            javaReturn =<< (StringMaker.toString stringBuffer)
        else do
            pure ("Class Null")


