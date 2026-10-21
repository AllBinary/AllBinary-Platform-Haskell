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
module ParamsUtil where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data ParamsUtil = ParamsUtil
    { header_ :: JavaHeader
    }

instance JavaNull ParamsUtil where
    javaNull = javaNullRecord "ParamsUtil"

instance JavaEquals ParamsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ParamsUtil where
    (==) = jrecordEquals

instance JavaObjectClass ParamsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ParamsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ParamsUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ParamsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ParamsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ParamsUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


viewParams :: JavaArray (Class.Class) -> IO (String)
viewParams params = do
    javaCatchReturn $ do
        if (params /= javaNull) then do
            stringBuffer <- (StringMaker.new_)
            forM_ [0 .. (jlength params) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer " ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (getName ((jindex params (index))))))
            javaReturn =<< (StringMaker.toString stringBuffer)
        else do
            pure ("Params Null")


