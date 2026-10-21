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
-- package org.allbinary.animation
module VectorAnimation (module VectorAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createVectorAnimation, createVectorAnimation_super, createVectorAnimation_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, changeBasicColor, changeBasicColor_super, changeBasicColor_impl, setAlpha, setAlpha_super, setAlpha_impl, setScale, setScale_super, setScale_impl, setMaxScale, setMaxScale_super, setMaxScale_impl, updateModifiers, updateModifiers_super, updateModifiers_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getSize, getSize_super, getSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, paintVectors, paintVectors_super, paintVectors_impl, paintXY, paintXY_super, paintXY_impl, getFrame, getFrame_super, getFrame_impl, setFrame, setFrame_super, setFrame_impl, getPoints, getPoints_super, getPoints_impl, setPoints, setPoints_super, setPoints_impl, currentPoints, circularIndexUtil)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified BasicColorSetUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified IndexedAnimation
import qualified VectorAnimationInterface

-- implements VectorAnimationInterface
data VectorAnimation = VectorAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , currentPoints :: IORef (JavaArray (JavaArray (JavaArray (Int))))
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    }

instance JavaNull VectorAnimation where
    javaNull = javaNullRecord "VectorAnimation"

instance JavaEquals VectorAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorAnimation where
    (==) = jrecordEquals

instance JavaObjectClass VectorAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VectorAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    currentPoints <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    let this = VectorAnimation header_ base currentPoints circularIndexUtil
    jregisterLevel header_ this
    VectorAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "changeBasicColor" (\() -> changeBasicColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "setScale" (\() -> setScale_impl this)
    jregisterMethod header_ "setMaxScale" (\() -> setMaxScale_impl this)
    jregisterMethod header_ "updateModifiers" (\() -> updateModifiers_impl this)
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "paintVectors" (\() -> paintVectors_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getPoints" (\() -> getPoints_impl this)
    jregisterMethod header_ "setPoints" (\() -> setPoints_impl this)
    pure this

initFields_ :: VectorAnimation -> IO ()
initFields_ this = do
    jset this.currentPoints ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY_ARRAY))
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstance 0)
    pure ()


createVectorAnimation :: JavaArray (JavaArray (Int)) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO (VectorAnimation)
createVectorAnimation currentPoints2 basicColor animationBehavior = do
        let currentPoints = (jnewArray3 (1) ((jlength currentPoints2)) (2) 0)
        let size = (jlength currentPoints2)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jindex ((jindex currentPoints (0))) (index))) (0) ((jindex ((jindex currentPoints2 (index))) (0)))
            jsetIndex ((jindex ((jindex currentPoints (0))) (index))) (1) ((jindex ((jindex currentPoints2 (index))) (1)))
        (new_3 currentPoints basicColor animationBehavior)

new_3 :: JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO VectorAnimation
new_3 currentPoints basicColor animationBehavior = do
    this <- newRecord_
    init_3 this currentPoints basicColor animationBehavior
    pure this

init_3 :: VectorAnimation -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this currentPoints basicColor animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (VectorAnimation.setPoints this currentPoints)
        Control.Monad.void (VectorAnimation.setBasicColorP this basicColor)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: VectorAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: VectorAnimation)) a1

setBasicColorP_impl :: VectorAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (IndexedAnimation.getBasicColorP this)) == javaNull) || ((jio (BasicColor.intValue ((jio (IndexedAnimation.getBasicColorP this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (IndexedAnimation.setBasicColorP_super this.base basicColor)
        when (jget changed) $ do
            Control.Monad.void (VectorAnimation.updateModifiers this)
        pure ()


changeBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor object_ a1 = jmethod object_ "changeBasicColor" (\() -> (changeBasicColor_impl (javaCast object_ :: VectorAnimation))) () a1

changeBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor_super object_ a1 = (changeBasicColor_impl (javaCast object_ :: VectorAnimation)) a1

changeBasicColor_impl :: VectorAnimation -> BasicColor.BasicColor -> IO (())
changeBasicColor_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (IndexedAnimation.getChangeBasicColor this)) == javaNull) || ((jio (BasicColor.intValue ((jio (IndexedAnimation.getChangeBasicColor this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (IndexedAnimation.changeBasicColor_super this.base basicColor)
        when (jget changed) $ do
            Control.Monad.void (VectorAnimation.updateModifiers this)
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: VectorAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: VectorAnimation)) a1

setAlpha_impl :: VectorAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        changed <- newIORef (False)
        when ((jget (this).base.base.alphaP) /= alpha) $ do
            jset changed (True)
        Control.Monad.void (IndexedAnimation.setAlpha_super this.base alpha)
        when (jget changed) $ do
            Control.Monad.void (VectorAnimation.updateModifiers this)
        pure ()


setScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale object_ a1 a2 = jmethod object_ "setScale" (\() -> (setScale_impl (javaCast object_ :: VectorAnimation))) () a1 a2

setScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale_super object_ a1 a2 = (setScale_impl (javaCast object_ :: VectorAnimation)) a1 a2

setScale_impl :: VectorAnimation -> Float -> Float -> IO (())
setScale_impl this scaleX scaleY = do
        pure ()


setMaxScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale object_ a1 a2 = jmethod object_ "setMaxScale" (\() -> (setMaxScale_impl (javaCast object_ :: VectorAnimation))) () a1 a2

setMaxScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale_super object_ a1 a2 = (setMaxScale_impl (javaCast object_ :: VectorAnimation)) a1 a2

setMaxScale_impl :: VectorAnimation -> Float -> Float -> IO (())
setMaxScale_impl this maxScaleX maxScaleY = do
        pure ()


updateModifiers :: (JavaObjectClass this_) => this_ -> IO (())
updateModifiers object_ = jmethod object_ "updateModifiers" (\() -> (updateModifiers_impl (javaCast object_ :: VectorAnimation))) ()

updateModifiers_super :: (JavaObjectClass this_) => this_ -> IO (())
updateModifiers_super object_ = (updateModifiers_impl (javaCast object_ :: VectorAnimation))

updateModifiers_impl :: VectorAnimation -> IO (())
updateModifiers_impl this = do
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: VectorAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: VectorAnimation))

getAnimationSize_impl :: VectorAnimation -> IO (Int)
getAnimationSize_impl this = do
        (VectorAnimation.getSize this)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: VectorAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: VectorAnimation))

getSize_impl :: VectorAnimation -> IO (Int)
getSize_impl this = do
        pure ((jlength (jget (this).currentPoints)))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: VectorAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: VectorAnimation)) a1

setSequence_impl :: VectorAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: VectorAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: VectorAnimation))

