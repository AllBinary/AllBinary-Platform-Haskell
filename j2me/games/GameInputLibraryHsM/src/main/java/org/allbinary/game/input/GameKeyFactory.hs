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
module GameKeyFactory where

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
import qualified GameKey -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings

data GameKeyFactory = GameKeyFactory
    { header_ :: JavaHeader
    , nONE :: IORef (GameKey.GameKey)
    , uP :: IORef (GameKey.GameKey)
    , dOWN :: IORef (GameKey.GameKey)
    , lEFT :: IORef (GameKey.GameKey)
    , rIGHT :: IORef (GameKey.GameKey)
    , kEY_POUND :: IORef (GameKey.GameKey)
    , kEY_STAR :: IORef (GameKey.GameKey)
    , kEY_NUM0 :: IORef (GameKey.GameKey)
    , kEY_NUM1 :: IORef (GameKey.GameKey)
    , kEY_NUM2 :: IORef (GameKey.GameKey)
    , kEY_NUM3 :: IORef (GameKey.GameKey)
    , kEY_NUM4 :: IORef (GameKey.GameKey)
    , kEY_NUM5 :: IORef (GameKey.GameKey)
    , kEY_NUM6 :: IORef (GameKey.GameKey)
    , kEY_NUM7 :: IORef (GameKey.GameKey)
    , kEY_NUM8 :: IORef (GameKey.GameKey)
    , kEY_NUM9 :: IORef (GameKey.GameKey)
    , gAME_A :: IORef (GameKey.GameKey)
    , gAME_B :: IORef (GameKey.GameKey)
    , gAME_C :: IORef (GameKey.GameKey)
    , gAME_D :: IORef (GameKey.GameKey)
    , fIRE :: IORef (GameKey.GameKey)
    , lEVEL_DOWN :: IORef (GameKey.GameKey)
    , lEVEL_UP :: IORef (GameKey.GameKey)
    }

instance JavaNull GameKeyFactory where
    javaNull = javaNullRecord "GameKeyFactory"

instance JavaEquals GameKeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameKeyFactory
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef javaNull
    uP <- newIORef javaNull
    dOWN <- newIORef javaNull
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    kEY_POUND <- newIORef javaNull
    kEY_STAR <- newIORef javaNull
    kEY_NUM0 <- newIORef javaNull
    kEY_NUM1 <- newIORef javaNull
    kEY_NUM2 <- newIORef javaNull
    kEY_NUM3 <- newIORef javaNull
    kEY_NUM4 <- newIORef javaNull
    kEY_NUM5 <- newIORef javaNull
    kEY_NUM6 <- newIORef javaNull
    kEY_NUM7 <- newIORef javaNull
    kEY_NUM8 <- newIORef javaNull
    kEY_NUM9 <- newIORef javaNull
    gAME_A <- newIORef javaNull
    gAME_B <- newIORef javaNull
    gAME_C <- newIORef javaNull
    gAME_D <- newIORef javaNull
    fIRE <- newIORef javaNull
    lEVEL_DOWN <- newIORef javaNull
    lEVEL_UP <- newIORef javaNull
    let this = GameKeyFactory header_ nONE uP dOWN lEFT rIGHT kEY_POUND kEY_STAR kEY_NUM0 kEY_NUM1 kEY_NUM2 kEY_NUM3 kEY_NUM4 kEY_NUM5 kEY_NUM6 kEY_NUM7 kEY_NUM8 kEY_NUM9 gAME_A gAME_B gAME_C gAME_D fIRE lEVEL_DOWN lEVEL_UP
    jregisterLevel header_ this
    pure this

initFields_ :: GameKeyFactory -> IO ()
initFields_ this = do
    jset this.nONE =<< (GameKey.new_2 ((jget ((jio (InputFactory.getInstance))).mAX) - 1) "None")
    jset this.uP =<< (GameKey.new_2 (Canvas.uP) (jget ((jio (CommonPhoneStrings.getInstance))).uP))
    jset this.dOWN =<< (GameKey.new_2 (Canvas.dOWN) (jget ((jio (CommonPhoneStrings.getInstance))).dOWN))
    jset this.lEFT =<< (GameKey.new_2 (Canvas.lEFT) (jget ((jio (CommonPhoneStrings.getInstance))).lEFT))
    jset this.rIGHT =<< (GameKey.new_2 (Canvas.rIGHT) (jget ((jio (CommonPhoneStrings.getInstance))).rIGHT))
    jset this.kEY_POUND =<< (GameKey.new_2 (Canvas.kEY_POUND) "POUND")
    jset this.kEY_STAR =<< (GameKey.new_2 (Canvas.kEY_STAR) "STAR")
    jset this.kEY_NUM0 =<< (GameKey.new_2 (Canvas.kEY_NUM0) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
    jset this.kEY_NUM1 =<< (GameKey.new_2 (Canvas.kEY_NUM1) (jget ((jio (CommonPhoneStrings.getInstance))).oNE))
    jset this.kEY_NUM2 =<< (GameKey.new_2 (Canvas.kEY_NUM2) (jget ((jio (CommonPhoneStrings.getInstance))).tWO))
    jset this.kEY_NUM3 =<< (GameKey.new_2 (Canvas.kEY_NUM3) (jget ((jio (CommonPhoneStrings.getInstance))).tHREE))
    jset this.kEY_NUM4 =<< (GameKey.new_2 (Canvas.kEY_NUM4) (jget ((jio (CommonPhoneStrings.getInstance))).fOUR))
    jset this.kEY_NUM5 =<< (GameKey.new_2 (Canvas.kEY_NUM5) (jget ((jio (CommonPhoneStrings.getInstance))).fIVE))
    jset this.kEY_NUM6 =<< (GameKey.new_2 (Canvas.kEY_NUM6) (jget ((jio (CommonPhoneStrings.getInstance))).sIX))
    jset this.kEY_NUM7 =<< (GameKey.new_2 (Canvas.kEY_NUM7) (jget ((jio (CommonPhoneStrings.getInstance))).sEVEN))
    jset this.kEY_NUM8 =<< (GameKey.new_2 (Canvas.kEY_NUM8) (jget ((jio (CommonPhoneStrings.getInstance))).eIGHT))
    jset this.kEY_NUM9 =<< (GameKey.new_2 (Canvas.kEY_NUM9) (jget ((jio (CommonPhoneStrings.getInstance))).nINE))
    jset this.gAME_A =<< (GameKey.new_2 (Canvas.gAME_A) "Game A")
    jset this.gAME_B =<< (GameKey.new_2 (Canvas.gAME_B) "Game B")
    jset this.gAME_C =<< (GameKey.new_2 (Canvas.gAME_C) "Game C")
    jset this.gAME_D =<< (GameKey.new_2 (Canvas.gAME_D) "Game D")
    jset this.fIRE =<< (GameKey.new_2 (Canvas.fIRE) (jget ((jio (CommonPhoneStrings.getInstance))).fIRE))
    jset this.lEVEL_DOWN =<< (GameKey.new_2 (Canvas.kEY_NUM9 + 1) "Cheat Level Up")
    jset this.lEVEL_UP =<< (GameKey.new_2 (Canvas.kEY_NUM9 + 2) "Cheat Level Down")
    pure ()

new_ :: IO GameKeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameKeyFactory)
getInstance = do
        when ((jget GameKeyFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameKeyFactory.instance_ (assignedValue)
        pure ((javaCast (jget GameKeyFactory.instance_) :: GameKeyFactory))


