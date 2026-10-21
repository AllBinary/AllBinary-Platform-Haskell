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
-- package org.allbinary.game.part
module CountedLayerInterfaceFactoryPart where

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
import qualified Any -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified CountedPickedUpLayerInterfaceFactory -- org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified PartInterface

-- implements PartInterface
-- implements UpdateMyFontInterface
data CountedLayerInterfaceFactoryPart = CountedLayerInterfaceFactoryPart
    { header_ :: JavaHeader
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , animationInterface :: IORef (Animation.Animation)
    , total :: IORef (Int)
    , totalString :: IORef (JavaArray (Char))
    , xOffset :: IORef (Int)
    , countedPickedUpLayerInterfaceFactory :: IORef (CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    }

instance JavaNull CountedLayerInterfaceFactoryPart where
    javaNull = javaNullRecord "CountedLayerInterfaceFactoryPart"

instance JavaEquals CountedLayerInterfaceFactoryPart where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CountedLayerInterfaceFactoryPart where
    (==) = jrecordEquals

instance JavaObjectClass CountedLayerInterfaceFactoryPart where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COUNTED_LAYER_INTERFACE_FACTORY #-}
nULL_COUNTED_LAYER_INTERFACE_FACTORY = unsafePerformIO ((new_2 0 (CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CountedLayerInterfaceFactoryPart
newRecord_ = do
    header_ <- newJavaHeader
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    animationInterface <- newIORef javaNull
    total <- newIORef 0
    totalString <- newIORef javaNull
    xOffset <- newIORef 0
    countedPickedUpLayerInterfaceFactory <- newIORef javaNull
    primitiveLongUtil <- newIORef javaNull
    let this = CountedLayerInterfaceFactoryPart header_ updateMyFontProcessor myFontProcessor animationInterface total totalString xOffset countedPickedUpLayerInterfaceFactory primitiveLongUtil
    jregisterLevel header_ this
    PartInterface.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "setTotal" (\() -> setTotal_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "setAnimationInterface" (\() -> setAnimationInterface_impl this)
    jregisterMethod header_ "getXOffset" (\() -> getXOffset_impl this)
    jregisterMethod header_ "setXOffset" (\() -> setXOffset_impl this)
    jregisterMethod header_ "getTotalString" (\() -> getTotalString_impl this)
    jregisterMethod header_ "getCountedPickedUpLayerInterfaceFactory" (\() -> getCountedPickedUpLayerInterfaceFactory_impl this)
    jregisterMethod header_ "setCountedPickedUpLayerInterfaceFactory" (\() -> setCountedPickedUpLayerInterfaceFactory_impl this)
    pure this

initFields_ :: CountedLayerInterfaceFactoryPart -> IO ()
initFields_ this = do
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.animationInterface =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    jset this.total (0)
    jset this.totalString ((jget ((jio (NullUtil.getInstance))).nULL_CHAR_ARRAY))
    jset this.xOffset (0)
    jset this.countedPickedUpLayerInterfaceFactory (CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY)
    jset this.primitiveLongUtil (javaNull)
    pure ()

new_2 :: Int -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO CountedLayerInterfaceFactoryPart
new_2 total countedPickedUpLayerInterfaceFactory = do
    this <- newRecord_
    init_2 this total countedPickedUpLayerInterfaceFactory
    pure this

init_2 :: CountedLayerInterfaceFactoryPart -> Int -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO ()
init_2 this total countedPickedUpLayerInterfaceFactory = do
        initFields_ this
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen 1000)
        jset (this).primitiveLongUtil (assignedValue)
        Control.Monad.void (CountedLayerInterfaceFactoryPart.init this total countedPickedUpLayerInterfaceFactory)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

updateMeasurement_impl :: CountedLayerInterfaceFactoryPart -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        Control.Monad.void (CountedLayerInterfaceFactoryPart.setXOffset this ((jio (Font.charsWidth font (jget (this).totalString) 0 (jio (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))))) + (((jio (Font.getSize font)) `Data.Bits.shiftR` 1))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1 a2

init_impl :: CountedLayerInterfaceFactoryPart -> Int -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO (())
init_impl this total countedPickedUpLayerInterfaceFactory = do
        Control.Monad.void (CountedLayerInterfaceFactoryPart.setCountedPickedUpLayerInterfaceFactory this countedPickedUpLayerInterfaceFactory)
        jset (this).total (total)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1 a2 a3 a4

getInstance_impl :: CountedLayerInterfaceFactoryPart -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_impl this hashtable x y z = do
    javaCatchReturn $ do
        if ((jget (this).total) > 0) then do
            Control.Monad.void (CountedLayerInterfaceFactoryPart.setTotal this ((jget (this).total) - 1))
            javaReturn =<< (CountedPickedUpLayerInterfaceFactory.getNextInstance ((jio (CountedLayerInterfaceFactoryPart.getCountedPickedUpLayerInterfaceFactory this))) hashtable x y z)
        else do
            javaThrow ((JavaException "Exception" "No more left. Could use a listener to automatically remove"))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))

getTotal_impl :: CountedLayerInterfaceFactoryPart -> IO (Int)
getTotal_impl this = do
        pure ((jget (this).total))


setTotal :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotal object_ a1 = jmethod object_ "setTotal" (\() -> (setTotal_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

setTotal_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotal_super object_ a1 = (setTotal_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

setTotal_impl :: CountedLayerInterfaceFactoryPart -> Int -> IO (())
setTotal_impl this total = do
        jset (this).total (total)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) total)
        jset (this).totalString (assignedValue)
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

paint_impl :: CountedLayerInterfaceFactoryPart -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

paintThreed_impl :: CountedLayerInterfaceFactoryPart -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))

getAnimationInterface_impl :: CountedLayerInterfaceFactoryPart -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


setAnimationInterface :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface object_ a1 = jmethod object_ "setAnimationInterface" (\() -> (setAnimationInterface_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

setAnimationInterface_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface_super object_ a1 = (setAnimationInterface_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

setAnimationInterface_impl :: CountedLayerInterfaceFactoryPart -> Animation.Animation -> IO (())
setAnimationInterface_impl this animationInterface = do
        jset (this).animationInterface (animationInterface)
        pure ()


getXOffset :: (JavaObjectClass this_) => this_ -> IO (Int)
getXOffset object_ = jmethod object_ "getXOffset" (\() -> (getXOffset_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) ()

getXOffset_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getXOffset_super object_ = (getXOffset_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))

getXOffset_impl :: CountedLayerInterfaceFactoryPart -> IO (Int)
getXOffset_impl this = do
        pure ((jget (this).xOffset))


setXOffset :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setXOffset object_ a1 = jmethod object_ "setXOffset" (\() -> (setXOffset_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

setXOffset_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setXOffset_super object_ a1 = (setXOffset_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

setXOffset_impl :: CountedLayerInterfaceFactoryPart -> Int -> IO (())
setXOffset_impl this totalStringWidth = do
        jset (this).xOffset (totalStringWidth)
        pure ()


getTotalString :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Char))
getTotalString object_ = jmethod object_ "getTotalString" (\() -> (getTotalString_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) ()

getTotalString_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Char))
getTotalString_super object_ = (getTotalString_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))

getTotalString_impl :: CountedLayerInterfaceFactoryPart -> IO (JavaArray (Char))
getTotalString_impl this = do
        pure ((jget (this).totalString))


getCountedPickedUpLayerInterfaceFactory :: (JavaObjectClass this_) => this_ -> IO (CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory)
getCountedPickedUpLayerInterfaceFactory object_ = jmethod object_ "getCountedPickedUpLayerInterfaceFactory" (\() -> (getCountedPickedUpLayerInterfaceFactory_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) ()

getCountedPickedUpLayerInterfaceFactory_super :: (JavaObjectClass this_) => this_ -> IO (CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory)
getCountedPickedUpLayerInterfaceFactory_super object_ = (getCountedPickedUpLayerInterfaceFactory_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))

getCountedPickedUpLayerInterfaceFactory_impl :: CountedLayerInterfaceFactoryPart -> IO (CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory)
getCountedPickedUpLayerInterfaceFactory_impl this = do
        pure ((jget (this).countedPickedUpLayerInterfaceFactory))


setCountedPickedUpLayerInterfaceFactory :: (JavaObjectClass this_) => this_ -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO (())
setCountedPickedUpLayerInterfaceFactory object_ a1 = jmethod object_ "setCountedPickedUpLayerInterfaceFactory" (\() -> (setCountedPickedUpLayerInterfaceFactory_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart))) () a1

setCountedPickedUpLayerInterfaceFactory_super :: (JavaObjectClass this_) => this_ -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO (())
setCountedPickedUpLayerInterfaceFactory_super object_ a1 = (setCountedPickedUpLayerInterfaceFactory_impl (javaCast object_ :: CountedLayerInterfaceFactoryPart)) a1

setCountedPickedUpLayerInterfaceFactory_impl :: CountedLayerInterfaceFactoryPart -> CountedPickedUpLayerInterfaceFactory.CountedPickedUpLayerInterfaceFactory -> IO (())
setCountedPickedUpLayerInterfaceFactory_impl this countedPickedUpLayerInterfaceFactory = do
        jset (this).countedPickedUpLayerInterfaceFactory (countedPickedUpLayerInterfaceFactory)
        pure ()


