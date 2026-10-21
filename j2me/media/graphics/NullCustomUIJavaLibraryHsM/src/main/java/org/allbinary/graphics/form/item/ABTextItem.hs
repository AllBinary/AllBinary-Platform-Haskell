{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABTextItem (module ABTextItem, module CustomCustomItem) where

import CustomCustomItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, keyPressed, keyPressed_super, keyPressed_impl, paintUnselected, paintUnselected_super, paintUnselected_impl, getLabelStringComponent, getLabelStringComponent_super, getLabelStringComponent_impl)
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
import qualified ABStringComponent -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CustomCustomItem
import qualified ABCustomItemInterface

-- implements ABCustomItemInterface
data ABTextItem = ABTextItem
    { header_ :: JavaHeader
    , base :: CustomCustomItem.CustomCustomItem
    }

instance JavaNull ABTextItem where
    javaNull = javaNullRecord "ABTextItem"

instance JavaEquals ABTextItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABTextItem where
    (==) = jrecordEquals

instance JavaObjectClass ABTextItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABTextItem
newRecord_ = do
    base <- CustomCustomItem.newRecord_
    let header_ = base.header_
    let this = ABTextItem header_ base
    jregisterLevel header_ this
    ABCustomItemInterface.registerInterface_ header_
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "paintUnselected" (\() -> paintUnselected_impl this)
    jregisterMethod header_ "getLabelStringComponent" (\() -> getLabelStringComponent_impl this)
    pure this

initFields_ :: ABTextItem -> IO ()
initFields_ this = do
    pure ()

new_5 :: String -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ABTextItem
new_5 label layout altText backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_5 this label layout altText backgroundBasicColor foregroundBasicColor
    pure this

init_5 :: ABTextItem -> String -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_5 this label layout altText backgroundBasicColor foregroundBasicColor = do
        CustomCustomItem.init_3 this.base (label) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: ABTextItem))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: ABTextItem)) a1

keyPressed_impl :: ABTextItem -> Int -> IO (())
keyPressed_impl this keyCode = do
        pure ()


paintUnselected :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected object_ a1 a2 a3 = jmethod object_ "paintUnselected" (\() -> (paintUnselected_impl (javaCast object_ :: ABTextItem))) () a1 a2 a3

paintUnselected_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_super object_ a1 a2 a3 = (paintUnselected_impl (javaCast object_ :: ABTextItem)) a1 a2 a3

paintUnselected_impl :: ABTextItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_impl this graphics x y = do
        pure ()


getLabelStringComponent :: (JavaObjectClass this_) => this_ -> IO (ABStringComponent.ABStringComponent)
getLabelStringComponent object_ = jmethod object_ "getLabelStringComponent" (\() -> (getLabelStringComponent_impl (javaCast object_ :: ABTextItem))) ()

getLabelStringComponent_super :: (JavaObjectClass this_) => this_ -> IO (ABStringComponent.ABStringComponent)
getLabelStringComponent_super object_ = (getLabelStringComponent_impl (javaCast object_ :: ABTextItem))

getLabelStringComponent_impl :: ABTextItem -> IO (ABStringComponent.ABStringComponent)
getLabelStringComponent_impl this = do
        pure (ABStringComponent.nULL_STRING_COMPONENT)


