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
-- package javax.microedition.lcdui
module ChoiceGroupImageFactory where

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
import qualified Image -- same package or java.lang

data ChoiceGroupImageFactory = ChoiceGroupImageFactory
    { header_ :: JavaHeader
    , multiOff :: IORef (JavaArray (Int8))
    , multiOn :: IORef (JavaArray (Int8))
    , radioOff :: IORef (JavaArray (Int8))
    , radioOn :: IORef (JavaArray (Int8))
    , imgMultiOffO :: IORef (Image.Image)
    , imgMultiOnO :: IORef (Image.Image)
    , imgRadioOffO :: IORef (Image.Image)
    , imgRadioOnO :: IORef (Image.Image)
    , imgMultiOff :: IORef (Image.Image)
    , imgMultiOn :: IORef (Image.Image)
    , imgRadioOff :: IORef (Image.Image)
    , imgRadioOn :: IORef (Image.Image)
    , imageArray :: IORef (JavaArray (Image.Image))
    }

instance JavaNull ChoiceGroupImageFactory where
    javaNull = javaNullRecord "ChoiceGroupImageFactory"

instance JavaEquals ChoiceGroupImageFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ChoiceGroupImageFactory where
    (==) = jrecordEquals

instance JavaObjectClass ChoiceGroupImageFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ChoiceGroupImageFactory
newRecord_ = do
    header_ <- newJavaHeader
    multiOff <- newIORef javaNull
    multiOn <- newIORef javaNull
    radioOff <- newIORef javaNull
    radioOn <- newIORef javaNull
    imgMultiOffO <- newIORef javaNull
    imgMultiOnO <- newIORef javaNull
    imgRadioOffO <- newIORef javaNull
    imgRadioOnO <- newIORef javaNull
    imgMultiOff <- newIORef javaNull
    imgMultiOn <- newIORef javaNull
    imgRadioOff <- newIORef javaNull
    imgRadioOn <- newIORef javaNull
    imageArray <- newIORef javaNull
    let this = ChoiceGroupImageFactory header_ multiOff multiOn radioOff radioOn imgMultiOffO imgMultiOnO imgRadioOffO imgRadioOnO imgMultiOff imgMultiOn imgRadioOff imgRadioOn imageArray
    jregisterLevel header_ this
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: ChoiceGroupImageFactory -> IO ()
initFields_ this = do
    jset this.multiOff ((jarrayFromList [(Prelude.fromIntegral ((Prelude.negate 119) :: Int)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, (Prelude.fromIntegral ((Prelude.negate 12) :: Int)), (Prelude.fromIntegral ((Prelude.negate 117) :: Int)), 0, 0, 0, 6, 80, 76, 84, 69, (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 57) :: Int)), 75, (Prelude.fromIntegral ((Prelude.negate 33) :: Int)), (Prelude.fromIntegral ((Prelude.negate 8) :: Int)), 0, 0, 0, 30, 73, 68, 65, 84, 120, (Prelude.fromIntegral ((Prelude.negate 38) :: Int)), 99, 96, 96, 96, 96, 12, 101, (Prelude.fromIntegral ((Prelude.negate 8) :: Int)), (Prelude.fromIntegral ((Prelude.negate 51) :: Int)), (Prelude.fromIntegral ((Prelude.negate 32) :: Int)), (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), 32, (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), (Prelude.fromIntegral ((Prelude.negate 60) :: Int)), (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), (Prelude.fromIntegral ((Prelude.negate 128) :: Int)), 11, 51, (Prelude.fromIntegral ((Prelude.negate 122) :: Int)), 50, (Prelude.fromIntegral ((Prelude.negate 4) :: Int)), 6, 0, 63, 116, 3, 1, 53, (Prelude.fromIntegral ((Prelude.negate 108) :: Int)), 39, (Prelude.fromIntegral ((Prelude.negate 26) :: Int)), 0, 0, 0, 0, 73, 69, 78, 68, (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), 66, 96, (Prelude.fromIntegral ((Prelude.negate 126) :: Int))]))
    jset this.multiOn ((jarrayFromList [(Prelude.fromIntegral ((Prelude.negate 119) :: Int)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, (Prelude.fromIntegral ((Prelude.negate 12) :: Int)), (Prelude.fromIntegral ((Prelude.negate 117) :: Int)), 0, 0, 0, 12, 80, 76, 84, 69, (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), 106, 106, 106, 2, 2, 2, 106, (Prelude.fromIntegral ((Prelude.negate 103) :: Int)), 14, (Prelude.fromIntegral ((Prelude.negate 47) :: Int)), 0, 0, 0, 53, 73, 68, 65, 84, 120, (Prelude.fromIntegral ((Prelude.negate 38) :: Int)), 99, 96, 96, 124, (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), (Prelude.fromIntegral ((Prelude.negate 16) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 77) :: Int)), 3, (Prelude.fromIntegral ((Prelude.negate 45) :: Int)), 65, (Prelude.fromIntegral ((Prelude.negate 111) :: Int)), 15, 76, 12, 108, 12, 76, 12, (Prelude.fromIntegral ((Prelude.negate 4) :: Int)), 12, 76, 12, 18, 12, 76, (Prelude.fromIntegral ((Prelude.negate 68) :: Int)), 127, 24, (Prelude.fromIntegral ((Prelude.negate 104) :: Int)), 126, 45, 96, 96, (Prelude.fromIntegral ((Prelude.negate 7) :: Int)), (Prelude.fromIntegral ((Prelude.negate 11) :: Int)), (Prelude.fromIntegral ((Prelude.negate 109) :: Int)), (Prelude.fromIntegral ((Prelude.negate 127) :: Int)), (Prelude.fromIntegral ((Prelude.negate 23) :: Int)), (Prelude.fromIntegral ((Prelude.negate 65) :: Int)), 3, 3, (Prelude.fromIntegral ((Prelude.negate 29) :: Int)), 127, (Prelude.fromIntegral ((Prelude.negate 122) :: Int)), (Prelude.fromIntegral ((Prelude.negate 113) :: Int)), 0, 5, 37, 12, (Prelude.fromIntegral ((Prelude.negate 34) :: Int)), 1, (Prelude.fromIntegral ((Prelude.negate 99) :: Int)), (Prelude.fromIntegral ((Prelude.negate 83) :: Int)), 100, 0, 0, 0, 0, 73, 69, 78, 68, (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), 66, 96, (Prelude.fromIntegral ((Prelude.negate 126) :: Int))]))
    jset this.radioOff ((jarrayFromList [(Prelude.fromIntegral ((Prelude.negate 119) :: Int)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, (Prelude.fromIntegral ((Prelude.negate 44) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 97) :: Int)), (Prelude.fromIntegral ((Prelude.negate 75) :: Int)), 0, 0, 0, 9, 80, 76, 84, 69, (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), 106, 106, 106, (Prelude.fromIntegral ((Prelude.negate 44) :: Int)), 13, (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 24) :: Int)), 0, 0, 0, 42, 73, 68, 65, 84, 120, (Prelude.fromIntegral ((Prelude.negate 38) :: Int)), 99, 96, 90, (Prelude.fromIntegral ((Prelude.negate 59) :: Int)), (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), 32, (Prelude.fromIntegral ((Prelude.negate 63) :: Int)), 48, (Prelude.fromIntegral ((Prelude.negate 127) :: Int)), 65, (Prelude.fromIntegral ((Prelude.negate 127) :: Int)), 65, (Prelude.fromIntegral ((Prelude.negate 127) :: Int)), 41, (Prelude.fromIntegral ((Prelude.negate 127) :: Int)), (Prelude.fromIntegral ((Prelude.negate 31) :: Int)), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, (Prelude.fromIntegral ((Prelude.negate 6) :: Int)), (Prelude.fromIntegral ((Prelude.negate 63) :: Int)), 80, (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), (Prelude.fromIntegral ((Prelude.negate 64) :: Int)), (Prelude.fromIntegral ((Prelude.negate 76) :: Int)), (Prelude.fromIntegral ((Prelude.negate 118) :: Int)), 1, 0, 113, 24, 5, 61, 73, (Prelude.fromIntegral ((Prelude.negate 68) :: Int)), (Prelude.fromIntegral ((Prelude.negate 100) :: Int)), 98, 0, 0, 0, 0, 73, 69, 78, 68, (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), 66, 96, (Prelude.fromIntegral ((Prelude.negate 126) :: Int))]))
    jset this.radioOn ((jarrayFromList [(Prelude.fromIntegral ((Prelude.negate 119) :: Int)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, (Prelude.fromIntegral ((Prelude.negate 44) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 97) :: Int)), (Prelude.fromIntegral ((Prelude.negate 75) :: Int)), 0, 0, 0, 12, 80, 76, 84, 69, (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 1) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), (Prelude.fromIntegral ((Prelude.negate 69) :: Int)), 106, 106, 106, 2, 2, 2, 106, (Prelude.fromIntegral ((Prelude.negate 103) :: Int)), 14, (Prelude.fromIntegral ((Prelude.negate 47) :: Int)), 0, 0, 0, 50, 73, 68, 65, 84, 120, (Prelude.fromIntegral ((Prelude.negate 38) :: Int)), 5, (Prelude.fromIntegral ((Prelude.negate 63) :: Int)), 65, 13, 0, 32, 12, 4, (Prelude.fromIntegral ((Prelude.negate 63) :: Int)), (Prelude.fromIntegral ((Prelude.negate 19) :: Int)), (Prelude.fromIntegral ((Prelude.negate 11) :: Int)), (Prelude.fromIntegral ((Prelude.negate 117) :: Int)), 1, 18, 68, (Prelude.fromIntegral ((Prelude.negate 100) :: Int)), 10, 52, 19, 94, 72, 64, 17, 101, (Prelude.fromIntegral ((Prelude.negate 122) :: Int)), 44, (Prelude.fromIntegral ((Prelude.negate 44) :: Int)), (Prelude.fromIntegral ((Prelude.negate 29) :: Int)), 98, (Prelude.fromIntegral ((Prelude.negate 52) :: Int)), 89, 77, (Prelude.fromIntegral ((Prelude.negate 102) :: Int)), 40, 2, 85, (Prelude.fromIntegral ((Prelude.negate 95) :: Int)), (Prelude.fromIntegral ((Prelude.negate 73) :: Int)), (Prelude.fromIntegral ((Prelude.negate 63) :: Int)), (Prelude.fromIntegral ((Prelude.negate 104) :: Int)), (Prelude.fromIntegral ((Prelude.negate 63) :: Int)), 37, (Prelude.fromIntegral ((Prelude.negate 117) :: Int)), 15, (Prelude.fromIntegral ((Prelude.negate 40) :: Int)), 119, 10, 41, 78, 26, (Prelude.fromIntegral ((Prelude.negate 79) :: Int)), 59, 0, 0, 0, 0, 73, 69, 78, 68, (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), 66, 96, (Prelude.fromIntegral ((Prelude.negate 126) :: Int))]))
    jset this.imgMultiOffO =<< (Image.createImage (jget (this).multiOff) 0 (jlength (jget (this).multiOff)))
    jset this.imgMultiOnO =<< (Image.createImage (jget (this).multiOn) 0 (jlength (jget (this).multiOn)))
    jset this.imgRadioOffO =<< (Image.createImage (jget (this).radioOff) 0 (jlength (jget (this).radioOff)))
    jset this.imgRadioOnO =<< (Image.createImage (jget (this).radioOn) 0 (jlength (jget (this).radioOn)))
    jset this.imgMultiOff ((jget (this).imgMultiOffO))
    jset this.imgMultiOn ((jget (this).imgMultiOnO))
    jset this.imgRadioOff ((jget (this).imgRadioOffO))
    jset this.imgRadioOn ((jget (this).imgRadioOnO))
    jset this.imageArray ((jarrayFromList [(jget (this).imgMultiOff), (jget (this).imgMultiOn), (jget (this).imgRadioOff), (jget (this).imgRadioOn)]))
    pure ()

