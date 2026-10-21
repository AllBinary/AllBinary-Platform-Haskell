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
-- package org.allbinary.input.automation.module.game.skill
module GameSkillType where

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

data GameSkillType = GameSkillType
    { header_ :: JavaHeader
    , sPELL_GAME_SKILL_TYPE :: IORef (String)
    , name :: IORef (String)
    }

instance JavaNull GameSkillType where
    javaNull = javaNullRecord "GameSkillType"

instance JavaEquals GameSkillType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameSkillType where
    (==) = jrecordEquals

instance JavaObjectClass GameSkillType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE mANA #-}
mANA = unsafePerformIO ((new_1 "Mana") >>= newIORef)

{-# NOINLINE rEPLENISH #-}
rEPLENISH = unsafePerformIO ((new_1 "Replenish") >>= newIORef)

{-# NOINLINE tIMED #-}
tIMED = unsafePerformIO ((new_1 "Timed") >>= newIORef)

{-# NOINLINE aTTACK #-}
aTTACK = unsafePerformIO ((new_1 "Attack") >>= newIORef)

{-# NOINLINE tRANSPORT #-}
tRANSPORT = unsafePerformIO ((new_1 "Transport") >>= newIORef)

newRecord_ :: IO GameSkillType
newRecord_ = do
    header_ <- newJavaHeader
    sPELL_GAME_SKILL_TYPE <- newIORef ""
    name <- newIORef ""
    let this = GameSkillType header_ sPELL_GAME_SKILL_TYPE name
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameSkillType -> IO ()
initFields_ this = do
    jset this.sPELL_GAME_SKILL_TYPE ("SpellGameSkillType: ")
    jset this.name ("")
    pure ()

new_1 :: String -> IO GameSkillType
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: GameSkillType -> String -> IO ()
init_1 this name = do
        initFields_ this
        Control.Monad.void (GameSkillType.setName this name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GameSkillType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GameSkillType))

getName_impl :: GameSkillType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GameSkillType))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GameSkillType)) a1

setName_impl :: GameSkillType -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameSkillType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameSkillType))

toString_impl :: GameSkillType -> IO (String)
toString_impl this = do
        pure (((jget (this).sPELL_GAME_SKILL_TYPE) ++ (jio (GameSkillType.getName this))))


