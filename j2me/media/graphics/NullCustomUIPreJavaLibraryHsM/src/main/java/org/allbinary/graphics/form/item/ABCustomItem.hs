{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABCustomItem where

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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Screen -- javax.microedition.lcdui.Screen
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data ABCustomItem = ABCustomItem
    { header_ :: JavaHeader
    }

instance JavaNull ABCustomItem where
    javaNull = javaNullRecord "ABCustomItem"

instance JavaEquals ABCustomItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABCustomItem where
    (==) = jrecordEquals

instance JavaObjectClass ABCustomItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CUSTOM_ITEM #-}
nULL_CUSTOM_ITEM = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABCustomItem
newRecord_ = do
    header_ <- newJavaHeader
    let this = ABCustomItem header_
    jregisterLevel header_ this
    jregisterMethod header_ "setOwner" (\() -> setOwner_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintUnselected" (\() -> paintUnselected_impl this)
    jregisterMethod header_ "isFocusable" (\() -> isFocusable_impl this)
    jregisterMethod header_ "getLabel" (\() -> getLabel_impl this)
    jregisterMethod header_ "setLabel" (\() -> setLabel_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "getMinimumWidth" (\() -> getMinimumWidth_impl this)
    jregisterMethod header_ "getMinimumHeight" (\() -> getMinimumHeight_impl this)
    jregisterMethod header_ "preMeasurement" (\() -> preMeasurement_impl this)
    pure this

initFields_ :: ABCustomItem -> IO ()
initFields_ this = do
    pure ()


getNullInstance :: IO (ABCustomItem)
getNullInstance = do
        when ((jget ABCustomItem.nULL_CUSTOM_ITEM) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_3 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
            jset ABCustomItem.nULL_CUSTOM_ITEM (assignedValue)
        pure ((javaCast (jget ABCustomItem.nULL_CUSTOM_ITEM) :: ABCustomItem))

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ABCustomItem
new_3 label backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this label backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: ABCustomItem -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this label backgroundBasicColor foregroundBasicColor = do
        initFields_ this
        pure ()
        pure ()


setOwner :: (JavaObjectClass this_) => this_ -> Screen.Screen -> IO (())
setOwner object_ a1 = jmethod object_ "setOwner" (\() -> (setOwner_impl (javaCast object_ :: ABCustomItem))) () a1

setOwner_super :: (JavaObjectClass this_) => this_ -> Screen.Screen -> IO (())
setOwner_super object_ a1 = (setOwner_impl (javaCast object_ :: ABCustomItem)) a1

setOwner_impl :: ABCustomItem -> Screen.Screen -> IO (())
setOwner_impl this owner = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ABCustomItem))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ABCustomItem)) a1 a2 a3

paintXY_impl :: ABCustomItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        pure ()


paintUnselected :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected object_ a1 a2 a3 = jmethod object_ "paintUnselected" (\() -> (paintUnselected_impl (javaCast object_ :: ABCustomItem))) () a1 a2 a3

paintUnselected_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_super object_ a1 a2 a3 = (paintUnselected_impl (javaCast object_ :: ABCustomItem)) a1 a2 a3

paintUnselected_impl :: ABCustomItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_impl this graphics x y = do
        pure ()


isFocusable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFocusable object_ = jmethod object_ "isFocusable" (\() -> (isFocusable_impl (javaCast object_ :: ABCustomItem))) ()

isFocusable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFocusable_super object_ = (isFocusable_impl (javaCast object_ :: ABCustomItem))

isFocusable_impl :: ABCustomItem -> IO (Bool)
isFocusable_impl this = do
        pure (False)


getLabel :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel object_ = jmethod object_ "getLabel" (\() -> (getLabel_impl (javaCast object_ :: ABCustomItem))) ()

getLabel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLabel_super object_ = (getLabel_impl (javaCast object_ :: ABCustomItem))

getLabel_impl :: ABCustomItem -> IO (String)
getLabel_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


setLabel :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLabel object_ a1 = jmethod object_ "setLabel" (\() -> (setLabel_impl (javaCast object_ :: ABCustomItem))) () a1

setLabel_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLabel_super object_ a1 = (setLabel_impl (javaCast object_ :: ABCustomItem)) a1

setLabel_impl :: ABCustomItem -> String -> IO (())
setLabel_impl this label = do
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: ABCustomItem))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: ABCustomItem))

getHeight_impl :: ABCustomItem -> IO (Int)
getHeight_impl this = do
        pure (0)


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: ABCustomItem))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: ABCustomItem)) a1

setHeight_impl :: ABCustomItem -> Int -> IO (())
setHeight_impl this height = do
        pure ()


getValue :: (JavaObjectClass this_) => this_ -> IO (Float)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: ABCustomItem))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getValue_super object_ = (getValue_impl (javaCast object_ :: ABCustomItem))

getValue_impl :: ABCustomItem -> IO (Float)
getValue_impl this = do
        pure (0.0)


setValue :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: ABCustomItem))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: ABCustomItem)) a1

setValue_impl :: ABCustomItem -> Float -> IO (())
setValue_impl this value = do
        pure ()


getMinimumWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumWidth object_ = jmethod object_ "getMinimumWidth" (\() -> (getMinimumWidth_impl (javaCast object_ :: ABCustomItem))) ()

getMinimumWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumWidth_super object_ = (getMinimumWidth_impl (javaCast object_ :: ABCustomItem))

getMinimumWidth_impl :: ABCustomItem -> IO (Int)
getMinimumWidth_impl this = do
        pure (0)


getMinimumHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumHeight object_ = jmethod object_ "getMinimumHeight" (\() -> (getMinimumHeight_impl (javaCast object_ :: ABCustomItem))) ()

getMinimumHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumHeight_super object_ = (getMinimumHeight_impl (javaCast object_ :: ABCustomItem))

getMinimumHeight_impl :: ABCustomItem -> IO (Int)
getMinimumHeight_impl this = do
        pure (0)


preMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
preMeasurement object_ a1 = jmethod object_ "preMeasurement" (\() -> (preMeasurement_impl (javaCast object_ :: ABCustomItem))) () a1

preMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
preMeasurement_super object_ a1 = (preMeasurement_impl (javaCast object_ :: ABCustomItem)) a1

preMeasurement_impl :: ABCustomItem -> Graphics.Graphics -> IO (())
preMeasurement_impl this graphics = do
        pure ()


