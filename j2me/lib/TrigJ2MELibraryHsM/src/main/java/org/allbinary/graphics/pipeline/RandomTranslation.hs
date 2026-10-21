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
module RandomTranslation where

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
import qualified BasicGraphicsPipeline -- same package or java.lang
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data RandomTranslation = RandomTranslation
    { header_ :: JavaHeader
    }

instance JavaNull RandomTranslation where
    javaNull = javaNullRecord "RandomTranslation"

instance JavaEquals RandomTranslation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RandomTranslation where
    (==) = jrecordEquals

instance JavaObjectClass RandomTranslation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RandomTranslation
newRecord_ = do
    header_ <- newJavaHeader
    let this = RandomTranslation header_
    jregisterLevel header_ this
    pure this

initFields_ :: RandomTranslation -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RandomTranslation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RandomTranslation -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstance vector howMuch = do
        myRandomFactory <- (MyRandomFactory.getInstance)
        let x = (Prelude.negate (jio (MyRandomFactory.getNextInt myRandomFactory howMuch)))
        y <- (MyRandomFactory.getNextInt myRandomFactory howMuch)
        graphicsPipe <- (BasicGraphicsPipeline.new_1 vector)
        Control.Monad.void (BasicGraphicsPipeline.createMatrix graphicsPipe)
        Control.Monad.void (BasicGraphicsPipeline.translate graphicsPipe x y)
        (BasicGraphicsPipeline.getMatrix graphicsPipe)


