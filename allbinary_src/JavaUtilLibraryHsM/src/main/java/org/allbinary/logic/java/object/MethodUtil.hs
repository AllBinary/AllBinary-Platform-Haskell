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
module MethodUtil where

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
import qualified ParamsUtil -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data MethodUtil = MethodUtil
    { header_ :: JavaHeader
    }

instance JavaNull MethodUtil where
    javaNull = javaNullRecord "MethodUtil"

instance JavaEquals MethodUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MethodUtil where
    (==) = jrecordEquals

instance JavaObjectClass MethodUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MethodUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = MethodUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: MethodUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MethodUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MethodUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


viewAll :: Class.Class -> String -> IO (String)
viewAll myClass lineBreak = do
        stringBuffer <- (StringMaker.new_)
        method <- (Class.getMethods myClass)
        Control.Monad.void (StringMaker.append stringBuffer "Methods: ")
        Control.Monad.void (StringMaker.append stringBuffer lineBreak)
        forM_ [0 .. (jlength method) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jio (getReturnType ((jindex method (index)))))))))
            Control.Monad.void (StringMaker.append stringBuffer " ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex method (index))))))
            Control.Monad.void (StringMaker.append stringBuffer "(")
            Control.Monad.void (ParamsUtil.viewParams (jio (getParameterTypes ((jindex method (index))))))
            Control.Monad.void (StringMaker.append stringBuffer ")")
            Control.Monad.void (StringMaker.append stringBuffer lineBreak)
        (StringMaker.toString stringBuffer)


