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
-- package org.allbinary.input.motion.button
module TouchButtonsPaintableCompositeFactory where

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
import qualified TouchButtonsPaintableComposite -- same package or java.lang
import qualified InputMappingInterface -- org.allbinary.game.input.mapping.InputMappingInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ProcessPaintable -- org.allbinary.graphics.paint.ProcessPaintable

data TouchButtonsPaintableCompositeFactory = TouchButtonsPaintableCompositeFactory
    { header_ :: JavaHeader
    }

instance JavaNull TouchButtonsPaintableCompositeFactory where
    javaNull = javaNullRecord "TouchButtonsPaintableCompositeFactory"

instance JavaEquals TouchButtonsPaintableCompositeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonsPaintableCompositeFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonsPaintableCompositeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchButtonsPaintableCompositeFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TouchButtonsPaintableCompositeFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: TouchButtonsPaintableCompositeFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchButtonsPaintableCompositeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonsPaintableCompositeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: InputMappingInterface.InputMappingInterface -> BasicColor.BasicColor -> IO (ProcessPaintable.ProcessPaintable)
getInstance inputMappingInterface basicColor = do
        (fmap (\value_ -> javaCast value_ :: ProcessPaintable.ProcessPaintable) (TouchButtonsPaintableComposite.new_2 inputMappingInterface basicColor))


