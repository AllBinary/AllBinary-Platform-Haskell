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
-- package org.allbinary.game.paint.help
module BasicInputMappingHelpPaintable (module BasicInputMappingHelpPaintable, module HelpPaintable) where

import HelpPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, get, get_super, get_impl, gameInputMappingArray, nONE)
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
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified Input -- org.allbinary.game.input.Input
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified GameInputMapping -- org.allbinary.game.input.mapping.GameInputMapping
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HelpPaintable

data BasicInputMappingHelpPaintable = BasicInputMappingHelpPaintable
    { header_ :: JavaHeader
    , base :: HelpPaintable.HelpPaintable
    , gameInputMappingArray :: IORef (JavaArray (GameInputMapping.GameInputMapping))
    , nONE :: IORef (GameKey.GameKey)
    }

instance JavaNull BasicInputMappingHelpPaintable where
    javaNull = javaNullRecord "BasicInputMappingHelpPaintable"

instance JavaEquals BasicInputMappingHelpPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicInputMappingHelpPaintable where
    (==) = jrecordEquals

instance JavaObjectClass BasicInputMappingHelpPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicInputMappingHelpPaintable
newRecord_ = do
    base <- HelpPaintable.newRecord_
    let header_ = base.header_
    gameInputMappingArray <- newIORef javaNull
    nONE <- newIORef javaNull
    let this = BasicInputMappingHelpPaintable header_ base gameInputMappingArray nONE
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: BasicInputMappingHelpPaintable -> IO ()
initFields_ this = do
    jset this.gameInputMappingArray (javaNull)
    jset this.nONE ((jget ((jio (GameKeyFactory.getInstance))).nONE))
    pure ()

new_2 :: JavaArray (GameInputMapping.GameInputMapping) -> BasicColor.BasicColor -> IO BasicInputMappingHelpPaintable
new_2 gameInputMappingArray basicColor = do
    this <- newRecord_
    init_2 this gameInputMappingArray basicColor
    pure this

init_2 :: BasicInputMappingHelpPaintable -> JavaArray (GameInputMapping.GameInputMapping) -> BasicColor.BasicColor -> IO ()
init_2 this gameInputMappingArray basicColor = do
        HelpPaintable.init_3 this.base ("Help Screen") (jget ((jio (BasicColorFactory.getInstance))).bLACK) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).gameInputMappingArray (gameInputMappingArray)
        Control.Monad.void (BasicInputMappingHelpPaintable.update this (jget (this).nONE) (javaCast (jget (this).nONE)))
        pure ()


update :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BasicInputMappingHelpPaintable))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: BasicInputMappingHelpPaintable)) a1 a2

update_impl :: BasicInputMappingHelpPaintable -> GameKey.GameKey -> Input.Input -> IO (())
update_impl this selectedGameKey selectedInput = do
        gameKeyMapping <- (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance))))
        let eQUAL = " = "
        stringMaker <- (StringMaker.new_)
        let size = (jlength (jget (this).gameInputMappingArray))
        let keyInfo = (jnewArray (size) javaNull)
        gameInputMapping <- newIORef (javaNull)
        gameKey <- newIORef (javaNull)
        list <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameInputMapping ((jindex ((jget (this).gameInputMappingArray)) (index)))
            assignedValue <- (GameInputMapping.getGameKey ((jget gameInputMapping)))
            jset gameKey (assignedValue)
            assignedValue <- (InputToGameKeyMapping.getMappedInput ((jio (PersistentInputMapping.getInputMapping gameKeyMapping))) (javaCast (jget gameKey)))
            jset list (assignedValue)
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (GameInputMapping.getName ((jget gameInputMapping))))))) eQUAL))) (jio (BasicInputMappingHelpPaintable.get this (jget list)))))))
            jsetIndex keyInfo (index) (assignedValue)
        Control.Monad.void (HelpPaintable.setInputInfoP_super this.base keyInfo)
        pure ()


get :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (String)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: BasicInputMappingHelpPaintable))) () a1

get_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (String)
get_super object_ a1 = (get_impl (javaCast object_ :: BasicInputMappingHelpPaintable)) a1

get_impl :: BasicInputMappingHelpPaintable -> BasicArrayList.BasicArrayList -> IO (String)
get_impl this keyList = do
        commonSeps <- (CommonSeps.getInstance)
        stringBuffer <- (StringMaker.new_)
        let aND = "and "
        key <- newIORef (javaNull)
        size <- (BasicArrayList.size keyList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset key ((javaCast (jindex ((jget (keyList).objectArray)) (index)) :: Input.Input))
            Control.Monad.void (StringMaker.append stringBuffer (jio (Input.getName ((jget key)))))
            when ((index + 1) < (jio (BasicArrayList.size keyList))) $ do
                if ((jio (BasicArrayList.size keyList)) == 2) then do
                    Control.Monad.void (StringMaker.append ((jio (StringMaker.append stringBuffer (jget (commonSeps).sPACE)))) aND)
                else do
                    if ((index + 2) == (jio (BasicArrayList.size keyList))) then do
                        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
                        Control.Monad.void (StringMaker.append stringBuffer aND)
                    else do
                        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        (StringMaker.toString stringBuffer)


