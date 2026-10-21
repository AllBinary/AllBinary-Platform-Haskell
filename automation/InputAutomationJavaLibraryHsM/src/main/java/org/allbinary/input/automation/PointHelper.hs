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
module PointHelper where

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
import qualified PointFactory -- same package or java.lang
import qualified Point -- same package or java.lang
import qualified Rectangle -- same package or java.lang
-- import java.awt.*

data PointHelper = PointHelper
    { header_ :: JavaHeader
    }

instance JavaNull PointHelper where
    javaNull = javaNullRecord "PointHelper"

instance JavaEquals PointHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointHelper where
    (==) = jrecordEquals

instance JavaObjectClass PointHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

two = 2.0

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = PointHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: PointHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PointHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PointHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getCenterPoint :: Rectangle.Rectangle -> IO (Point.Point)
getCenterPoint rectangle = do
        let x = ((jio (Rectangle.getX rectangle)) + ((jio (Rectangle.getWidth rectangle)) / PointHelper.two))
        let y = ((jio (Rectangle.getY rectangle)) + ((jio (Rectangle.getHeight rectangle)) / PointHelper.two))
        (PointFactory.getInstance (Prelude.truncate x) (Prelude.truncate y))


