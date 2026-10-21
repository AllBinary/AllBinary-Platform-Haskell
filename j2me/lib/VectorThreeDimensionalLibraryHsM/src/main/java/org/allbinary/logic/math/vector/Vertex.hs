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
module Vertex where

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
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data Vertex = Vertex
    { header_ :: JavaHeader
    , x :: IORef (BasicDecimal.BasicDecimal)
    , y :: IORef (BasicDecimal.BasicDecimal)
    , z :: IORef (BasicDecimal.BasicDecimal)
    }

instance JavaNull Vertex where
    javaNull = javaNullRecord "Vertex"

instance JavaEquals Vertex where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Vertex where
    (==) = jrecordEquals

instance JavaObjectClass Vertex where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Vertex
newRecord_ = do
    header_ <- newJavaHeader
    x <- newIORef javaNull
    y <- newIORef javaNull
    z <- newIORef javaNull
    let this = Vertex header_ x y z
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Vertex -> IO ()
initFields_ this = do
    jset this.x =<< (BasicDecimal.new_1 0)
    jset this.y =<< (BasicDecimal.new_1 0)
    jset this.z =<< (BasicDecimal.new_1 0)
    pure ()

new_ :: IO Vertex
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Vertex -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Vertex))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Vertex))

toString_impl :: Vertex -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        positionStrings <- (PositionStrings.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).x_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicDecimal.toString ((jget (this).x)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).y_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicDecimal.toString ((jget (this).y)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).z_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicDecimal.toString ((jget (this).z)))))
        (StringMaker.toString stringBuffer)


