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
-- package org.allbinary.media.audio
module PlayerQueue where

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
import qualified Sound -- same package or java.lang
import qualified NoSound -- same package or java.lang
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data PlayerQueue = PlayerQueue
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , max :: IORef (Int)
    }

instance JavaNull PlayerQueue where
    javaNull = javaNullRecord "PlayerQueue"

instance JavaEquals PlayerQueue where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerQueue where
    (==) = jrecordEquals

instance JavaObjectClass PlayerQueue where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

tOTAL = "Sounds In Queue: "

newRecord_ :: IO PlayerQueue
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    list <- newIORef javaNull
    max <- newIORef 0
    let this = PlayerQueue header_ commonStrings list max
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PlayerQueue -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.max (0)
    pure ()

new_1 :: Int -> IO PlayerQueue
new_1 max = do
    this <- newRecord_
    init_1 this max
    pure this

init_1 :: PlayerQueue -> Int -> IO ()
init_1 this max = do
        initFields_ this
        jset (this).max (max)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Sound.Sound -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PlayerQueue))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PlayerQueue)) a1

add_impl :: PlayerQueue -> Sound.Sound -> IO (())
add_impl this sound = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.put (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).aDD))
            ) $ do
            when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) sound))) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).list)) sound)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (Bool)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PlayerQueue))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
process_super object_ = (process_impl (javaCast object_ :: PlayerQueue))

process_impl :: PlayerQueue -> IO (Bool)
process_impl this = do
        sound <- newIORef =<< (fmap (\value_ -> javaCast value_ :: Sound.Sound) (NoSound.getInstance))
        handle (\(e :: JavaException) -> do
            resource <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when ((jget sound) /= javaNull) $ do
                assignedValue <- (Sound.getResource ((jget sound)))
                jset resource (assignedValue)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).commonStrings)).eXCEPTION_LABEL)))) (jget resource)))))) this (jget ((jget (this).commonStrings)).pROCESS))
            pure (False)
            ) $ do
            played <- newIORef (False)
            when ((jio (BasicArrayList.size ((jget (this).list)))) > 0) $ do
                jset sound ((javaCast (jio (BasicArrayList.removeAt ((jget (this).list)) 0)) :: Sound.Sound))
                when ((jget sound) /= javaNull) $ do
                    Control.Monad.void (Player.start ((jio (Sound.getPlayerP ((jget sound))))))
                fix $ \loop -> when ((jio (BasicArrayList.size ((jget (this).list)))) > (jget (this).max)) $ javaIteration (loop) $ do
                    Control.Monad.void (BasicArrayList.removeAt ((jget (this).list)) 0)
                jset played (True)
            pure ((jget played))


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: PlayerQueue))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: PlayerQueue))

clear_impl :: PlayerQueue -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PlayerQueue))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PlayerQueue))

toString_impl :: PlayerQueue -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (PlayerQueue.tOTAL)))) (jio (BasicArrayList.size ((jget (this).list))))))))


