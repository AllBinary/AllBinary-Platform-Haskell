{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module AndroidNumberKeyToJ2MECanvasNumberKey where

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
import qualified KeyEvent -- android.view.KeyEvent

data AndroidNumberKeyToJ2MECanvasNumberKey = AndroidNumberKeyToJ2MECanvasNumberKey
    { header_ :: JavaHeader
    }

instance JavaNull AndroidNumberKeyToJ2MECanvasNumberKey where
    javaNull = javaNullRecord "AndroidNumberKeyToJ2MECanvasNumberKey"

instance JavaEquals AndroidNumberKeyToJ2MECanvasNumberKey where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidNumberKeyToJ2MECanvasNumberKey where
    (==) = jrecordEquals

instance JavaObjectClass AndroidNumberKeyToJ2MECanvasNumberKey where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

androidtoJavaMicroEditionKeyMap = (jnewArray (17) 0)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidNumberKeyToJ2MECanvasNumberKey
newRecord_ = do
    header_ <- newJavaHeader
    let this = AndroidNumberKeyToJ2MECanvasNumberKey header_
    jregisterLevel header_ this
    pure this

initFields_ :: AndroidNumberKeyToJ2MECanvasNumberKey -> IO ()
initFields_ this = do
    pure ()


init :: IO (())
init = do
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_0) (Canvas.kEY_NUM0)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_1) (Canvas.kEY_NUM1)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_2) (Canvas.kEY_NUM2)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_3) (Canvas.kEY_NUM3)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_4) (Canvas.kEY_NUM4)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_5) (Canvas.kEY_NUM5)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_6) (Canvas.kEY_NUM6)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_7) (Canvas.kEY_NUM7)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_8) (Canvas.kEY_NUM8)
        jsetIndex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (KeyEvent.kEYCODE_9) (Canvas.kEY_NUM9)
        pure ()

new_ :: IO AndroidNumberKeyToJ2MECanvasNumberKey
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidNumberKeyToJ2MECanvasNumberKey -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getKey :: Int -> IO (Int)
getKey key = do
    javaCatchReturn $ do
        when (key < (jlength AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap)) $ do
            let value = (jindex AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap (key))
            when (value /= 0) $ do
                javaReturn (value)
        pure (key)


