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
-- package org.allbinary.logic.string
module StringValidationJSEUtil where

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

data StringValidationJSEUtil = StringValidationJSEUtil
    { header_ :: JavaHeader
    }

instance JavaNull StringValidationJSEUtil where
    javaNull = javaNullRecord "StringValidationJSEUtil"

instance JavaEquals StringValidationJSEUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StringValidationJSEUtil where
    (==) = jrecordEquals

instance JavaObjectClass StringValidationJSEUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StringValidationJSEUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = StringValidationJSEUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: StringValidationJSEUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StringValidationJSEUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StringValidationJSEUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isBlank :: String -> IO (Bool)
isBlank string = do
    javaCatchReturn $ do
        let len = (Prelude.length string)
        forM_ [0 .. len - 1] $ \i -> javaIteration (pure ()) $ do
            let c = (string Prelude.!! i)
            when ((Data.Char.isSpace c) == False) $ do
                javaReturn (False)
        pure (True)


