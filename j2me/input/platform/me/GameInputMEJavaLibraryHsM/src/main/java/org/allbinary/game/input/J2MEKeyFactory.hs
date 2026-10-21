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
-- package org.allbinary.game.input
module J2MEKeyFactory where

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
import qualified GameKeyFactory -- same package or java.lang
import qualified GameKey -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified Input -- same package or java.lang

data J2MEKeyFactory = J2MEKeyFactory
    { header_ :: JavaHeader
    , gameKeyFactory :: IORef (GameKeyFactory.GameKeyFactory)
    }

instance JavaNull J2MEKeyFactory where
    javaNull = javaNullRecord "J2MEKeyFactory"

instance JavaEquals J2MEKeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq J2MEKeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass J2MEKeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO J2MEKeyFactory
newRecord_ = do
    header_ <- newJavaHeader
    gameKeyFactory <- newIORef javaNull
    let this = J2MEKeyFactory header_ gameKeyFactory
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isSubmission" (\() -> isSubmission_impl this)
    jregisterMethod header_ "isDelete" (\() -> isDelete_impl this)
    jregisterMethod header_ "isBackSpace" (\() -> isBackSpace_impl this)
    jregisterMethod header_ "isUp" (\() -> isUp_impl this)
    jregisterMethod header_ "isDown" (\() -> isDown_impl this)
    jregisterMethod header_ "isLeft" (\() -> isLeft_impl this)
    jregisterMethod header_ "isRight" (\() -> isRight_impl this)
    jregisterMethod header_ "isEnter" (\() -> isEnter_impl this)
    pure this

initFields_ :: J2MEKeyFactory -> IO ()
initFields_ this = do
    jset this.gameKeyFactory =<< (GameKeyFactory.getInstance)
    pure ()


getInstance :: IO (J2MEKeyFactory)
getInstance = do
        pure (J2MEKeyFactory.instance_)

new_ :: IO J2MEKeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: J2MEKeyFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: J2MEKeyFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: J2MEKeyFactory))

init_impl :: J2MEKeyFactory -> IO (())
init_impl this = do
        let gameKeyArray = (jarrayFromList [(jget ((jget (this).gameKeyFactory)).dOWN), (jget ((jget (this).gameKeyFactory)).fIRE), (jget ((jget (this).gameKeyFactory)).gAME_A), (jget ((jget (this).gameKeyFactory)).gAME_B), (jget ((jget (this).gameKeyFactory)).gAME_C), (jget ((jget (this).gameKeyFactory)).gAME_D), (jget ((jget (this).gameKeyFactory)).kEY_NUM0), (jget ((jget (this).gameKeyFactory)).kEY_NUM1), (jget ((jget (this).gameKeyFactory)).kEY_NUM2), (jget ((jget (this).gameKeyFactory)).kEY_NUM3), (jget ((jget (this).gameKeyFactory)).kEY_NUM4), (jget ((jget (this).gameKeyFactory)).kEY_NUM5), (jget ((jget (this).gameKeyFactory)).kEY_NUM6), (jget ((jget (this).gameKeyFactory)).kEY_NUM7), (jget ((jget (this).gameKeyFactory)).kEY_NUM8), (jget ((jget (this).gameKeyFactory)).kEY_NUM9), (jget ((jget (this).gameKeyFactory)).kEY_POUND), (jget ((jget (this).gameKeyFactory)).kEY_STAR), (jget ((jget (this).gameKeyFactory)).lEFT), (jget ((jget (this).gameKeyFactory)).lEVEL_DOWN), (jget ((jget (this).gameKeyFactory)).lEVEL_UP), (jget ((jget (this).gameKeyFactory)).nONE), (jget ((jget (this).gameKeyFactory)).rIGHT), (jget ((jget (this).gameKeyFactory)).uP)])
        inputFactory <- (InputFactory.getInstance)
        index <- newIORef ((jlength gameKeyArray))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (InputFactory.add inputFactory (jio (getId ((jindex gameKeyArray ((jget index)))))) (jindex gameKeyArray ((jget index))))
        pure ()


isSubmission :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission object_ a1 = jmethod object_ "isSubmission" (\() -> (isSubmission_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isSubmission_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission_super object_ a1 = (isSubmission_impl (javaCast object_ :: J2MEKeyFactory)) a1

isSubmission_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isSubmission_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).fIRE)) $ do
            javaReturn (True)
        pure (False)


isDelete :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete object_ a1 = jmethod object_ "isDelete" (\() -> (isDelete_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isDelete_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete_super object_ a1 = (isDelete_impl (javaCast object_ :: J2MEKeyFactory)) a1

isDelete_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isDelete_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).gAME_D)) $ do
            javaReturn (True)
        pure (False)


isBackSpace :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace object_ a1 = jmethod object_ "isBackSpace" (\() -> (isBackSpace_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isBackSpace_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace_super object_ a1 = (isBackSpace_impl (javaCast object_ :: J2MEKeyFactory)) a1

isBackSpace_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isBackSpace_impl this input = do
        pure (False)


isUp :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp object_ a1 = jmethod object_ "isUp" (\() -> (isUp_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isUp_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp_super object_ a1 = (isUp_impl (javaCast object_ :: J2MEKeyFactory)) a1

isUp_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isUp_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).uP)) $ do
            javaReturn (True)
        pure (False)


isDown :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown object_ a1 = jmethod object_ "isDown" (\() -> (isDown_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isDown_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown_super object_ a1 = (isDown_impl (javaCast object_ :: J2MEKeyFactory)) a1

isDown_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isDown_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).dOWN)) $ do
            javaReturn (True)
        pure (False)


isLeft :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft object_ a1 = jmethod object_ "isLeft" (\() -> (isLeft_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isLeft_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft_super object_ a1 = (isLeft_impl (javaCast object_ :: J2MEKeyFactory)) a1

isLeft_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isLeft_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).lEFT)) $ do
            javaReturn (True)
        pure (False)


isRight :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight object_ a1 = jmethod object_ "isRight" (\() -> (isRight_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isRight_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight_super object_ a1 = (isRight_impl (javaCast object_ :: J2MEKeyFactory)) a1

isRight_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isRight_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).rIGHT)) $ do
            javaReturn (True)
        pure (False)


isEnter :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter object_ a1 = jmethod object_ "isEnter" (\() -> (isEnter_impl (javaCast object_ :: J2MEKeyFactory))) () a1

isEnter_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter_super object_ a1 = (isEnter_impl (javaCast object_ :: J2MEKeyFactory)) a1

isEnter_impl :: J2MEKeyFactory -> Input.Input -> IO (Bool)
isEnter_impl this input = do
    javaCatchReturn $ do
        when (input == (jget ((jget (this).gameKeyFactory)).fIRE)) $ do
            javaReturn (True)
        pure (False)


