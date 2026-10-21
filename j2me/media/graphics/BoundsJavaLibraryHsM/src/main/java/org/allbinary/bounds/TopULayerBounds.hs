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
-- package org.allbinary.bounds
module TopULayerBounds (module TopULayerBounds, module LayerBounds) where

import LayerBounds hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl)
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
import qualified BoundsVisitorInterface -- same package or java.lang
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified LayerBounds

data TopULayerBounds = TopULayerBounds
    { header_ :: JavaHeader
    , base :: LayerBounds.LayerBounds
    }

instance JavaNull TopULayerBounds where
    javaNull = javaNullRecord "TopULayerBounds"

instance JavaEquals TopULayerBounds where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TopULayerBounds where
    (==) = jrecordEquals

instance JavaObjectClass TopULayerBounds where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TopULayerBounds
newRecord_ = do
    base <- LayerBounds.newRecord_
    let header_ = base.header_
    let this = TopULayerBounds header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: TopULayerBounds -> IO ()
initFields_ this = do
    pure ()

new_1 :: Rectangle.Rectangle -> IO TopULayerBounds
new_1 rectangle = do
    this <- newRecord_
    init_1 this rectangle
    pure this

init_1 :: TopULayerBounds -> Rectangle.Rectangle -> IO ()
init_1 this rectangle = do
        LayerBounds.init_1 this.base (rectangle)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


visit :: (JavaObjectClass this_) => this_ -> BoundsVisitorInterface.BoundsVisitorInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: TopULayerBounds))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> BoundsVisitorInterface.BoundsVisitorInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: TopULayerBounds)) a1

visit_impl :: TopULayerBounds -> BoundsVisitorInterface.BoundsVisitorInterface -> IO (())
visit_impl this boundsVisitorInterface = do
        when ((jio (BoundsVisitorInterface.getX boundsVisitorInterface)) > (jio (Rectangle.getMaxX ((jget (this).base.rectangle))))) $ do
            Control.Monad.void (BoundsVisitorInterface.maxX boundsVisitorInterface)
        when ((jio (BoundsVisitorInterface.getX boundsVisitorInterface)) < (jio (GPoint.getX ((jio (Rectangle.getPoint ((jget (this).base.rectangle)))))))) $ do
            Control.Monad.void (BoundsVisitorInterface.minX boundsVisitorInterface)
        when ((jio (BoundsVisitorInterface.getY boundsVisitorInterface)) < (jio (GPoint.getY ((jio (Rectangle.getPoint ((jget (this).base.rectangle)))))))) $ do
            Control.Monad.void (BoundsVisitorInterface.minY boundsVisitorInterface)
        pure ()


