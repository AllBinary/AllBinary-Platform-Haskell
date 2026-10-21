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
module ConstructorUtil where

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
import qualified Constructor -- java.lang.reflect.Constructor
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data ConstructorUtil = ConstructorUtil
    { header_ :: JavaHeader
    }

instance JavaNull ConstructorUtil where
    javaNull = javaNullRecord "ConstructorUtil"

instance JavaEquals ConstructorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ConstructorUtil where
    (==) = jrecordEquals

instance JavaObjectClass ConstructorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ConstructorUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ConstructorUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ConstructorUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ConstructorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ConstructorUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


viewAll :: Class.Class -> String -> IO (String)
viewAll myClass lineBreak = do
        stringBuffer <- (StringMaker.new_)
        constructor <- (Class.getConstructors myClass)
        Control.Monad.void (StringMaker.append stringBuffer "Constructors: ")
        Control.Monad.void (StringMaker.append stringBuffer lineBreak)
        forM_ [0 .. (jlength constructor) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (ConstructorUtil.view (jindex constructor (index)) lineBreak)))
        (StringMaker.toString stringBuffer)


view :: Constructor.Constructor -> String -> IO (String)
view constructor lineBreak = do
    javaCatchReturn $ do
        if (constructor /= javaNull) then do
            commonSeps <- (CommonSeps.getInstance)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (Constructor.getName constructor)))
            classes <- (Constructor.getParameterTypes constructor)
            forM_ [0 .. (jlength classes) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex classes (index))))))
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOLON))
                Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
            javaReturn =<< (StringMaker.toString stringBuffer)
        else do
            pure ("Constructor Null")


