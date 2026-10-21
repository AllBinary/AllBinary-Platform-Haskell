{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.graphics.threed
module SWTJOGLProcessor where

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
import qualified RatioProcessor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified MIDlet -- javax.microedition.midlet.MIDlet
import qualified Runnable

-- implements Runnable
data SWTJOGLProcessor = SWTJOGLProcessor
    { header_ :: JavaHeader
    }

instance JavaNull SWTJOGLProcessor where
    javaNull = javaNullRecord "SWTJOGLProcessor"

instance JavaEquals SWTJOGLProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SWTJOGLProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SWTJOGLProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SWTJOGLProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = SWTJOGLProcessor header_
    jregisterLevel header_ this
    Runnable.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isHolderCreated" (\() -> isHolderCreated_impl this)
    jregisterMethod header_ "setRenderer" (\() -> setRenderer_impl this)
    jregisterMethod header_ "isJOGL" (\() -> isJOGL_impl this)
    jregisterMethod header_ "createSurface" (\() -> createSurface_impl this)
    jregisterMethod header_ "onSurfaceCreated" (\() -> onSurfaceCreated_impl this)
    jregisterMethod header_ "onSurfaceChangedForEvent" (\() -> onSurfaceChangedForEvent_impl this)
    jregisterMethod header_ "onSurfaceChanged" (\() -> onSurfaceChanged_impl this)
    jregisterMethod header_ "onSurfaceChangedWH" (\() -> onSurfaceChangedWH_impl this)
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "addListeners" (\() -> addListeners_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "setCustom" (\() -> setCustom_impl this)
    jregisterMethod header_ "setRatioProcessor" (\() -> setRatioProcessor_impl this)
    jregisterMethod header_ "isPortraitRatioProcessor" (\() -> isPortraitRatioProcessor_impl this)
    jregisterMethod header_ "charWidth" (\() -> charWidth_impl this)
    jregisterMethod header_ "charsWidth" (\() -> charsWidth_impl this)
    jregisterMethod header_ "stringWidth" (\() -> stringWidth_impl this)
    jregisterMethod header_ "substringWidth" (\() -> substringWidth_impl this)
    pure this

initFields_ :: SWTJOGLProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SWTJOGLProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SWTJOGLProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SWTJOGLProcessor)
getInstance = do
        pure (SWTJOGLProcessor.instance_)


init :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: SWTJOGLProcessor))) () (jtoObject a1) (jtoObject a2)

init_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: SWTJOGLProcessor)) (jtoObject a1) (jtoObject a2)

init_impl :: SWTJOGLProcessor -> JavaObject -> JavaObject -> IO (())
init_impl this displayObject_ compObject_ = do
        let display = jtoObject displayObject_
        let comp = jtoObject compObject_
        pure ()


isHolderCreated :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHolderCreated object_ = jmethod object_ "isHolderCreated" (\() -> (isHolderCreated_impl (javaCast object_ :: SWTJOGLProcessor))) ()

isHolderCreated_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHolderCreated_super object_ = (isHolderCreated_impl (javaCast object_ :: SWTJOGLProcessor))

isHolderCreated_impl :: SWTJOGLProcessor -> IO (Bool)
isHolderCreated_impl this = do
        pure (True)


setRenderer :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setRenderer object_ a1 = jmethod object_ "setRenderer" (\() -> (setRenderer_impl (javaCast object_ :: SWTJOGLProcessor))) () (jtoObject a1)

setRenderer_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setRenderer_super object_ a1 = (setRenderer_impl (javaCast object_ :: SWTJOGLProcessor)) (jtoObject a1)

setRenderer_impl :: SWTJOGLProcessor -> JavaObject -> IO (())
setRenderer_impl this rendererObject_ = do
        let renderer = jtoObject rendererObject_
        pure ()


isJOGL :: (JavaObjectClass this_) => this_ -> IO (Bool)
isJOGL object_ = jmethod object_ "isJOGL" (\() -> (isJOGL_impl (javaCast object_ :: SWTJOGLProcessor))) ()

isJOGL_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isJOGL_super object_ = (isJOGL_impl (javaCast object_ :: SWTJOGLProcessor))

isJOGL_impl :: SWTJOGLProcessor -> IO (Bool)
isJOGL_impl this = do
        pure (False)


createSurface :: (JavaObjectClass this_) => this_ -> IO (())
createSurface object_ = jmethod object_ "createSurface" (\() -> (createSurface_impl (javaCast object_ :: SWTJOGLProcessor))) ()

