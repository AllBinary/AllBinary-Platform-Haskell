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
-- package org.allbinary.input.automation.module.game
module HitPointGameObject (module HitPointGameObject, module MeteredGameObject) where

import MeteredGameObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isMoreThan, isMoreThan_super, isMoreThan_impl, isCloseDeath, isCloseDeath_super, isCloseDeath_impl, setCloseDeath, setCloseDeath_super, setCloseDeath_impl, isDamaged, isDamaged_super, isDamaged_impl, setDamaged, setDamaged_super, setDamaged_impl, toString, toString_super, toString_impl, damaged, closeDeath, hP_LABEL, iS_DAMAGED_LABEL, iS_CLOSE_DEATH_LABEL)
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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified MeteredGameObject
import qualified HitPointGameObjectInterface

-- implements HitPointGameObjectInterface
data HitPointGameObject = HitPointGameObject
    { header_ :: JavaHeader
    , base :: MeteredGameObject.MeteredGameObject
    , damaged :: IORef (Bool)
    , closeDeath :: IORef (Bool)
    , hP_LABEL :: IORef (String)
    , iS_DAMAGED_LABEL :: IORef (String)
    , iS_CLOSE_DEATH_LABEL :: IORef (String)
    }

instance JavaNull HitPointGameObject where
    javaNull = javaNullRecord "HitPointGameObject"

instance JavaEquals HitPointGameObject where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HitPointGameObject where
    (==) = jrecordEquals

instance JavaObjectClass HitPointGameObject where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HitPointGameObject
newRecord_ = do
    base <- MeteredGameObject.newRecord_
    let header_ = base.header_
    damaged <- newIORef False
    closeDeath <- newIORef False
    hP_LABEL <- newIORef ""
    iS_DAMAGED_LABEL <- newIORef ""
    iS_CLOSE_DEATH_LABEL <- newIORef ""
    let this = HitPointGameObject header_ base damaged closeDeath hP_LABEL iS_DAMAGED_LABEL iS_CLOSE_DEATH_LABEL
    jregisterLevel header_ this
    HitPointGameObjectInterface.registerInterface_ header_
    jregisterMethod header_ "isMoreThan" (\() -> isMoreThan_impl this)
    jregisterMethod header_ "isCloseDeath" (\() -> isCloseDeath_impl this)
    jregisterMethod header_ "setCloseDeath" (\() -> setCloseDeath_impl this)
    jregisterMethod header_ "isDamaged" (\() -> isDamaged_impl this)
    jregisterMethod header_ "setDamaged" (\() -> setDamaged_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: HitPointGameObject -> IO ()
initFields_ this = do
    jset this.damaged (False)
    jset this.closeDeath (False)
    jset this.hP_LABEL ("HP: ")
    jset this.iS_DAMAGED_LABEL ("isDamaged: ")
    jset this.iS_CLOSE_DEATH_LABEL ("isCloseDeath: ")
    pure ()

new_4 :: JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Int -> IO HitPointGameObject
new_4 bufferedImage minX maxX y = do
    this <- newRecord_
    init_4 this bufferedImage minX maxX y
    pure this

init_4 :: HitPointGameObject -> JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Int -> IO ()
init_4 this bufferedImage minX maxX y = do
        MeteredGameObject.init_4 this.base (bufferedImage) (minX) (maxX) (y)
        initFields_ this
        pure () -- super(...) is in the record above
        if ((jio (doubleValue ((jindex ((jio (MeteredGameObject.getRatios this))) (((jlength bufferedImage) - 1)))))) < (Prelude.realToFrac (1.0 :: Float))) then do
            Control.Monad.void (HitPointGameObject.setDamaged this True)
        else do
            Control.Monad.void (HitPointGameObject.setDamaged this False)
        if ((jio (doubleValue ((jindex ((jio (MeteredGameObject.getRatios this))) (((jlength bufferedImage) - 1)))))) > (Prelude.realToFrac (0.25 :: Float))) then do
            jset (this).closeDeath (False)
        else do
            jset (this).closeDeath (True)
        pure ()


isMoreThan :: (JavaObjectClass this_) => this_ -> Float -> IO (Bool)
isMoreThan object_ a1 = jmethod object_ "isMoreThan" (\() -> (isMoreThan_impl (javaCast object_ :: HitPointGameObject))) () a1

isMoreThan_super :: (JavaObjectClass this_) => this_ -> Float -> IO (Bool)
isMoreThan_super object_ a1 = (isMoreThan_impl (javaCast object_ :: HitPointGameObject)) a1

isMoreThan_impl :: HitPointGameObject -> Float -> IO (Bool)
isMoreThan_impl this aFloat = do
    javaCatchReturn $ do
        if ((jio (doubleValue ((jindex ((jio (MeteredGameObject.getRatios this))) (((jlength (jio (MeteredGameObject.getRatios this))) - 1)))))) > (Prelude.realToFrac aFloat)) then do
            javaReturn (True)
        else do
            javaReturn (False)


isCloseDeath :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCloseDeath object_ = jmethod object_ "isCloseDeath" (\() -> (isCloseDeath_impl (javaCast object_ :: HitPointGameObject))) ()

isCloseDeath_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCloseDeath_super object_ = (isCloseDeath_impl (javaCast object_ :: HitPointGameObject))

isCloseDeath_impl :: HitPointGameObject -> IO (Bool)
isCloseDeath_impl this = do
        pure ((jget (this).closeDeath))


setCloseDeath :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCloseDeath object_ a1 = jmethod object_ "setCloseDeath" (\() -> (setCloseDeath_impl (javaCast object_ :: HitPointGameObject))) () a1

setCloseDeath_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCloseDeath_super object_ a1 = (setCloseDeath_impl (javaCast object_ :: HitPointGameObject)) a1

setCloseDeath_impl :: HitPointGameObject -> Bool -> IO (())
setCloseDeath_impl this closeDeath = do
        jset (this).closeDeath (closeDeath)
        pure ()


isDamaged :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDamaged object_ = jmethod object_ "isDamaged" (\() -> (isDamaged_impl (javaCast object_ :: HitPointGameObject))) ()

isDamaged_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDamaged_super object_ = (isDamaged_impl (javaCast object_ :: HitPointGameObject))

isDamaged_impl :: HitPointGameObject -> IO (Bool)
isDamaged_impl this = do
        pure ((jget (this).damaged))


setDamaged :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDamaged object_ a1 = jmethod object_ "setDamaged" (\() -> (setDamaged_impl (javaCast object_ :: HitPointGameObject))) () a1

setDamaged_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDamaged_super object_ a1 = (setDamaged_impl (javaCast object_ :: HitPointGameObject)) a1

setDamaged_impl :: HitPointGameObject -> Bool -> IO (())
setDamaged_impl this damaged = do
        jset (this).damaged (damaged)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: HitPointGameObject))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: HitPointGameObject))

toString_impl :: HitPointGameObject -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).hP_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (MeteredGameObject.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iS_DAMAGED_LABEL))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (HitPointGameObject.isDamaged this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iS_CLOSE_DEATH_LABEL))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (HitPointGameObject.isCloseDeath this)))
        (StringMaker.toString stringBuffer)


