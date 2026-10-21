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
module FullTouchButton (module FullTouchButton, module TouchButton) where

import TouchButton hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createButton, createButton_super, createButton_impl, updateRectangle, updateRectangle_super, updateRectangle_impl)
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
import qualified TouchButtonInput -- same package or java.lang
import qualified TouchButtonResource -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified TouchButton

data FullTouchButton = FullTouchButton
    { header_ :: JavaHeader
    , base :: TouchButton.TouchButton
    }

instance JavaNull FullTouchButton where
    javaNull = javaNullRecord "FullTouchButton"

instance JavaEquals FullTouchButton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FullTouchButton where
    (==) = jrecordEquals

instance JavaObjectClass FullTouchButton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FullTouchButton
newRecord_ = do
    base <- TouchButton.newRecord_
    let header_ = base.header_
    let this = FullTouchButton header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "updateRectangle" (\() -> updateRectangle_impl this)
    pure this

initFields_ :: FullTouchButton -> IO ()
initFields_ this = do
    pure ()


-- throws Exception
createButton :: TouchButtonInput.TouchButtonInput -> TouchButtonResource.TouchButtonResource -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO (FullTouchButton)
createButton touchButtonInput touchButtonResource rawRectangle cellPosition xBorder yBorder = do
        (new_7 touchButtonInput (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget (touchButtonResource).rESOURCE)))) 0)) (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget (touchButtonResource).hINT)))) 0)) rawRectangle cellPosition xBorder yBorder)

new_7 :: TouchButtonInput.TouchButtonInput -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO FullTouchButton
new_7 touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder = do
    this <- newRecord_
    init_7 this touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder
    pure this

init_7 :: FullTouchButton -> TouchButtonInput.TouchButtonInput -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> CellPosition.CellPosition -> Int -> Int -> IO ()
init_7 this touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder = do
        TouchButton.init_7 this.base (touchButtonInput) (animationInterface) (hintAnimationInterface) (rawRectangle) (cellPosition) (xBorder) (yBorder)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


updateRectangle :: (JavaObjectClass this_) => this_ -> IO (())
updateRectangle object_ = jmethod object_ "updateRectangle" (\() -> (updateRectangle_impl (javaCast object_ :: FullTouchButton))) ()

updateRectangle_super :: (JavaObjectClass this_) => this_ -> IO (())
updateRectangle_super object_ = (updateRectangle_impl (javaCast object_ :: FullTouchButton))

updateRectangle_impl :: FullTouchButton -> IO (())
updateRectangle_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "updateRectangle" e)
            ) $ do
            pointFactory <- (PointFactory.getInstance)
            let x = ((jio (Rectangle.getWidth ((jget (this).base.rawRectangle)))) * (jio (CellPosition.getColumn ((jget (this).base.cellPositionP)))))
            let y = ((jio (Rectangle.getHeight ((jget (this).base.rawRectangle)))) * (jio (CellPosition.getRow ((jget (this).base.cellPositionP)))))
            assignedValue <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory x y)) ((jio (Rectangle.getWidth ((jget (this).base.rawRectangle)))) + ((2 * (jget (this).base.xBorder)))) ((jio (Rectangle.getHeight ((jget (this).base.rawRectangle)))) + ((2 * (jget (this).base.yBorder)))))
            jset (this).base.rectangleP (assignedValue)
            point <- (Rectangle.getPoint ((jget (this).base.rectangleP)))
            jset (this).base.animationX (((jio (GPoint.getX point)) + (jget (this).base.xBorder)))
            jset (this).base.animationY (((jio (GPoint.getY point)) + (jget (this).base.yBorder)))
            jset (this).base.hintAnimationY ((((jget (this).base.animationY) - (jio (Rectangle.getHeight ((jget (this).base.rectangleP))))) `Data.Bits.shiftR` 1))
        pure ()


