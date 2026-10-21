{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.ag.layer.hud.basic
module NumberStringHudFactory where

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
import qualified NumberStringHud -- same package or java.lang
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data NumberStringHudFactory = NumberStringHudFactory
    { header_ :: JavaHeader
    , nULL_NUMBER_STRING_HUD :: IORef (NumberStringHud.NumberStringHud)
    }

instance JavaNull NumberStringHudFactory where
    javaNull = javaNullRecord "NumberStringHudFactory"

instance JavaEquals NumberStringHudFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NumberStringHudFactory where
    (==) = jrecordEquals

instance JavaObjectClass NumberStringHudFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((NullUtil.getInstance) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NumberStringHudFactory
newRecord_ = do
    header_ <- newJavaHeader
    nULL_NUMBER_STRING_HUD <- newIORef javaNull
    let this = NumberStringHudFactory header_ nULL_NUMBER_STRING_HUD
    jregisterLevel header_ this
    jregisterMethod header_ "createHud" (\() -> createHud_impl this)
    pure this

initFields_ :: NumberStringHudFactory -> IO ()
initFields_ this = do
    jset this.nULL_NUMBER_STRING_HUD =<< (NumberStringHudFactory.createHud this)
    pure ()

new_ :: IO NumberStringHudFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NumberStringHudFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (NumberStringHudFactory)
getInstance = do
        when ((jget NumberStringHudFactory.instance_) == (jio (NullUtil.getInstance))) $ do
            assignedValue <- (new_)
            jset NumberStringHudFactory.instance_ (assignedValue)
        pure ((javaCast (jget NumberStringHudFactory.instance_) :: NumberStringHudFactory))


createHud :: (JavaObjectClass this_) => this_ -> IO (NumberStringHud.NumberStringHud)
createHud object_ = jmethod object_ "createHud" (\() -> (createHud_impl (javaCast object_ :: NumberStringHudFactory))) ()

createHud_super :: (JavaObjectClass this_) => this_ -> IO (NumberStringHud.NumberStringHud)
createHud_super object_ = (createHud_impl (javaCast object_ :: NumberStringHudFactory))

createHud_impl :: NumberStringHudFactory -> IO (NumberStringHud.NumberStringHud)
createHud_impl this = do
        handle (\(e :: JavaException) -> do
            logUtil <- (LogUtil.getInstance)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            (NumberStringHud.new_6 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) 9 (jget ((jio (BasicHudFactory.getInstance))).aBSOLUTE) 1 0 (jget ((jio (BasicColorFactory.getInstance))).nULL_COLOR))


