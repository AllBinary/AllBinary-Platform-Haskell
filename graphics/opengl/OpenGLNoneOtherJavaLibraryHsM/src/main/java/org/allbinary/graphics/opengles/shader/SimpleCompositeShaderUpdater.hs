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
-- package org.allbinary.graphics.opengles.shader
module SimpleCompositeShaderUpdater (module SimpleCompositeShaderUpdater, module CompositeShaderUpdater) where

import CompositeShaderUpdater hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified CompositeShaderUpdater

data SimpleCompositeShaderUpdater = SimpleCompositeShaderUpdater
    { header_ :: JavaHeader
    , base :: CompositeShaderUpdater.CompositeShaderUpdater
    }

instance JavaNull SimpleCompositeShaderUpdater where
    javaNull = javaNullRecord "SimpleCompositeShaderUpdater"

instance JavaEquals SimpleCompositeShaderUpdater where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleCompositeShaderUpdater where
    (==) = jrecordEquals

instance JavaObjectClass SimpleCompositeShaderUpdater where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SimpleCompositeShaderUpdater
newRecord_ = do
    base <- CompositeShaderUpdater.newRecord_
    let header_ = base.header_
    let this = SimpleCompositeShaderUpdater header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: SimpleCompositeShaderUpdater -> IO ()
initFields_ this = do
    pure ()

new_4 :: JavaArray (String) -> JavaArray (String) -> JavaArray (String) -> JavaArray (Int) -> IO SimpleCompositeShaderUpdater
new_4 uniformBlockArray uniformArray attributeArray attributeHandleArray = do
    this <- newRecord_
    init_4 this uniformBlockArray uniformArray attributeArray attributeHandleArray
    pure this

init_4 :: SimpleCompositeShaderUpdater -> JavaArray (String) -> JavaArray (String) -> JavaArray (String) -> JavaArray (Int) -> IO ()
init_4 this uniformBlockArray uniformArray attributeArray attributeHandleArray = do
        CompositeShaderUpdater.init_4 this.base (uniformBlockArray) (uniformArray) (attributeArray) (attributeHandleArray)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


