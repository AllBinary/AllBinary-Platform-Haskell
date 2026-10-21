{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.behavior.topview
module CharacterFrictionProperties (module CharacterFrictionProperties, module FrictionProperties) where

import FrictionProperties hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getWATER_FRICTION_NOMINATOR, getWATER_FRICTION_NOMINATOR_super, getWATER_FRICTION_NOMINATOR_impl, getAIR_FRICTION_NOMINATOR, getAIR_FRICTION_NOMINATOR_super, getAIR_FRICTION_NOMINATOR_impl, getCOLLISION_FRICTION_NOMINATOR, getCOLLISION_FRICTION_NOMINATOR_super, getCOLLISION_FRICTION_NOMINATOR_impl, wATER_FRICTION_NOMINATOR, aIR_FRICTION_NOMINATOR, cOLLISION_FRICTION_NOMINATOR)
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
import qualified FrictionProperties -- org.allbinary.game.physics.FrictionProperties
import qualified FrictionData -- org.allbinary.game.physics.friction.FrictionData

data CharacterFrictionProperties = CharacterFrictionProperties
    { header_ :: JavaHeader
    , base :: FrictionProperties.FrictionProperties
    , wATER_FRICTION_NOMINATOR :: IORef (Int)
    , aIR_FRICTION_NOMINATOR :: IORef (Int)
    , cOLLISION_FRICTION_NOMINATOR :: IORef (Int)
    }

instance JavaNull CharacterFrictionProperties where
    javaNull = javaNullRecord "CharacterFrictionProperties"

instance JavaEquals CharacterFrictionProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CharacterFrictionProperties where
    (==) = jrecordEquals

instance JavaObjectClass CharacterFrictionProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CharacterFrictionProperties
newRecord_ = do
    base <- FrictionProperties.newRecord_
    let header_ = base.header_
    wATER_FRICTION_NOMINATOR <- newIORef 0
    aIR_FRICTION_NOMINATOR <- newIORef 0
    cOLLISION_FRICTION_NOMINATOR <- newIORef 0
    let this = CharacterFrictionProperties header_ base wATER_FRICTION_NOMINATOR aIR_FRICTION_NOMINATOR cOLLISION_FRICTION_NOMINATOR
    jregisterLevel header_ this
    jregisterMethod header_ "getWATER_FRICTION_NOMINATOR" (\() -> getWATER_FRICTION_NOMINATOR_impl this)
    jregisterMethod header_ "getAIR_FRICTION_NOMINATOR" (\() -> getAIR_FRICTION_NOMINATOR_impl this)
    jregisterMethod header_ "getCOLLISION_FRICTION_NOMINATOR" (\() -> getCOLLISION_FRICTION_NOMINATOR_impl this)
    pure this

initFields_ :: CharacterFrictionProperties -> IO ()
initFields_ this = do
    jset this.wATER_FRICTION_NOMINATOR (0)
    jset this.aIR_FRICTION_NOMINATOR (0)
    jset this.cOLLISION_FRICTION_NOMINATOR (0)
    pure ()

new_3 :: Int -> Int -> Int -> IO CharacterFrictionProperties
new_3 airFriction waterFriction collisionFriction = do
    this <- newRecord_
    init_3 this airFriction waterFriction collisionFriction
    pure this

init_3 :: CharacterFrictionProperties -> Int -> Int -> Int -> IO ()
init_3 this airFriction waterFriction collisionFriction = do
        FrictionProperties.init_ this.base
        initFields_ this
        jset (this).aIR_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - airFriction))
        jset (this).cOLLISION_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - collisionFriction))
        jset (this).wATER_FRICTION_NOMINATOR (((jio (FrictionData.getFrictionDenominator)) - waterFriction))
        pure ()


getWATER_FRICTION_NOMINATOR :: (JavaObjectClass this_) => this_ -> IO (Int)
getWATER_FRICTION_NOMINATOR object_ = jmethod object_ "getWATER_FRICTION_NOMINATOR" (\() -> (getWATER_FRICTION_NOMINATOR_impl (javaCast object_ :: CharacterFrictionProperties))) ()

getWATER_FRICTION_NOMINATOR_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWATER_FRICTION_NOMINATOR_super object_ = (getWATER_FRICTION_NOMINATOR_impl (javaCast object_ :: CharacterFrictionProperties))

getWATER_FRICTION_NOMINATOR_impl :: CharacterFrictionProperties -> IO (Int)
getWATER_FRICTION_NOMINATOR_impl this = do
        pure ((jget (this).wATER_FRICTION_NOMINATOR))


getAIR_FRICTION_NOMINATOR :: (JavaObjectClass this_) => this_ -> IO (Int)
getAIR_FRICTION_NOMINATOR object_ = jmethod object_ "getAIR_FRICTION_NOMINATOR" (\() -> (getAIR_FRICTION_NOMINATOR_impl (javaCast object_ :: CharacterFrictionProperties))) ()

getAIR_FRICTION_NOMINATOR_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAIR_FRICTION_NOMINATOR_super object_ = (getAIR_FRICTION_NOMINATOR_impl (javaCast object_ :: CharacterFrictionProperties))

getAIR_FRICTION_NOMINATOR_impl :: CharacterFrictionProperties -> IO (Int)
getAIR_FRICTION_NOMINATOR_impl this = do
        pure ((jget (this).aIR_FRICTION_NOMINATOR))


getCOLLISION_FRICTION_NOMINATOR :: (JavaObjectClass this_) => this_ -> IO (Int)
getCOLLISION_FRICTION_NOMINATOR object_ = jmethod object_ "getCOLLISION_FRICTION_NOMINATOR" (\() -> (getCOLLISION_FRICTION_NOMINATOR_impl (javaCast object_ :: CharacterFrictionProperties))) ()

getCOLLISION_FRICTION_NOMINATOR_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCOLLISION_FRICTION_NOMINATOR_super object_ = (getCOLLISION_FRICTION_NOMINATOR_impl (javaCast object_ :: CharacterFrictionProperties))

getCOLLISION_FRICTION_NOMINATOR_impl :: CharacterFrictionProperties -> IO (Int)
getCOLLISION_FRICTION_NOMINATOR_impl this = do
        pure ((jget (this).cOLLISION_FRICTION_NOMINATOR))


