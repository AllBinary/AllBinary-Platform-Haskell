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
-- package org.allbinary.util
module BasicArrayListS (module BasicArrayListS, module BasicArrayList) where

import BasicArrayList hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified JsType -- jsinterop.annotations.JsType
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified BasicArrayList

data BasicArrayListS = BasicArrayListS
    { header_ :: JavaHeader
    , base :: BasicArrayList.BasicArrayList
    }

instance JavaNull BasicArrayListS where
    javaNull = javaNullRecord "BasicArrayListS"

instance JavaEquals BasicArrayListS where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicArrayListS where
    (==) = jrecordEquals

instance JavaObjectClass BasicArrayListS where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicArrayListS
newRecord_ = do
    base <- BasicArrayList.newRecord_
    let header_ = base.header_
    let this = BasicArrayListS header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: BasicArrayListS -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO BasicArrayListS
new_1 size = do
    this <- newRecord_
    init_1 this size
    pure this

init_1 :: BasicArrayListS -> Int -> IO ()
init_1 this size = do
        BasicArrayList.init_1 this.base (jget ((jio (NullUtil.getInstance))).nULL_OBJECT_ARRAY)
        initFields_ this
        pure () -- super(...) is in the record above
        when (size < 0) $ do
            javaThrow ((JavaException "IllegalArgumentException" (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Init Size Exception: "))) size)))))))
        jset (this).base.objectArray ((jnewArray (size) javaNull))
        pure ()


