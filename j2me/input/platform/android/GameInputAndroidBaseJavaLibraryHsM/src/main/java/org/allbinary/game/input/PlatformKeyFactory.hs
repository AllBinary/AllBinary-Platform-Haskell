{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module PlatformKeyFactory where

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
import qualified ActivityFractureControllerUtilFactory -- same package or java.lang
import qualified AndroidKeyFactory -- same package or java.lang
import qualified AndroidGameKey -- same package or java.lang
import qualified Input -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data PlatformKeyFactory = PlatformKeyFactory
    { header_ :: JavaHeader
    , androidKeyFactory :: IORef (AndroidKeyFactory.AndroidKeyFactory)
    }

instance JavaNull PlatformKeyFactory where
    javaNull = javaNullRecord "PlatformKeyFactory"

instance JavaEquals PlatformKeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformKeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlatformKeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformKeyFactory
newRecord_ = do
    header_ <- newJavaHeader
    androidKeyFactory <- newIORef javaNull
    let this = PlatformKeyFactory header_ androidKeyFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    jregisterMethod header_ "isSubmission" (\() -> isSubmission_impl this)
    jregisterMethod header_ "isDelete" (\() -> isDelete_impl this)
    jregisterMethod header_ "isBackSpace" (\() -> isBackSpace_impl this)
    jregisterMethod header_ "isLeft" (\() -> isLeft_impl this)
    jregisterMethod header_ "isRight" (\() -> isRight_impl this)
    jregisterMethod header_ "isUp" (\() -> isUp_impl this)
    jregisterMethod header_ "isDown" (\() -> isDown_impl this)
    jregisterMethod header_ "isEnter" (\() -> isEnter_impl this)
    pure this

initFields_ :: PlatformKeyFactory -> IO ()
initFields_ this = do
    jset this.androidKeyFactory =<< (ActivityFractureControllerUtilFactory.getInstance)
    pure ()

new_ :: IO PlatformKeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformKeyFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlatformKeyFactory)
getInstance = do
        when ((jget PlatformKeyFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset PlatformKeyFactory.instance_ (assignedValue)
        pure ((javaCast (jget PlatformKeyFactory.instance_) :: PlatformKeyFactory))


getString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getString object_ a1 = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: PlatformKeyFactory))) () a1

getString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getString_super object_ a1 = (getString_impl (javaCast object_ :: PlatformKeyFactory)) a1

getString_impl :: PlatformKeyFactory -> Int -> IO (String)
getString_impl this keyCode = do
        (AndroidGameKey.getString keyCode)


isSubmission :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission object_ a1 = jmethod object_ "isSubmission" (\() -> (isSubmission_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isSubmission_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission_super object_ a1 = (isSubmission_impl (javaCast object_ :: PlatformKeyFactory)) a1

isSubmission_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isSubmission_impl this input = do
        (AndroidKeyFactory.isSubmission ((jget (this).androidKeyFactory)) input)


isDelete :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete object_ a1 = jmethod object_ "isDelete" (\() -> (isDelete_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isDelete_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete_super object_ a1 = (isDelete_impl (javaCast object_ :: PlatformKeyFactory)) a1

isDelete_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isDelete_impl this input = do
        (AndroidKeyFactory.isDelete ((jget (this).androidKeyFactory)) input)


isBackSpace :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace object_ a1 = jmethod object_ "isBackSpace" (\() -> (isBackSpace_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isBackSpace_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace_super object_ a1 = (isBackSpace_impl (javaCast object_ :: PlatformKeyFactory)) a1

isBackSpace_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isBackSpace_impl this input = do
        (AndroidKeyFactory.isBackSpace ((jget (this).androidKeyFactory)) input)


isLeft :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft object_ a1 = jmethod object_ "isLeft" (\() -> (isLeft_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isLeft_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft_super object_ a1 = (isLeft_impl (javaCast object_ :: PlatformKeyFactory)) a1

isLeft_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isLeft_impl this input = do
        (AndroidKeyFactory.isLeft ((jget (this).androidKeyFactory)) input)


isRight :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight object_ a1 = jmethod object_ "isRight" (\() -> (isRight_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isRight_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight_super object_ a1 = (isRight_impl (javaCast object_ :: PlatformKeyFactory)) a1

isRight_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isRight_impl this input = do
        (AndroidKeyFactory.isRight ((jget (this).androidKeyFactory)) input)


isUp :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp object_ a1 = jmethod object_ "isUp" (\() -> (isUp_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isUp_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp_super object_ a1 = (isUp_impl (javaCast object_ :: PlatformKeyFactory)) a1

isUp_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isUp_impl this input = do
        (AndroidKeyFactory.isUp ((jget (this).androidKeyFactory)) input)


isDown :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown object_ a1 = jmethod object_ "isDown" (\() -> (isDown_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isDown_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown_super object_ a1 = (isDown_impl (javaCast object_ :: PlatformKeyFactory)) a1

isDown_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isDown_impl this input = do
        (AndroidKeyFactory.isDown ((jget (this).androidKeyFactory)) input)


isEnter :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter object_ a1 = jmethod object_ "isEnter" (\() -> (isEnter_impl (javaCast object_ :: PlatformKeyFactory))) () a1

isEnter_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter_super object_ a1 = (isEnter_impl (javaCast object_ :: PlatformKeyFactory)) a1

isEnter_impl :: PlatformKeyFactory -> Input.Input -> IO (Bool)
isEnter_impl this input = do
        (AndroidKeyFactory.isEnter ((jget (this).androidKeyFactory)) input)


