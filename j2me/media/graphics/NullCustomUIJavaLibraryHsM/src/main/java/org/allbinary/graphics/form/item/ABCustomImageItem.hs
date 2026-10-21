{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABCustomImageItem (module ABCustomImageItem, module ABCustomItem) where

import ABCustomItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getImage, getImage_super, getImage_impl, yOffset)
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
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ABCustomItem

data ABCustomImageItem = ABCustomImageItem
    { header_ :: JavaHeader
    , base :: ABCustomItem.ABCustomItem
    , yOffset :: IORef (Int)
    }

instance JavaNull ABCustomImageItem where
    javaNull = javaNullRecord "ABCustomImageItem"

instance JavaEquals ABCustomImageItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABCustomImageItem where
    (==) = jrecordEquals

instance JavaObjectClass ABCustomImageItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABCustomImageItem
newRecord_ = do
    base <- ABCustomItem.newRecord_
    let header_ = base.header_
    yOffset <- newIORef 0
    let this = ABCustomImageItem header_ base yOffset
    jregisterLevel header_ this
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    pure this

initFields_ :: ABCustomImageItem -> IO ()
initFields_ this = do
    jset this.yOffset (0)
    pure ()

new_6 :: String -> Image.Image -> Int -> String -> BasicColor.BasicColor -> Int -> IO ABCustomImageItem
new_6 label image layout altText basicColor yOffset = do
    this <- newRecord_
    init_6 this label image layout altText basicColor yOffset
    pure this

init_6 :: ABCustomImageItem -> String -> Image.Image -> Int -> String -> BasicColor.BasicColor -> Int -> IO ()
init_6 this label image layout altText basicColor yOffset = do
        ABCustomItem.init_3 this.base (label) (basicColor) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: ABCustomImageItem))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: ABCustomImageItem))

getImage_impl :: ABCustomImageItem -> IO (Image.Image)
getImage_impl this = do
        pure (NullImage.nULL_IMAGE)


