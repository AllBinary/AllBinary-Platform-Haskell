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
-- package org.allbinary.logic.math.vector
module YAxisMathVector (module YAxisMathVector, module MathVector) where

import MathVector hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getResult, getResult_super, getResult_impl, calculate, calculate_super, calculate_impl)
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
import qualified YAxisMathVectorUtil -- same package or java.lang
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified MathVector

data YAxisMathVector = YAxisMathVector
    { header_ :: JavaHeader
    , base :: MathVector.MathVector
    }

instance JavaNull YAxisMathVector where
    javaNull = javaNullRecord "YAxisMathVector"

instance JavaEquals YAxisMathVector where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq YAxisMathVector where
    (==) = jrecordEquals

instance JavaObjectClass YAxisMathVector where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO YAxisMathVector
newRecord_ = do
    base <- MathVector.newRecord_
    let header_ = base.header_
    let this = YAxisMathVector header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getResult" (\() -> getResult_impl this)
    jregisterMethod header_ "calculate" (\() -> calculate_impl this)
    pure this

initFields_ :: YAxisMathVector -> IO ()
initFields_ this = do
    pure ()

new_2 :: BasicDecimal.BasicDecimal -> Int -> IO YAxisMathVector
new_2 magnitudeBasicDecimal direction = do
    this <- newRecord_
    init_2 this magnitudeBasicDecimal direction
    pure this

init_2 :: YAxisMathVector -> BasicDecimal.BasicDecimal -> Int -> IO ()
init_2 this magnitudeBasicDecimal direction = do
        MathVector.init_2 this.base (magnitudeBasicDecimal) (direction)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (YAxisMathVector.calculate this)
        pure ()


getResult :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getResult object_ = jmethod object_ "getResult" (\() -> (getResult_impl (javaCast object_ :: YAxisMathVector))) ()

getResult_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getResult_super object_ = (getResult_impl (javaCast object_ :: YAxisMathVector))

getResult_impl :: YAxisMathVector -> IO (BasicDecimal.BasicDecimal)
getResult_impl this = do
        pure ((jget this.base.resultBasicDecimal))


calculate :: (JavaObjectClass this_) => this_ -> IO (())
calculate object_ = jmethod object_ "calculate" (\() -> (calculate_impl (javaCast object_ :: YAxisMathVector))) ()

calculate_super :: (JavaObjectClass this_) => this_ -> IO (())
calculate_super object_ = (calculate_impl (javaCast object_ :: YAxisMathVector))

calculate_impl :: YAxisMathVector -> IO (())
calculate_impl this = do
        result <- (YAxisMathVectorUtil.calculate (jio (MathVector.getUnscaled ((jio (MathVector.getMagnitude this))))) (jio (MathVector.getDirection this)))
        assignedValue <- (BasicDecimal.new_1 result)
        jset (this).base.resultBasicDecimal (assignedValue)
        pure ()


