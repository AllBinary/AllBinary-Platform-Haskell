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
-- package org.allbinary.graphics.pipeline
module GraphicsPipeline (module GraphicsPipeline, module BasicGraphicsPipeline) where

import BasicGraphicsPipeline hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, rotateTheta, rotateTheta_super, rotateTheta_impl)
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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicGraphicsPipeline

data GraphicsPipeline = GraphicsPipeline
    { header_ :: JavaHeader
    , base :: BasicGraphicsPipeline.BasicGraphicsPipeline
    }

instance JavaNull GraphicsPipeline where
    javaNull = javaNullRecord "GraphicsPipeline"

instance JavaEquals GraphicsPipeline where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicsPipeline where
    (==) = jrecordEquals

instance JavaObjectClass GraphicsPipeline where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GraphicsPipeline
newRecord_ = do
    base <- BasicGraphicsPipeline.newRecord_
    let header_ = base.header_
    let this = GraphicsPipeline header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "rotateTheta" (\() -> rotateTheta_impl this)
    pure this

initFields_ :: GraphicsPipeline -> IO ()
initFields_ this = do
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO GraphicsPipeline
new_1 points = do
    this <- newRecord_
    init_1 this points
    pure this

init_1 :: GraphicsPipeline -> BasicArrayList.BasicArrayList -> IO ()
init_1 this points = do
        BasicGraphicsPipeline.init_1 this.base (points)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
rotateTheta :: (JavaObjectClass this_) => this_ -> Double -> IO (())
rotateTheta object_ a1 = jmethod object_ "rotateTheta" (\() -> (rotateTheta_impl (javaCast object_ :: GraphicsPipeline))) () a1

rotateTheta_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
rotateTheta_super object_ a1 = (rotateTheta_impl (javaCast object_ :: GraphicsPipeline)) a1

rotateTheta_impl :: GraphicsPipeline -> Double -> IO (())
rotateTheta_impl this aTheta = do
        newVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size ((jget (this).base.pointBasicArrayList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let secondPoint = (javaCast (jio (BasicArrayList.get ((jget this.base.pointBasicArrayList)) index)) :: GPoint.GPoint)
            let secondX = ((((jio (GPoint.getX secondPoint)) * (Prelude.cos aTheta))) - (((jio (GPoint.getY secondPoint)) * (Prelude.sin aTheta))))
            let secondY = ((((jio (GPoint.getX secondPoint)) * (Prelude.sin aTheta))) + (((jio (GPoint.getY secondPoint)) * (Prelude.cos aTheta))))
            point <- (PointFactory.createXY ((jio (PointFactory.getInstance))) ((Prelude.truncate secondX)) ((Prelude.truncate secondY)))
            Control.Monad.void (BasicArrayList.add newVector point)
        jset (this).base.pointBasicArrayList (newVector)
        pure ()


