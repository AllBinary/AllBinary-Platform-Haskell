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
-- package org.allbinary.direction
module DirectionFactory where

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
import qualified Direction -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data DirectionFactory = DirectionFactory
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , lEFT :: IORef (Direction.Direction)
    , rIGHT :: IORef (Direction.Direction)
    , dOWN :: IORef (Direction.Direction)
    , uP :: IORef (Direction.Direction)
    , uP_LEFT :: IORef (Direction.Direction)
    , uP_RIGHT :: IORef (Direction.Direction)
    , dOWN_LEFT :: IORef (Direction.Direction)
    , dOWN_RIGHT :: IORef (Direction.Direction)
    , nOT_BORDERED_WITH :: IORef (Direction.Direction)
    , nO_DIRECTION :: IORef (Direction.Direction)
    , tOP :: IORef (Direction.Direction)
    , bOTTOM :: IORef (Direction.Direction)
    , aLL_DIRECTION :: IORef (Direction.Direction)
    }

instance JavaNull DirectionFactory where
    javaNull = javaNullRecord "DirectionFactory"

instance JavaEquals DirectionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectionFactory where
    (==) = jrecordEquals

instance JavaObjectClass DirectionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DirectionFactory
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    lEFT <- newIORef javaNull
    rIGHT <- newIORef javaNull
    dOWN <- newIORef javaNull
    uP <- newIORef javaNull
    uP_LEFT <- newIORef javaNull
    uP_RIGHT <- newIORef javaNull
    dOWN_LEFT <- newIORef javaNull
    dOWN_RIGHT <- newIORef javaNull
    nOT_BORDERED_WITH <- newIORef javaNull
    nO_DIRECTION <- newIORef javaNull
    tOP <- newIORef javaNull
    bOTTOM <- newIORef javaNull
    aLL_DIRECTION <- newIORef javaNull
    let this = DirectionFactory header_ nAME lEFT rIGHT dOWN uP uP_LEFT uP_RIGHT dOWN_LEFT dOWN_RIGHT nOT_BORDERED_WITH nO_DIRECTION tOP bOTTOM aLL_DIRECTION
    jregisterLevel header_ this
    pure this

initFields_ :: DirectionFactory -> IO ()
initFields_ this = do
    jset this.nAME ("DIRECTION")
    jset this.lEFT =<< (Direction.new_4 (jget ((jio (CommonPhoneStrings.getInstance))).lEFT) "WEST" 0 1)
    jset this.rIGHT =<< (Direction.new_4 (jget ((jio (CommonPhoneStrings.getInstance))).rIGHT) "EAST" 1 0)
    jset this.dOWN =<< (Direction.new_4 (jget ((jio (CommonPhoneStrings.getInstance))).dOWN) "SOUTH" 2 0)
    jset this.uP =<< (Direction.new_4 (jget ((jio (CommonPhoneStrings.getInstance))).uP) "NORTH" 3 0)
    jset this.uP_LEFT (javaNull)
    jset this.uP_RIGHT (javaNull)
    jset this.dOWN_LEFT (javaNull)
    jset this.dOWN_RIGHT (javaNull)
    jset this.nOT_BORDERED_WITH =<< (Direction.new_4 "NOT_BORDERED_WITH" "NOT_BORDERED_WITH" 8 0)
    jset this.nO_DIRECTION =<< (Direction.new_4 "NO_DIRECTION" "NO_DIRECTION" 9 0)
    jset this.tOP =<< (Direction.new_4 "TOP" "TOP" 10 0)
    jset this.bOTTOM =<< (Direction.new_4 "BOTTOM" "BOTTOM" 11 0)
    jset this.aLL_DIRECTION =<< (Direction.new_4 "ALL_DIRECTION" "ALL_DIRECTION" 12 0)
    pure ()


getInstance :: IO (DirectionFactory)
getInstance = do
        pure (DirectionFactory.instance_)

new_ :: IO DirectionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DirectionFactory -> IO ()
init_ this = do
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        assignedValue <- (Direction.new_4 "UP LEFT" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (Direction.getOtherName ((jget (this).uP))))))) (jget (commonSeps).sPACE)))) (jio (Direction.getOtherName ((jget (this).lEFT))))))))) 4 0)
        jset (this).uP_LEFT (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        assignedValue <- (Direction.new_4 "UP RIGHT" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (Direction.getOtherName ((jget (this).uP))))))) (jget (commonSeps).sPACE)))) (jio (Direction.getOtherName ((jget (this).rIGHT))))))))) 5 0)
        jset (this).uP_RIGHT (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        assignedValue <- (Direction.new_4 "DOWN LEFT" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (Direction.getOtherName ((jget (this).dOWN))))))) (jget (commonSeps).sPACE)))) (jio (Direction.getOtherName ((jget (this).lEFT))))))))) 6 0)
        jset (this).dOWN_LEFT (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        assignedValue <- (Direction.new_4 "DOWN RIGHT" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jio (Direction.getOtherName ((jget (this).dOWN))))))) (jget (commonSeps).sPACE)))) (jio (Direction.getOtherName ((jget (this).rIGHT))))))))) 7 0)
        jset (this).dOWN_RIGHT (assignedValue)
        pure ()


