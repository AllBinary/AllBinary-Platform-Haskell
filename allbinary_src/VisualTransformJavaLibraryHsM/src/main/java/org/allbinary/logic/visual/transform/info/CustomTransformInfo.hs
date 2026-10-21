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
-- package org.allbinary.logic.visual.transform.info
module CustomTransformInfo (module CustomTransformInfo, module TransformInfo) where

import TransformInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified TransformInfo
import qualified TransformInfoInterface

-- implements TransformInfoInterface
data CustomTransformInfo = CustomTransformInfo
    { header_ :: JavaHeader
    , base :: TransformInfo.TransformInfo
    }

instance JavaNull CustomTransformInfo where
    javaNull = javaNullRecord "CustomTransformInfo"

instance JavaEquals CustomTransformInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTransformInfo where
    (==) = jrecordEquals

instance JavaObjectClass CustomTransformInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomTransformInfo
newRecord_ = do
    base <- TransformInfo.newRecord_
    let header_ = base.header_
    let this = CustomTransformInfo header_ base
    jregisterLevel header_ this
    TransformInfoInterface.registerInterface_ header_
    pure this

initFields_ :: CustomTransformInfo -> IO ()
initFields_ this = do
    pure ()

new_8 :: String -> String -> String -> String -> String -> String -> String -> String -> IO CustomTransformInfo
new_8 outputTypeName inputOutputTypeName inputOutputTypeFile name objectFileName objectConfigFileName templateFileName dataFileName = do
    this <- newRecord_
    init_8 this outputTypeName inputOutputTypeName inputOutputTypeFile name objectFileName objectConfigFileName templateFileName dataFileName
    pure this

init_8 :: CustomTransformInfo -> String -> String -> String -> String -> String -> String -> String -> String -> IO ()
init_8 this outputTypeName inputOutputTypeName inputOutputTypeFile name objectFileName objectConfigFileName templateFileName dataFileName = do
        TransformInfo.init_ this.base
        initFields_ this
        pure ()
        pure ()


