{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABTextFieldItem (module ABTextFieldItem, module ABTextItem) where

import ABTextItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLabel, getLabel_super, getLabel_impl, setLabel, setLabel_super, setLabel_impl, getString, getString_super, getString_impl, setString, setString_super, setString_impl, setFocus, setFocus_super, setFocus_impl, getFontHeight, getFontHeight_super, getFontHeight_impl, setBackgroundBasicColorP, setBackgroundBasicColorP_super, setBackgroundBasicColorP_impl, setForegroundBasicColorP, setForegroundBasicColorP_super, setForegroundBasicColorP_impl, font)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Font -- javax.microedition.lcdui.Font
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified ABTextItem

data ABTextFieldItem = ABTextFieldItem
    { header_ :: JavaHeader
    , base :: ABTextItem.ABTextItem
    , font :: IORef (Font.Font)
    }

instance JavaNull ABTextFieldItem where
    javaNull = javaNullRecord "ABTextFieldItem"

instance JavaEquals ABTextFieldItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABTextFieldItem where
    (==) = jrecordEquals

instance JavaObjectClass ABTextFieldItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABTextFieldItem
newRecord_ = do
    base <- ABTextItem.newRecord_
    let header_ = base.header_
    font <- newIORef javaNull
    let this = ABTextFieldItem header_ base font
    jregisterLevel header_ this
    jregisterMethod header_ "getLabel" (\() -> getLabel_impl this)
    jregisterMethod header_ "setLabel" (\() -> setLabel_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    jregisterMethod header_ "setString" (\() -> setString_impl this)
    jregisterMethod header_ "setFocus" (\() -> setFocus_impl this)
    jregisterMethod header_ "getFontHeight" (\() -> getFontHeight_impl this)
    jregisterMethod header_ "setBackgroundBasicColorP" (\() -> setBackgroundBasicColorP_impl this)
    jregisterMethod header_ "setForegroundBasicColorP" (\() -> setForegroundBasicColorP_impl this)
    pure this

initFields_ :: ABTextFieldItem -> IO ()
initFields_ this = do
    jset this.font (javaNull)
    pure ()

new_10 :: Canvas.Canvas -> Visitor.Visitor -> String -> String -> Int -> Int -> String -> Font.Font -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ABTextFieldItem
new_10 canvas visitor label value maxSize layout altText font backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_10 this canvas visitor label value maxSize layout altText font backgroundBasicColor foregroundBasicColor
    pure this

init_10 :: ABTextFieldItem -> Canvas.Canvas -> Visitor.Visitor -> String -> String -> Int -> Int -> String -> Font.Font -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_10 this canvas visitor label value maxSize layout altText font backgroundBasicColor foregroundBasicColor = do
        ABTextItem.init_5 this.base (label) (layout) (altText) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).font (font)
        pure ()


getLabel :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel object_ = jmethod object_ "getLabel" (\() -> (getLabel_impl (javaCast object_ :: ABTextFieldItem))) ()

getLabel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel_super object_ = (getLabel_impl (javaCast object_ :: ABTextFieldItem))

getLabel_impl :: ABTextFieldItem -> IO (String)
getLabel_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


setLabel :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLabel object_ a1 = jmethod object_ "setLabel" (\() -> (setLabel_impl (javaCast object_ :: ABTextFieldItem))) () a1

setLabel_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLabel_super object_ a1 = (setLabel_impl (javaCast object_ :: ABTextFieldItem)) a1

setLabel_impl :: ABTextFieldItem -> String -> IO (())
setLabel_impl this label = do
        pure ()


getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: ABTextFieldItem))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: ABTextFieldItem))

getString_impl :: ABTextFieldItem -> IO (String)
getString_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


setString :: (JavaObjectClass this_) => this_ -> String -> IO (())
setString object_ a1 = jmethod object_ "setString" (\() -> (setString_impl (javaCast object_ :: ABTextFieldItem))) () a1

setString_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setString_super object_ a1 = (setString_impl (javaCast object_ :: ABTextFieldItem)) a1

setString_impl :: ABTextFieldItem -> String -> IO (())
setString_impl this string = do
        pure ()


setFocus :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFocus object_ a1 = jmethod object_ "setFocus" (\() -> (setFocus_impl (javaCast object_ :: ABTextFieldItem))) () a1

setFocus_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFocus_super object_ a1 = (setFocus_impl (javaCast object_ :: ABTextFieldItem)) a1

setFocus_impl :: ABTextFieldItem -> Bool -> IO (())
setFocus_impl this state = do
        pure ()


getFontHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight object_ = jmethod object_ "getFontHeight" (\() -> (getFontHeight_impl (javaCast object_ :: ABTextFieldItem))) ()

getFontHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight_super object_ = (getFontHeight_impl (javaCast object_ :: ABTextFieldItem))

getFontHeight_impl :: ABTextFieldItem -> IO (Int)
getFontHeight_impl this = do
        (Font.getHeight ((jget (this).font)))


setBackgroundBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP object_ a1 = jmethod object_ "setBackgroundBasicColorP" (\() -> (setBackgroundBasicColorP_impl (javaCast object_ :: ABTextFieldItem))) () a1

setBackgroundBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP_super object_ a1 = (setBackgroundBasicColorP_impl (javaCast object_ :: ABTextFieldItem)) a1

setBackgroundBasicColorP_impl :: ABTextFieldItem -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP_impl this basicColor = do
        pure ()


setForegroundBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColorP object_ a1 = jmethod object_ "setForegroundBasicColorP" (\() -> (setForegroundBasicColorP_impl (javaCast object_ :: ABTextFieldItem))) () a1

setForegroundBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColorP_super object_ a1 = (setForegroundBasicColorP_impl (javaCast object_ :: ABTextFieldItem)) a1

setForegroundBasicColorP_impl :: ABTextFieldItem -> BasicColor.BasicColor -> IO (())
setForegroundBasicColorP_impl this basicColor = do
        pure ()


