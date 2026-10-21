{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer
module RTSScrollSelectionFormFactory where

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
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified FormTypeFactory -- org.allbinary.graphics.form.FormTypeFactory
import qualified MultipleScrollSelectionHorizontalForm -- org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified CommonButtons -- org.allbinary.input.motion.button.CommonButtons
import qualified TouchButtonLocationHelper -- org.allbinary.input.motion.button.TouchButtonLocationHelper

data RTSScrollSelectionFormFactory = RTSScrollSelectionFormFactory
    { header_ :: JavaHeader
    }

instance JavaNull RTSScrollSelectionFormFactory where
    javaNull = javaNullRecord "RTSScrollSelectionFormFactory"

instance JavaEquals RTSScrollSelectionFormFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSScrollSelectionFormFactory where
    (==) = jrecordEquals

instance JavaObjectClass RTSScrollSelectionFormFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSScrollSelectionFormFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = RTSScrollSelectionFormFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: RTSScrollSelectionFormFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RTSScrollSelectionFormFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSScrollSelectionFormFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: String -> JavaArray (ABCustomItem.ABCustomItem) -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance formLabel items = do
        basicColorFactory <- (BasicColorFactory.getInstance)
        touchButtonLocationHelper <- (TouchButtonLocationHelper.new_)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        let menuX = ((jget ((jio (CommonButtons.getInstance))).sTANDARD_BUTTON_SIZE) + (jio (TouchButtonLocationHelper.getColumnsRemainderHalf touchButtonLocationHelper)))
        let width = ((jio (DisplayInfoSingleton.getLastWidth displayInfo)) - ((menuX * 2)))
        menuRectangle <- (Rectangle.new_3 (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) menuX 16)) width (jget ((jio (CommonButtons.getInstance))).sTANDARD_BUTTON_SIZE))
        (MultipleScrollSelectionHorizontalForm.createForm formLabel items menuRectangle (jget ((jio (FormTypeFactory.getInstance))).hORIZONTAL_FORM) 0 (jget (basicColorFactory).bLACK) (jget (basicColorFactory).wHITE))