new_ :: IO ChoiceGroupImageFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ChoiceGroupImageFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ChoiceGroupImageFactory)
getInstance = do
        pure (ChoiceGroupImageFactory.instance_)


getImageArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Image.Image))
getImageArray object_ = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ChoiceGroupImageFactory))) ()

getImageArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Image.Image))
getImageArray_super object_ = (getImageArray_impl (javaCast object_ :: ChoiceGroupImageFactory))

getImageArray_impl :: ChoiceGroupImageFactory -> IO (JavaArray (Image.Image))
getImageArray_impl this = do
        pure ((jget (this).imageArray))


init :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ChoiceGroupImageFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: ChoiceGroupImageFactory)) a1

init_impl :: ChoiceGroupImageFactory -> JavaArray (Image.Image) -> IO (())
init_impl this imageArray = do
        jset (this).imgMultiOff ((jindex imageArray (0)))
        jsetIndex ((jget (this).imageArray)) (0) ((jget (this).imgMultiOff))
        jset (this).imgMultiOn ((jindex imageArray (1)))
        jsetIndex ((jget (this).imageArray)) (1) ((jget (this).imgMultiOn))
        jset (this).imgRadioOff ((jindex imageArray (2)))
        jsetIndex ((jget (this).imageArray)) (2) ((jget (this).imgRadioOff))
        jset (this).imgRadioOn ((jindex imageArray (3)))
        jsetIndex ((jget (this).imageArray)) (3) ((jget (this).imgRadioOn))
        pure ()


