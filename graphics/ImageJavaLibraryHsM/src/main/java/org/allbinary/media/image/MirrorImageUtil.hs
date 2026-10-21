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
-- package org.allbinary.media.image
module MirrorImageUtil where

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
import qualified ImageUtil -- same package or java.lang
import qualified Graphics2D -- same package or java.lang
import qualified AffineTransform -- java.awt.geom.AffineTransform
import qualified AffineTransformOp -- java.awt.image.AffineTransformOp
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
-- import java.awt.*

data MirrorImageUtil = MirrorImageUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    }

instance JavaNull MirrorImageUtil where
    javaNull = javaNullRecord "MirrorImageUtil"

instance JavaEquals MirrorImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MirrorImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass MirrorImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MirrorImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    imageUtil <- newIORef javaNull
    let this = MirrorImageUtil header_ logUtil imageUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "getImages" (\() -> getImages_impl this)
    pure this

initFields_ :: MirrorImageUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.imageUtil =<< (ImageUtil.getInstance)
    pure ()


getInstance :: IO (MirrorImageUtil)
getInstance = do
        pure (MirrorImageUtil.instance_)

new_ :: IO MirrorImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MirrorImageUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Bool -> Bool -> IO (BufferedImage.BufferedImage)
getImage object_ a1 a2 a3 = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: MirrorImageUtil))) () a1 a2 a3

getImage_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Bool -> Bool -> IO (BufferedImage.BufferedImage)
getImage_super object_ a1 a2 a3 = (getImage_impl (javaCast object_ :: MirrorImageUtil)) a1 a2 a3

getImage_impl :: MirrorImageUtil -> BufferedImage.BufferedImage -> Bool -> Bool -> IO (BufferedImage.BufferedImage)
getImage_impl this bufferedImage verticle horizontal = do
        bufferedImage <- newIORef bufferedImage
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "getImage")
        newBufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) (jio (BufferedImage.getWidth ((jget bufferedImage)) javaNull)) (jio (BufferedImage.getHeight ((jget bufferedImage)) javaNull)))
        g <- (BufferedImage.createGraphics newBufferedImage)
        when verticle $ do
            tx <- (AffineTransform.getScaleInstance 1 (Prelude.negate 1))
            Control.Monad.void (AffineTransform.translate tx 0 (Prelude.negate (jio (BufferedImage.getHeight ((jget bufferedImage)) javaNull))))
            op <- (AffineTransformOp.new_2 tx (AffineTransformOp.tYPE_NEAREST_NEIGHBOR))
            assignedValue <- (AffineTransformOp.filter op (jget bufferedImage) javaNull)
            jset bufferedImage (assignedValue)
        when horizontal $ do
            tx <- (AffineTransform.getScaleInstance (Prelude.negate 1) 1)
            Control.Monad.void (AffineTransform.translate tx (Prelude.negate (jio (BufferedImage.getWidth ((jget bufferedImage)) javaNull))) 0)
            op <- (AffineTransformOp.new_2 tx (AffineTransformOp.tYPE_NEAREST_NEIGHBOR))
            assignedValue <- (AffineTransformOp.filter op (jget bufferedImage) javaNull)
            jset bufferedImage (assignedValue)
        Control.Monad.void (Graphics2D.drawImage g (jget bufferedImage) 0 0 (jio (BufferedImage.getWidth ((jget bufferedImage)) javaNull)) (jio (BufferedImage.getHeight ((jget bufferedImage)) javaNull)) javaNull)
        Control.Monad.void (Graphics2D.dispose g)
        pure (newBufferedImage)


getImages :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Bool -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
getImages object_ a1 a2 a3 = jmethod object_ "getImages" (\() -> (getImages_impl (javaCast object_ :: MirrorImageUtil))) () a1 a2 a3

getImages_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Bool -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
getImages_super object_ a1 a2 a3 = (getImages_impl (javaCast object_ :: MirrorImageUtil)) a1 a2 a3

getImages_impl :: MirrorImageUtil -> BufferedImage.BufferedImage -> Bool -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
getImages_impl this bufferedImage verticle horizontal = do
        width <- (BufferedImage.getWidth bufferedImage)
        height <- (BufferedImage.getHeight bufferedImage)
        let cellHeight = height
        let cellWidth = height
        let numberOfFramesPerOrientation = (width `quot` cellWidth)
        numberOfFrames <- newIORef (numberOfFramesPerOrientation)
        when verticle $ do
            jset numberOfFrames (((jget numberOfFrames) * 2))
        when horizontal $ do
            jset numberOfFrames (((jget numberOfFrames) * 2))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("numberOfFramesPerOrientation: " ++ javaToString numberOfFramesPerOrientation) ++ " numberOfFrames: ") ++ javaToString (jget numberOfFrames)) this "getImages")
        let bufferedImageArray = (jnewArray ((jget numberOfFrames)) javaNull)
        let y = 0
        forM_ [0 .. numberOfFramesPerOrientation - 1] $ \index -> javaIteration (pure ()) $ do
            let x = (index * cellWidth)
            assignedValue <- (BufferedImage.getSubimage bufferedImage x y cellWidth cellHeight)
            jsetIndex bufferedImageArray (index) (assignedValue)
        forM_ [0 .. numberOfFramesPerOrientation - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (MirrorImageUtil.getImage this (jindex bufferedImageArray (index)) verticle horizontal)
            jsetIndex bufferedImageArray ((index + numberOfFramesPerOrientation)) (assignedValue)
        pure (bufferedImageArray)


