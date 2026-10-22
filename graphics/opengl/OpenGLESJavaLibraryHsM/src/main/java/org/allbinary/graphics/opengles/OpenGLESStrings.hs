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
-- package org.allbinary.graphics.opengles
module OpenGLESStrings where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics

data OpenGLESStrings = OpenGLESStrings
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLESStrings where
    javaNull = javaNullRecord "OpenGLESStrings"

instance JavaEquals OpenGLESStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESStrings where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESStrings
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLESStrings header_
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "initFont" (\() -> initFont_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "drawChar" (\() -> drawChar_impl this)
    jregisterMethod header_ "drawChars" (\() -> drawChars_impl this)
    jregisterMethod header_ "drawString" (\() -> drawString_impl this)
    jregisterMethod header_ "drawSubstring" (\() -> drawSubstring_impl this)
    jregisterMethod header_ "charWidth" (\() -> charWidth_impl this)
    jregisterMethod header_ "charsWidth" (\() -> charsWidth_impl this)
    jregisterMethod header_ "stringWidth" (\() -> stringWidth_impl this)
    jregisterMethod header_ "stringWidth_3" (\() -> stringWidth_3_impl this)
    pure this

initFields_ :: OpenGLESStrings -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESStrings -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESStrings))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESStrings)) a1

set_impl :: OpenGLESStrings -> GL10.GL10 -> IO (())
set_impl this gl = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


initFont :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> IO (())
initFont object_ a1 a2 a3 = jmethod object_ "initFont" (\() -> (initFont_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3

initFont_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> IO (())
initFont_super object_ a1 a2 a3 = (initFont_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3

initFont_impl :: OpenGLESStrings -> GL10.GL10 -> Int -> Int -> IO (())
initFont_impl this gl width height = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> IO (())
update object_ a1 a2 a3 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3

update_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> IO (())
update_super object_ a1 a2 a3 = (update_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3

update_impl :: OpenGLESStrings -> GL10.GL10 -> Int -> Int -> IO (())
update_impl this gl width height = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


drawChar :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> Char -> Int -> Int -> Int -> IO (())
drawChar object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawChar" (\() -> (drawChar_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3 a4 a5 a6

drawChar_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> Char -> Int -> Int -> Int -> IO (())
drawChar_super object_ a1 a2 a3 a4 a5 a6 = (drawChar_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3 a4 a5 a6

drawChar_impl :: OpenGLESStrings -> GL10.GL10 -> Graphics.Graphics -> Char -> Int -> Int -> Int -> IO (())
drawChar_impl this gl graphics character x y anchor = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


drawChars :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> Int -> Int -> Int -> IO (())
drawChars object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "drawChars" (\() -> (drawChars_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3 a4 a5 a6 a7 a8

drawChars_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> Int -> Int -> Int -> IO (())
drawChars_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (drawChars_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3 a4 a5 a6 a7 a8

drawChars_impl :: OpenGLESStrings -> GL10.GL10 -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> Int -> Int -> Int -> IO (())
drawChars_impl this gl graphics data_ offset length x y anchor = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


drawString :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> String -> Int -> Int -> Int -> IO (())
drawString object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawString" (\() -> (drawString_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3 a4 a5 a6

drawString_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> String -> Int -> Int -> Int -> IO (())
drawString_super object_ a1 a2 a3 a4 a5 a6 = (drawString_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3 a4 a5 a6

drawString_impl :: OpenGLESStrings -> GL10.GL10 -> Graphics.Graphics -> String -> Int -> Int -> Int -> IO (())
drawString_impl this gl graphics string x y anchor = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


drawSubstring :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> Int -> IO (())
drawSubstring object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "drawSubstring" (\() -> (drawSubstring_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3 a4 a5 a6 a7 a8

drawSubstring_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> Int -> IO (())
drawSubstring_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (drawSubstring_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3 a4 a5 a6 a7 a8

drawSubstring_impl :: OpenGLESStrings -> GL10.GL10 -> Graphics.Graphics -> String -> Int -> Int -> Int -> Int -> Int -> IO (())
drawSubstring_impl this gl graphics string offset len x y anchor = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


charWidth :: (JavaObjectClass this_) => this_ -> Char -> IO (Int)
charWidth object_ a1 = jmethod object_ "charWidth" (\() -> (charWidth_impl (javaCast object_ :: OpenGLESStrings))) () a1

charWidth_super :: (JavaObjectClass this_) => this_ -> Char -> IO (Int)
charWidth_super object_ a1 = (charWidth_impl (javaCast object_ :: OpenGLESStrings)) a1

charWidth_impl :: OpenGLESStrings -> Char -> IO (Int)
charWidth_impl this ch = do
        javaThrow ((JavaException "RuntimeException" ""))


charsWidth :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (Int)
charsWidth object_ a1 a2 a3 = jmethod object_ "charsWidth" (\() -> (charsWidth_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3

charsWidth_super :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> Int -> IO (Int)
charsWidth_super object_ a1 a2 a3 = (charsWidth_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3

charsWidth_impl :: OpenGLESStrings -> JavaArray (Char) -> Int -> Int -> IO (Int)
charsWidth_impl this ch offset length = do
        javaThrow ((JavaException "RuntimeException" ""))


stringWidth :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
stringWidth object_ a1 = jmethod object_ "stringWidth" (\() -> (stringWidth_impl (javaCast object_ :: OpenGLESStrings))) () a1

stringWidth_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
stringWidth_super object_ a1 = (stringWidth_impl (javaCast object_ :: OpenGLESStrings)) a1

stringWidth_impl :: OpenGLESStrings -> String -> IO (Int)
stringWidth_impl this string = do
        javaThrow ((JavaException "RuntimeException" ""))


stringWidth_3 :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Int)
stringWidth_3 object_ a1 a2 a3 = jmethod object_ "stringWidth_3" (\() -> (stringWidth_3_impl (javaCast object_ :: OpenGLESStrings))) () a1 a2 a3

stringWidth_3_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Int)
stringWidth_3_super object_ a1 a2 a3 = (stringWidth_3_impl (javaCast object_ :: OpenGLESStrings)) a1 a2 a3

stringWidth_3_impl :: OpenGLESStrings -> String -> Int -> Int -> IO (Int)
stringWidth_3_impl this string offset len = do
        javaThrow ((JavaException "RuntimeException" ""))


