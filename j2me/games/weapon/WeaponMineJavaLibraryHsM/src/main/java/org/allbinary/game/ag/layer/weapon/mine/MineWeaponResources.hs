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
-- package org.allbinary.game.ag.layer.weapon.mine
module MineWeaponResources (module MineWeaponResources, module BasicGameResources) where

import BasicGameResources hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_, dROP_TEXT_RESOURCE, dROP_RESOURCE, dROP_ICON_RESOURCE)
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
import qualified BasicGameResources -- org.allbinary.game.layer.resources.BasicGameResources
import qualified NullUtil -- org.allbinary.logic.NullUtil

data MineWeaponResources = MineWeaponResources
    { header_ :: JavaHeader
    , base :: BasicGameResources.BasicGameResources
    , dROP_TEXT_RESOURCE :: IORef (String)
    , dROP_RESOURCE :: IORef (String)
    , dROP_ICON_RESOURCE :: IORef (String)
    }

instance JavaNull MineWeaponResources where
    javaNull = javaNullRecord "MineWeaponResources"

instance JavaEquals MineWeaponResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MineWeaponResources where
    (==) = jrecordEquals

instance JavaObjectClass MineWeaponResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO MineWeaponResources
newRecord_ = do
    base <- BasicGameResources.newRecord_
    let header_ = base.header_
    dROP_TEXT_RESOURCE <- newIORef ""
    dROP_RESOURCE <- newIORef ""
    dROP_ICON_RESOURCE <- newIORef ""
    let this = MineWeaponResources header_ base dROP_TEXT_RESOURCE dROP_RESOURCE dROP_ICON_RESOURCE
    jregisterLevel header_ this
    pure this

initFields_ :: MineWeaponResources -> IO ()
initFields_ this = do
    jset this.dROP_TEXT_RESOURCE ("/mine_drop_text_20_by_20.png")
    jset this.dROP_RESOURCE ("/mine_drop_20_by_20.png")
    jset this.dROP_ICON_RESOURCE ("/mine_drop_icon_20_by_20.png")
    pure ()


getInstance :: IO (MineWeaponResources)
getInstance = do
        when ((jget MineWeaponResources.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset MineWeaponResources.instance_ (assignedValue)
        pure ((javaCast (jget MineWeaponResources.instance_) :: MineWeaponResources))

new_ :: IO MineWeaponResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MineWeaponResources -> IO ()
init_ this = do
        BasicGameResources.init_ this.base
        initFields_ this
        let rOOT = "/mine"
        let sMALL = "_20_by_20.png"
        let mEDIUM = sMALL
        let sIZE_FOUR = sMALL
        let sIZE_FIVE = sMALL
        let sIZE_SIX = sMALL
        let sIZE = (jarrayFromList [sMALL, mEDIUM, sIZE_FOUR, sIZE_FIVE, sIZE_SIX])
        Control.Monad.void (BasicGameResources.init_super this.base rOOT sIZE)
        pure ()


