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
-- package org.allbinary.input.automation
module PointFactory where

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
import qualified Point -- same package or java.lang
-- import java.awt.*

data PointFactory = PointFactory
    { header_ :: JavaHeader
    }

instance JavaNull PointFactory where
    javaNull = javaNullRecord "PointFactory"

instance JavaEquals PointFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointFactory where
    (==) = jrecordEquals

instance JavaObjectClass PointFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE pointArray #-}
pointArray = unsafePerformIO (newIORef ((jnewArray2 (3000) (3000) javaNull)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = PointFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: PointFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PointFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PointFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: Int -> Int -> IO (Point.Point)
getInstance x y = do
        point <- newIORef ((jindex ((jindex ((jget PointFactory.pointArray)) (x))) (y)))
        when ((jget point) == javaNull) $ do
            assignedValue <- (jio (Point.new_2 x y))
            jsetIndex ((jindex ((jget PointFactory.pointArray)) (x))) (y) (assignedValue)
            jset point ((jindex ((jindex ((jget PointFactory.pointArray)) (x))) (y)))
        pure ((jget point))