createSurface_super :: (JavaObjectClass this_) => this_ -> IO (())
createSurface_super object_ = (createSurface_impl (javaCast object_ :: SWTJOGLProcessor))

createSurface_impl :: SWTJOGLProcessor -> IO (())
createSurface_impl this = do
        pure ()


onSurfaceCreated :: (JavaObjectClass this_) => this_ -> IO (())
onSurfaceCreated object_ = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: SWTJOGLProcessor))) ()

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> IO (())
onSurfaceCreated_super object_ = (onSurfaceCreated_impl (javaCast object_ :: SWTJOGLProcessor))

onSurfaceCreated_impl :: SWTJOGLProcessor -> IO (())
onSurfaceCreated_impl this = do
        pure ()


onSurfaceChangedForEvent :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSurfaceChangedForEvent object_ a1 = jmethod object_ "onSurfaceChangedForEvent" (\() -> (onSurfaceChangedForEvent_impl (javaCast object_ :: SWTJOGLProcessor))) () (jtoObject a1)

onSurfaceChangedForEvent_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onSurfaceChangedForEvent_super object_ a1 = (onSurfaceChangedForEvent_impl (javaCast object_ :: SWTJOGLProcessor)) (jtoObject a1)

onSurfaceChangedForEvent_impl :: SWTJOGLProcessor -> JavaObject -> IO (())
onSurfaceChangedForEvent_impl this eventObject_ = do
        let event = jtoObject eventObject_
        pure ()


onSurfaceChanged :: (JavaObjectClass this_) => this_ -> IO (())
onSurfaceChanged object_ = jmethod object_ "onSurfaceChanged" (\() -> (onSurfaceChanged_impl (javaCast object_ :: SWTJOGLProcessor))) ()

onSurfaceChanged_super :: (JavaObjectClass this_) => this_ -> IO (())
onSurfaceChanged_super object_ = (onSurfaceChanged_impl (javaCast object_ :: SWTJOGLProcessor))

onSurfaceChanged_impl :: SWTJOGLProcessor -> IO (())
onSurfaceChanged_impl this = do
        pure ()


onSurfaceChangedWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
onSurfaceChangedWH object_ a1 a2 = jmethod object_ "onSurfaceChangedWH" (\() -> (onSurfaceChangedWH_impl (javaCast object_ :: SWTJOGLProcessor))) () a1 a2

onSurfaceChangedWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
onSurfaceChangedWH_super object_ a1 a2 = (onSurfaceChangedWH_impl (javaCast object_ :: SWTJOGLProcessor)) a1 a2

onSurfaceChangedWH_impl :: SWTJOGLProcessor -> Int -> Int -> IO (())
onSurfaceChangedWH_impl this width height = do
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> IO (())
addListener object_ = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: SWTJOGLProcessor))) ()

addListener_super :: (JavaObjectClass this_) => this_ -> IO (())
addListener_super object_ = (addListener_impl (javaCast object_ :: SWTJOGLProcessor))

addListener_impl :: SWTJOGLProcessor -> IO (())
addListener_impl this = do
        pure ()


addListeners :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
addListeners object_ a1 = jmethod object_ "addListeners" (\() -> (addListeners_impl (javaCast object_ :: SWTJOGLProcessor))) () a1

addListeners_super :: (JavaObjectClass this_) => this_ -> MIDlet.MIDlet -> IO (())
addListeners_super object_ a1 = (addListeners_impl (javaCast object_ :: SWTJOGLProcessor)) a1

addListeners_impl :: SWTJOGLProcessor -> MIDlet.MIDlet -> IO (())
addListeners_impl this midlet = do
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SWTJOGLProcessor))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SWTJOGLProcessor))

run_impl :: SWTJOGLProcessor -> IO (())
run_impl this = do
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: SWTJOGLProcessor))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: SWTJOGLProcessor))

clear_impl :: SWTJOGLProcessor -> IO (())
clear_impl this = do
        pure ()


setCustom :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
setCustom object_ a1 a2 a3 = jmethod object_ "setCustom" (\() -> (setCustom_impl (javaCast object_ :: SWTJOGLProcessor))) () a1 a2 a3

setCustom_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
setCustom_super object_ a1 a2 a3 = (setCustom_impl (javaCast object_ :: SWTJOGLProcessor)) a1 a2 a3

setCustom_impl :: SWTJOGLProcessor -> Int -> Int -> Float -> IO (())
setCustom_impl this width height ratio = do
        pure ()


