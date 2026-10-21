{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module CustomCustomItem (module CustomCustomItem, module ABCustomItem) where

import ABCustomItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, updateMyFontProcessor, myFontProcessor)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified ABCustomItem

-- implements UpdateMyFontInterface
data CustomCustomItem = CustomCustomItem
    { header_ :: JavaHeader
    , base :: ABCustomItem.ABCustomItem
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    }

instance JavaNull CustomCustomItem where
    javaNull = javaNullRecord "CustomCustomItem"

instance JavaEquals CustomCustomItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomCustomItem where
    (==) = jrecordEquals

instance JavaObjectClass CustomCustomItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomCustomItem
newRecord_ = do
    base <- ABCustomItem.newRecord_
    let header_ = base.header_
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    let this = CustomCustomItem header_ base updateMyFontProcessor myFontProcessor
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    pure this

initFields_ :: CustomCustomItem -> IO ()
initFields_ this = do
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    pure ()

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO CustomCustomItem
new_3 label backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this label backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: CustomCustomItem -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this label backgroundBasicColor foregroundBasicColor = do
        ABCustomItem.init_3 this.base (label) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: CustomCustomItem))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: CustomCustomItem)) a1

updateMeasurement_impl :: CustomCustomItem -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        pure ()


