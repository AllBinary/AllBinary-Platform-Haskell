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
-- package org.allbinary.input.motion.button
module BasicTouchInputFactory where

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
import qualified TouchButtonInput -- same package or java.lang
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicTouchInputFactory = BasicTouchInputFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , sPECIAL_BUTTON_SIX :: IORef (TouchButtonInput.TouchButtonInput)
    , sPECIAL_BUTTON_FIVE :: IORef (TouchButtonInput.TouchButtonInput)
    , sPECIAL_BUTTON_FOUR :: IORef (TouchButtonInput.TouchButtonInput)
    , sPECIAL_BUTTON_THREE :: IORef (TouchButtonInput.TouchButtonInput)
    , sPECIAL_BUTTON_TWO :: IORef (TouchButtonInput.TouchButtonInput)
    , sPECIAL_BUTTON_ONE :: IORef (TouchButtonInput.TouchButtonInput)
    , uP :: IORef (TouchButtonInput.TouchButtonInput)
    , lEFT :: IORef (TouchButtonInput.TouchButtonInput)
    , rIGHT :: IORef (TouchButtonInput.TouchButtonInput)
    , dOWN :: IORef (TouchButtonInput.TouchButtonInput)
    , nONE :: IORef (TouchButtonInput.TouchButtonInput)
    , initialized :: IORef (Bool)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicTouchInputFactory where
    javaNull = javaNullRecord "BasicTouchInputFactory"

instance JavaEquals BasicTouchInputFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTouchInputFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicTouchInputFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicTouchInputFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    sPECIAL_BUTTON_SIX <- newIORef javaNull
    sPECIAL_BUTTON_FIVE <- newIORef javaNull
    sPECIAL_BUTTON_FOUR <- newIORef javaNull
    sPECIAL_BUTTON_THREE <- newIORef javaNull
    sPECIAL_BUTTON_TWO <- newIORef javaNull
    sPECIAL_BUTTON_ONE <- newIORef javaNull
    uP <- newIORef javaNull
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    dOWN <- newIORef javaNull
    nONE <- newIORef javaNull
    initialized <- newIORef False
    list <- newIORef javaNull
    let this = BasicTouchInputFactory header_ logUtil sPECIAL_BUTTON_SIX sPECIAL_BUTTON_FIVE sPECIAL_BUTTON_FOUR sPECIAL_BUTTON_THREE sPECIAL_BUTTON_TWO sPECIAL_BUTTON_ONE uP lEFT rIGHT dOWN nONE initialized list
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "updateAll" (\() -> updateAll_impl this)
    jregisterMethod header_ "updateAllList" (\() -> updateAllList_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: BasicTouchInputFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sPECIAL_BUTTON_SIX =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 30) "Button 6")
    jset this.sPECIAL_BUTTON_FIVE =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 31) "Button 5")
    jset this.sPECIAL_BUTTON_FOUR =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 32) "Button 4")
    jset this.sPECIAL_BUTTON_THREE =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 33) "Button 3")
    jset this.sPECIAL_BUTTON_TWO =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 34) "Button 2")
    jset this.sPECIAL_BUTTON_ONE =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 35) "Button 1")
    jset this.uP =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 36) "Up Button")
    jset this.lEFT =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 37) "Left Button")
    jset this.rIGHT =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 38) "Right Button")
    jset this.dOWN =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 39) "Down Button")
    jset this.nONE =<< (TouchButtonInput.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 40) "No Button")
    jset this.initialized (False)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO BasicTouchInputFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicTouchInputFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicTouchInputFactory)
getInstance = do
        when ((jget BasicTouchInputFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset BasicTouchInputFactory.instance_ (assignedValue)
        pure ((javaCast (jget BasicTouchInputFactory.instance_) :: BasicTouchInputFactory))


init :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicTouchInputFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BasicTouchInputFactory)) a1

init_impl :: BasicTouchInputFactory -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
init_impl this inputToGameKeyMapping = do
        when (Prelude.not (jget (this).initialized)) $ do
            jset (this).initialized (True)
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget (this).uP))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget (this).lEFT))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget (this).rIGHT))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget (this).dOWN))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.sPECIAL_BUTTON_TWO))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.sPECIAL_BUTTON_FOUR))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.sPECIAL_BUTTON_THREE))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.sPECIAL_BUTTON_ONE))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.sPECIAL_BUTTON_FIVE))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget this.sPECIAL_BUTTON_SIX))
            Control.Monad.void (BasicTouchInputFactory.updateAllList this (jget (this).list) inputToGameKeyMapping)
        pure ()


updateAll :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
updateAll object_ a1 = jmethod object_ "updateAll" (\() -> (updateAll_impl (javaCast object_ :: BasicTouchInputFactory))) () a1

updateAll_super :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
updateAll_super object_ a1 = (updateAll_impl (javaCast object_ :: BasicTouchInputFactory)) a1

updateAll_impl :: BasicTouchInputFactory -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
updateAll_impl this inputToGameKeyMapping = do
        Control.Monad.void (BasicTouchInputFactory.updateAllList this (jio (BasicTouchInputFactory.getList this)) inputToGameKeyMapping)
        pure ()


updateAllList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
updateAllList object_ a1 a2 = jmethod object_ "updateAllList" (\() -> (updateAllList_impl (javaCast object_ :: BasicTouchInputFactory))) () a1 a2

updateAllList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
updateAllList_super object_ a1 a2 = (updateAllList_impl (javaCast object_ :: BasicTouchInputFactory)) a1 a2

updateAllList_impl :: BasicTouchInputFactory -> BasicArrayList.BasicArrayList -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
updateAllList_impl this list inputToGameKeyMapping = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART)))) (jio (BasicArrayList.size list))))))) this "updateAll")
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let touchButtonInput = (javaCast (jio (BasicArrayList.get list index)) :: TouchButtonInput.TouchButtonInput)
            Control.Monad.void (TouchButtonInput.update touchButtonInput inputToGameKeyMapping)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: BasicTouchInputFactory))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: BasicTouchInputFactory))

getList_impl :: BasicTouchInputFactory -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