setRatioProcessor :: (JavaObjectClass this_) => this_ -> RatioProcessor.RatioProcessor -> IO (())
setRatioProcessor object_ a1 = jmethod object_ "setRatioProcessor" (\() -> (setRatioProcessor_impl (javaCast object_ :: SWTJOGLProcessor))) () a1

setRatioProcessor_super :: (JavaObjectClass this_) => this_ -> RatioProcessor.RatioProcessor -> IO (())
setRatioProcessor_super object_ a1 = (setRatioProcessor_impl (javaCast object_ :: SWTJOGLProcessor)) a1

setRatioProcessor_impl :: SWTJOGLProcessor -> RatioProcessor.RatioProcessor -> IO (())
setRatioProcessor_impl this ratioProcessor = do
        pure ()


isPortraitRatioProcessor :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPortraitRatioProcessor object_ = jmethod object_ "isPortraitRatioProcessor" (\() -> (isPortraitRatioProcessor_impl (javaCast object_ :: SWTJOGLProcessor))) ()

isPortraitRatioProcessor_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPortraitRatioProcessor_super object_ = (isPortraitRatioProcessor_impl (javaCast object_ :: SWTJOGLProcessor))

isPortraitRatioProcessor_impl :: SWTJOGLProcessor -> IO (Bool)
isPortraitRatioProcessor_impl this = do
        pure (True)


charWidth :: (JavaObjectClass this_) => this_ -> Font.Font -> Char -> IO (Int)
charWidth object_ a1 a2 = jmethod object_ "charWidth" (\() -> (charWidth_impl (javaCast object_ :: SWTJOGLProcessor))) () a1 a2

charWidth_super :: (JavaObjectClass this_) => this_ -> Font.Font -> Char -> IO (Int)
charWidth_super object_ a1 a2 = (charWidth_impl (javaCast object_ :: SWTJOGLProcessor)) a1 a2

charWidth_impl :: SWTJOGLProcessor -> Font.Font -> Char -> IO (Int)
charWidth_impl this font ch = do
        javaThrow ((JavaException "RuntimeException" ""))


charsWidth :: (JavaObjectClass this_) => this_ -> Font.Font -> JavaArray (Char) -> Int -> Int -> IO (Int)
charsWidth object_ a1 a2 a3 a4 = jmethod object_ "charsWidth" (\() -> (charsWidth_impl (javaCast object_ :: SWTJOGLProcessor))) () a1 a2 a3 a4

charsWidth_super :: (JavaObjectClass this_) => this_ -> Font.Font -> JavaArray (Char) -> Int -> Int -> IO (Int)
charsWidth_super object_ a1 a2 a3 a4 = (charsWidth_impl (javaCast object_ :: SWTJOGLProcessor)) a1 a2 a3 a4

charsWidth_impl :: SWTJOGLProcessor -> Font.Font -> JavaArray (Char) -> Int -> Int -> IO (Int)
charsWidth_impl this font ch offset length = do
        javaThrow ((JavaException "RuntimeException" ""))


stringWidth :: (JavaObjectClass this_) => this_ -> Font.Font -> String -> IO (Int)
stringWidth object_ a1 a2 = jmethod object_ "stringWidth" (\() -> (stringWidth_impl (javaCast object_ :: SWTJOGLProcessor))) () a1 a2

stringWidth_super :: (JavaObjectClass this_) => this_ -> Font.Font -> String -> IO (Int)
stringWidth_super object_ a1 a2 = (stringWidth_impl (javaCast object_ :: SWTJOGLProcessor)) a1 a2

stringWidth_impl :: SWTJOGLProcessor -> Font.Font -> String -> IO (Int)
stringWidth_impl this font str = do
        javaThrow ((JavaException "RuntimeException" ""))


substringWidth :: (JavaObjectClass this_) => this_ -> Font.Font -> String -> Int -> Int -> IO (Int)
substringWidth object_ a1 a2 a3 a4 = jmethod object_ "substringWidth" (\() -> (substringWidth_impl (javaCast object_ :: SWTJOGLProcessor))) () a1 a2 a3 a4

substringWidth_super :: (JavaObjectClass this_) => this_ -> Font.Font -> String -> Int -> Int -> IO (Int)
substringWidth_super object_ a1 a2 a3 a4 = (substringWidth_impl (javaCast object_ :: SWTJOGLProcessor)) a1 a2 a3 a4

substringWidth_impl :: SWTJOGLProcessor -> Font.Font -> String -> Int -> Int -> IO (Int)
substringWidth_impl this font str offset len = do
        javaThrow ((JavaException "RuntimeException" ""))


