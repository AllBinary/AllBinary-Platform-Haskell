{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2026 AllBinary
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
-- package org.allbinary
module MIDPUtil where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified Form -- javax.microedition.lcdui.Form
import qualified Image -- javax.microedition.lcdui.Image
import qualified LcduiItem -- javax.microedition.lcdui.LcduiItem
import qualified Manager -- javax.microedition.media.Manager
import qualified MediaException -- javax.microedition.media.MediaException
import qualified Player -- javax.microedition.media.Player

data MIDPUtil = MIDPUtil
    { header_ :: JavaHeader
    }

instance JavaNull MIDPUtil where
    javaNull = javaNullRecord "MIDPUtil"

instance JavaEquals MIDPUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MIDPUtil where
    (==) = jrecordEquals

instance JavaObjectClass MIDPUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

instance_ :: MIDPUtil
{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO MIDPUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = MIDPUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "createImageWH" (\() -> createImageWH_impl this)
    jregisterMethod header_ "createImageFromByteArray" (\() -> createImageFromByteArray_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    jregisterMethod header_ "createPlayerFromInputStream" (\() -> createPlayerFromInputStream_impl this)
    jregisterMethod header_ "appendItem" (\() -> appendItem_impl this)
    pure this

initFields_ :: MIDPUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MIDPUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MIDPUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MIDPUtil)
getInstance = do
        pure (MIDPUtil.instance_)


createImageWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Image.Image)
createImageWH object_ a1 a2 = jmethod object_ "createImageWH" (\() -> (createImageWH_impl (javaCast object_ :: MIDPUtil))) () a1 a2

createImageWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Image.Image)
createImageWH_super object_ a1 a2 = (createImageWH_impl (javaCast object_ :: MIDPUtil)) a1 a2

createImageWH_impl :: MIDPUtil -> Int -> Int -> IO (Image.Image)
createImageWH_impl this width height = do
        (Image.createImage width height)


createImageFromByteArray :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (Image.Image)
createImageFromByteArray object_ a1 a2 a3 = jmethod object_ "createImageFromByteArray" (\() -> (createImageFromByteArray_impl (javaCast object_ :: MIDPUtil))) () a1 a2 a3

createImageFromByteArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> Int -> IO (Image.Image)
createImageFromByteArray_super object_ a1 a2 a3 = (createImageFromByteArray_impl (javaCast object_ :: MIDPUtil)) a1 a2 a3

createImageFromByteArray_impl :: MIDPUtil -> JavaArray (Int8) -> Int -> Int -> IO (Image.Image)
createImageFromByteArray_impl this imageData imageOffset imageLength = do
        (Image.createImage imageData imageOffset imageLength)


-- throws IOException
createImageFromInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream object_ a1 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: MIDPUtil))) () a1

createImageFromInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_super object_ a1 = (createImageFromInputStream_impl (javaCast object_ :: MIDPUtil)) a1

createImageFromInputStream_impl :: MIDPUtil -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_impl this inputStream = do
        (Image.createImage inputStream)


-- throws IOException, MediaException
createPlayerFromInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> String -> IO (Player.Player)
createPlayerFromInputStream object_ a1 a2 = jmethod object_ "createPlayerFromInputStream" (\() -> (createPlayerFromInputStream_impl (javaCast object_ :: MIDPUtil))) () a1 a2

createPlayerFromInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> String -> IO (Player.Player)
createPlayerFromInputStream_super object_ a1 a2 = (createPlayerFromInputStream_impl (javaCast object_ :: MIDPUtil)) a1 a2

createPlayerFromInputStream_impl :: MIDPUtil -> InputStream.InputStream -> String -> IO (Player.Player)
createPlayerFromInputStream_impl this inputStream type_ = do
        (Manager.createPlayer inputStream type_)


appendItem :: (JavaObjectClass this_) => this_ -> Form.Form -> LcduiItem.LcduiItem -> IO (Int)
appendItem object_ a1 a2 = jmethod object_ "appendItem" (\() -> (appendItem_impl (javaCast object_ :: MIDPUtil))) () a1 a2

appendItem_super :: (JavaObjectClass this_) => this_ -> Form.Form -> LcduiItem.LcduiItem -> IO (Int)
appendItem_super object_ a1 a2 = (appendItem_impl (javaCast object_ :: MIDPUtil)) a1 a2

appendItem_impl :: MIDPUtil -> Form.Form -> LcduiItem.LcduiItem -> IO (Int)
appendItem_impl this form item = do
        (Form.append form item)


