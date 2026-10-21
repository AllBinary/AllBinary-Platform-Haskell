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
module ImageUnifierUtil where

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
import qualified GraphicsEnvironment -- same package or java.lang
import qualified GraphicsDevice -- same package or java.lang
import qualified GraphicsConfiguration -- same package or java.lang
import qualified Graphics2D -- same package or java.lang
import qualified ImageUnifierProperties -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
-- import java.awt.*

data ImageUnifierUtil = ImageUnifierUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    }

instance JavaNull ImageUnifierUtil where
    javaNull = javaNullRecord "ImageUnifierUtil"

instance JavaEquals ImageUnifierUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageUnifierUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageUnifierUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageUnifierUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    imageUtil <- newIORef javaNull
    let this = ImageUnifierUtil header_ logUtil imageUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getDefaultConfiguration" (\() -> getDefaultConfiguration_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    pure this

initFields_ :: ImageUnifierUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.imageUtil =<< (ImageUtil.getInstance)
    pure ()


getInstance :: IO (ImageUnifierUtil)
getInstance = do
        pure (ImageUnifierUtil.instance_)

new_ :: IO ImageUnifierUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageUnifierUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getDefaultConfiguration :: (JavaObjectClass this_) => this_ -> IO (GraphicsConfiguration.GraphicsConfiguration)
getDefaultConfiguration object_ = jmethod object_ "getDefaultConfiguration" (\() -> (getDefaultConfiguration_impl (javaCast object_ :: ImageUnifierUtil))) ()

getDefaultConfiguration_super :: (JavaObjectClass this_) => this_ -> IO (GraphicsConfiguration.GraphicsConfiguration)
getDefaultConfiguration_super object_ = (getDefaultConfiguration_impl (javaCast object_ :: ImageUnifierUtil))

getDefaultConfiguration_impl :: ImageUnifierUtil -> IO (GraphicsConfiguration.GraphicsConfiguration)
getDefaultConfiguration_impl this = do
        ge <- (GraphicsEnvironment.getLocalGraphicsEnvironment)
        gd <- (GraphicsEnvironment.getDefaultScreenDevice ge)
        (GraphicsDevice.getDefaultConfiguration gd)


getImage :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> ImageUnifierProperties.ImageUnifierProperties -> IO (BufferedImage.BufferedImage)
getImage object_ a1 a2 = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: ImageUnifierUtil))) () a1 a2

getImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> ImageUnifierProperties.ImageUnifierProperties -> IO (BufferedImage.BufferedImage)
getImage_super object_ a1 a2 = (getImage_impl (javaCast object_ :: ImageUnifierUtil)) a1 a2

getImage_impl :: ImageUnifierUtil -> JavaArray (BufferedImage.BufferedImage) -> ImageUnifierProperties.ImageUnifierProperties -> IO (BufferedImage.BufferedImage)
getImage_impl this bufferedImageArray imageUnifierProperties = do
        newBufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) (jio (ImageUnifierProperties.getWidth imageUnifierProperties)) (jio (ImageUnifierProperties.getHeight imageUnifierProperties)))
        commonLabels <- (CommonLabels.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((("Setting Image - " ++ javaToString (jget (commonLabels).wIDTH_LABEL)) ++ javaToString (jio (BufferedImage.getWidth newBufferedImage))) ++ javaToString (jget (commonLabels).hEIGHT_LABEL)) ++ javaToString (jio (BufferedImage.getHeight newBufferedImage))) this "getImage")
        g <- (BufferedImage.createGraphics newBufferedImage)
        columnIndex <- newIORef (0)
        rowIndex <- newIORef (0)
        forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
            let x = ((jio (ImageUnifierCell.getWidth ((jio (ImageUnifierProperties.getImageUnifierCell imageUnifierProperties))))) * (jpostIncrement columnIndex (+ 1)))
            let y = ((jio (ImageUnifierCell.getHeight ((jio (ImageUnifierProperties.getImageUnifierCell imageUnifierProperties))))) * (jget rowIndex))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((("Adding Image: " ++ javaToString index) ++ " x: ") ++ javaToString x) ++ " y: ") ++ javaToString y) this "getImage")
            Control.Monad.void (Graphics2D.drawImage g (jindex bufferedImageArray (index)) x y (jio (ImageUnifierCell.getWidth ((jio (ImageUnifierProperties.getImageUnifierCell imageUnifierProperties))))) (jio (ImageUnifierCell.getHeight ((jio (ImageUnifierProperties.getImageUnifierCell imageUnifierProperties))))) javaNull)
            let totalColumnsMinusOne = (((jio (ImageUnifierProperties.getColumns imageUnifierProperties)) - 1))
            when ((jget columnIndex) > totalColumnsMinusOne) $ do
                jset rowIndex ((jget rowIndex) + 1)
                jset columnIndex (0)
        Control.Monad.void (Graphics2D.dispose g)
        pure (newBufferedImage)


