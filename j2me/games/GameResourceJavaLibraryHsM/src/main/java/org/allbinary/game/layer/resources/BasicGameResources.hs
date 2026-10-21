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
-- package org.allbinary.game.layer.resources
module BasicGameResources where

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
import qualified GameGraphicsResourceUtil -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BasicGameResources = BasicGameResources
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , rESOURCE :: IORef (String)
    , rESOURCE_DESTROY :: IORef (String)
    }

instance JavaNull BasicGameResources where
    javaNull = javaNullRecord "BasicGameResources"

instance JavaEquals BasicGameResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGameResources where
    (==) = jrecordEquals

instance JavaObjectClass BasicGameResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE stringBuffer #-}
stringBuffer = unsafePerformIO ((StringMaker.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGameResources
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    rESOURCE <- newIORef ""
    rESOURCE_DESTROY <- newIORef ""
    let this = BasicGameResources header_ logUtil rESOURCE rESOURCE_DESTROY
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    pure this

initFields_ :: BasicGameResources -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.rESOURCE ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.rESOURCE_DESTROY ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_ :: IO BasicGameResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGameResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> String -> JavaArray (String) -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicGameResources))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (String) -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: BasicGameResources)) a1 a2

init_impl :: BasicGameResources -> String -> JavaArray (String) -> IO (())
init_impl this rOOT sIZE = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iNIT) e)
            ) $ do
            let scale = (jio (GameConfiguration.getValue ((jget ((jio (GameConfigurationCentral.getInstance))).sCALE))))
            if ((scale > 1) && ((scale - 1) < (jlength sIZE))) then do
                Control.Monad.void (BasicGameResources.append this rOOT (jindex sIZE ((scale - 1))))
            else do
                javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Invalid Value: "))) scale)))))))
        pure ()


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
append object_ a1 a2 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: BasicGameResources))) () a1 a2

append_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
append_super object_ a1 a2 = (append_impl (javaCast object_ :: BasicGameResources)) a1 a2

append_impl :: BasicGameResources -> String -> String -> IO (())
append_impl this rOOT sizeString = do
        let dESTROY = "_destroy"
        string <- (BasicGameResources.getString this)
        Control.Monad.void (delete BasicGameResources.stringBuffer 0 (jio (length BasicGameResources.stringBuffer)))
        Control.Monad.void (append BasicGameResources.stringBuffer rOOT)
        Control.Monad.void (append BasicGameResources.stringBuffer string)
        Control.Monad.void (append BasicGameResources.stringBuffer sizeString)
        assignedValue <- (toString BasicGameResources.stringBuffer)
        jset (this).rESOURCE (assignedValue)
        Control.Monad.void (delete BasicGameResources.stringBuffer 0 (jio (length BasicGameResources.stringBuffer)))
        Control.Monad.void (append BasicGameResources.stringBuffer rOOT)
        Control.Monad.void (append BasicGameResources.stringBuffer dESTROY)
        Control.Monad.void (append BasicGameResources.stringBuffer string)
        Control.Monad.void (append BasicGameResources.stringBuffer sizeString)
        assignedValue <- (toString BasicGameResources.stringBuffer)
        jset (this).rESOURCE_DESTROY (assignedValue)
        pure ()


-- throws Exception
getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: BasicGameResources))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: BasicGameResources))

getString_impl :: BasicGameResources -> IO (String)
getString_impl this = do
        (GameGraphicsResourceUtil.getName ((jio (GameGraphicsResourceUtil.getInstance))))


