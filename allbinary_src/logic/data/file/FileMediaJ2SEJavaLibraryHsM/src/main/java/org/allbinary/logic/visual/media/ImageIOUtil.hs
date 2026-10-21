{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.visual.media
module ImageIOUtil where

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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified RenderedImage -- java.awt.image.RenderedImage
import qualified ImageIO -- javax.imageio.ImageIO
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil

data ImageIOUtil = ImageIOUtil
    { header_ :: JavaHeader
    }

instance JavaNull ImageIOUtil where
    javaNull = javaNullRecord "ImageIOUtil"

instance JavaEquals ImageIOUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageIOUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageIOUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageIOUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageIOUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ImageIOUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ImageIOUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageIOUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
read :: AbFile.AbFile -> IO (BufferedImage.BufferedImage)
read file = do
        (ImageIO.read (jio (AbFileNativeUtil.get file)))


-- throws Exception
write :: RenderedImage.RenderedImage -> String -> AbFile.AbFile -> IO (Bool)
write renderedImage name file = do
        (ImageIO.write renderedImage name (jio (AbFileNativeUtil.get file)))