getSequence_impl :: VectorAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: VectorAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: VectorAnimation))

nextFrame_impl :: VectorAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: VectorAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: VectorAnimation))

previousFrame_impl :: VectorAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.previous ((jget (this).circularIndexUtil)))
        pure ()


paintVectors :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintVectors object_ a1 a2 a3 = jmethod object_ "paintVectors" (\() -> (paintVectors_impl (javaCast object_ :: VectorAnimation))) () a1 a2 a3

paintVectors_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintVectors_super object_ a1 a2 a3 = (paintVectors_impl (javaCast object_ :: VectorAnimation)) a1 a2 a3

paintVectors_impl :: VectorAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintVectors_impl this graphics x y = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "paintVectors" e)
            ) $ do
            nextPointX <- newIORef (0)
            nextPointY <- newIORef (0)
            nextPoint <- newIORef (javaNull)
            point <- newIORef (javaNull)
            let currentPointsFrame = (jindex ((jget (this).currentPoints)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))
            let size = (jlength currentPointsFrame)
            index <- newIORef ((size - 2))
            fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (loop) $ do
                jset nextPoint ((jindex currentPointsFrame ((jget index))))
                jset point ((jindex currentPointsFrame (((jget index) + 1))))
                jset nextPointX ((jindex ((jget nextPoint)) (0)))
                jset nextPointY ((jindex ((jget nextPoint)) (1)))
                if ((jget nextPointX) /= 1000) then do
                    Control.Monad.void (Graphics.drawLine graphics ((jindex ((jget point)) (0)) + x) ((jindex ((jget point)) (1)) + y) ((jget nextPointX) + x) ((jget nextPointY) + y))
                else do
                    jset index ((jget index) - 1)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: VectorAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: VectorAnimation)) a1 a2 a3

paintXY_impl :: VectorAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).base.base.basicSetColorUtil)) graphics (jget (this).base.base.basicColor))
        Control.Monad.void (VectorAnimation.paintVectors this graphics x y)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: VectorAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: VectorAnimation))

getFrame_impl :: VectorAnimation -> IO (Int)
getFrame_impl this = do
        (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: VectorAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: VectorAnimation)) a1

setFrame_impl :: VectorAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).circularIndexUtil)) index)
        pure ()


getPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints object_ a1 = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: VectorAnimation))) () a1

getPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints_super object_ a1 = (getPoints_impl (javaCast object_ :: VectorAnimation)) a1

getPoints_impl :: VectorAnimation -> Int -> IO (JavaArray (JavaArray (Int)))
getPoints_impl this frame = do
        pure ((jindex ((jget (this).currentPoints)) (frame)))


setPoints :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints object_ a1 = jmethod object_ "setPoints" (\() -> (setPoints_impl (javaCast object_ :: VectorAnimation))) () a1

setPoints_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints_super object_ a1 = (setPoints_impl (javaCast object_ :: VectorAnimation)) a1

setPoints_impl :: VectorAnimation -> JavaArray (JavaArray (JavaArray (Int))) -> IO (())
setPoints_impl this currentPoints = do
        jset (this).currentPoints (currentPoints)
        assignedValue <- (CircularIndexUtil.createInstance (jlength currentPoints))
        jset (this).circularIndexUtil (assignedValue)
        pure ()


