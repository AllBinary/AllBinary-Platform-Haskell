{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.image
module BufferedImageUtil2 where

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
import qualified BufferedImage -- java.awt.image.BufferedImage
-- import java.awt.*

data BufferedImageUtil2 = BufferedImageUtil2
    { header_ :: JavaHeader
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    }

instance JavaNull BufferedImageUtil2 where
    javaNull = javaNullRecord "BufferedImageUtil2"

instance JavaEquals BufferedImageUtil2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedImageUtil2 where
    (==) = jrecordEquals

instance JavaObjectClass BufferedImageUtil2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BufferedImageUtil2
newRecord_ = do
    header_ <- newJavaHeader
    imageUtil <- newIORef javaNull
    let this = BufferedImageUtil2 header_ imageUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createSpriteImage" (\() -> createSpriteImage_impl this)
    pure this

initFields_ :: BufferedImageUtil2 -> IO ()
initFields_ this = do
    jset this.imageUtil =<< (ImageUtil.getInstance)
    pure ()

new_ :: IO BufferedImageUtil2
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BufferedImageUtil2 -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BufferedImageUtil2)
getInstance = do
        pure (BufferedImageUtil2.instance_)


createSpriteImage :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (BufferedImage.BufferedImage)
createSpriteImage object_ a1 = jmethod object_ "createSpriteImage" (\() -> (createSpriteImage_impl (javaCast object_ :: BufferedImageUtil2))) () a1

createSpriteImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (BufferedImage.BufferedImage)
createSpriteImage_super object_ a1 = (createSpriteImage_impl (javaCast object_ :: BufferedImageUtil2)) a1

createSpriteImage_impl :: BufferedImageUtil2 -> JavaArray (BufferedImage.BufferedImage) -> IO (BufferedImage.BufferedImage)
createSpriteImage_impl this bufferedImageArray = do
        columns <- newIORef ((jlength bufferedImageArray))
        let max = (jget columns)
        rows <- newIORef (0)
        when ((jlength bufferedImageArray) < (jget columns)) $ do
            jset columns ((jlength bufferedImageArray))
        jset rows ((((jlength bufferedImageArray) `quot` (jget columns))))
        when (((jlength bufferedImageArray) `rem` (jget columns)) /= 0) $ do
            jset rows ((jget rows) + 1)
        bufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) ((jio (getWidth ((jindex bufferedImageArray (0))) javaNull)) * (jget columns)) ((jio (getHeight ((jindex bufferedImageArray (0))) javaNull)) * (jget rows)))
        g <- (BufferedImage.createGraphics bufferedImage)
        columnIndex <- newIORef (0)
        rowIndex <- newIORef (0)
        forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
            when (((index `quot` max) /= 0) && ((index `rem` max) == 0)) $ do
                jset rowIndex ((jget rowIndex) + 1)
                jset columnIndex (0)
            Control.Monad.void (Graphics2D.drawImage g (jindex bufferedImageArray (index)) ((jio (getWidth ((jindex bufferedImageArray (index))) javaNull)) * (jget columnIndex)) ((jio (getHeight ((jindex bufferedImageArray (index))) javaNull)) * (jget rowIndex)) (jio (getWidth ((jindex bufferedImageArray (index))) javaNull)) (jio (getHeight ((jindex bufferedImageArray (index))) javaNull)) javaNull)
            jset columnIndex ((jget columnIndex) + 1)
        Control.Monad.void (Graphics2D.dispose g)
        pure (bufferedImage)


