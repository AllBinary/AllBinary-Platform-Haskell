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
-- package org.allbinary.game.layer.unit
module UnitGameResources (module UnitGameResources, module BasicGameResources) where

import BasicGameResources hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, append, append_super, append_impl, getString, getString_super, getString_impl, nAME, rESOURCE_ICON_ANIMATION, rESOURCE_ICON_BUILD, rESOURCE_ICON, iCON, bUILD, dESTROY, iCON_BUILD, iCON_SIZE)
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
import qualified StringMaker -- same package or java.lang
import qualified BasicGameResources -- org.allbinary.game.layer.resources.BasicGameResources
import qualified GameGraphicsResourceUtil -- org.allbinary.game.layer.resources.GameGraphicsResourceUtil
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified GraphicsFeatureFactory -- org.allbinary.game.configuration.feature.GraphicsFeatureFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data UnitGameResources = UnitGameResources
    { header_ :: JavaHeader
    , base :: BasicGameResources.BasicGameResources
    , nAME :: IORef (String)
    , rESOURCE_ICON_ANIMATION :: IORef (String)
    , rESOURCE_ICON_BUILD :: IORef (String)
    , rESOURCE_ICON :: IORef (String)
    , iCON_SIZE :: IORef (String)
    }

instance JavaNull UnitGameResources where
    javaNull = javaNullRecord "UnitGameResources"

instance JavaEquals UnitGameResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitGameResources where
    (==) = jrecordEquals

instance JavaObjectClass UnitGameResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iCON = "_icon"

bUILD = "_build"

dESTROY = "_destroy"

iCON_BUILD = ("_icon" ++ javaToString UnitGameResources.bUILD)

newRecord_ :: IO UnitGameResources
newRecord_ = do
    base <- BasicGameResources.newRecord_
    let header_ = base.header_
    nAME <- newIORef ""
    rESOURCE_ICON_ANIMATION <- newIORef ""
    rESOURCE_ICON_BUILD <- newIORef ""
    rESOURCE_ICON <- newIORef ""
    iCON_SIZE <- newIORef ""
    let this = UnitGameResources header_ base nAME rESOURCE_ICON_ANIMATION rESOURCE_ICON_BUILD rESOURCE_ICON iCON_SIZE
    jregisterLevel header_ this
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    pure this

initFields_ :: UnitGameResources -> IO ()
initFields_ this = do
    jset this.nAME ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.rESOURCE_ICON_ANIMATION ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.rESOURCE_ICON_BUILD ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.rESOURCE_ICON ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.iCON_SIZE ("_64_by_64.png")
    pure ()

new_ :: IO UnitGameResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UnitGameResources -> IO ()
init_ this = do
        BasicGameResources.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
append object_ a1 a2 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: UnitGameResources))) () a1 a2

append_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
append_super object_ a1 a2 = (append_impl (javaCast object_ :: UnitGameResources)) a1 a2

append_impl :: UnitGameResources -> String -> String -> IO (())
append_impl this rOOT sizeString = do
        Control.Monad.void (BasicGameResources.append_super this.base rOOT sizeString)
        string <- (GameGraphicsResourceUtil.getName ((jio (GameGraphicsResourceUtil.getInstance))))
        Control.Monad.void (StringMaker.delete BasicGameResources.stringBuffer 0 (jio (StringMaker.length BasicGameResources.stringBuffer)))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer rOOT)
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer (UnitGameResources.dESTROY))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer string)
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer sizeString)
        assignedValue <- (StringMaker.toString BasicGameResources.stringBuffer)
        jset (this).base.rESOURCE_DESTROY (assignedValue)
        Control.Monad.void (StringMaker.delete BasicGameResources.stringBuffer 0 (jio (StringMaker.length BasicGameResources.stringBuffer)))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer (UnitGameResources.iCON))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer rOOT)
        assignedValue <- (StringMaker.toString BasicGameResources.stringBuffer)
        jset (this).rESOURCE_ICON_ANIMATION (assignedValue)
        Control.Monad.void (StringMaker.delete BasicGameResources.stringBuffer 0 (jio (StringMaker.length BasicGameResources.stringBuffer)))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer rOOT)
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer (UnitGameResources.iCON))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer string)
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer (jget (this).iCON_SIZE))
        assignedValue <- (StringMaker.toString BasicGameResources.stringBuffer)
        jset (this).rESOURCE_ICON (assignedValue)
        Control.Monad.void (StringMaker.delete BasicGameResources.stringBuffer 0 (jio (StringMaker.length BasicGameResources.stringBuffer)))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer rOOT)
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer (UnitGameResources.iCON_BUILD))
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer string)
        Control.Monad.void (StringMaker.append BasicGameResources.stringBuffer (jget (this).iCON_SIZE))
        assignedValue <- (StringMaker.toString BasicGameResources.stringBuffer)
        jset (this).rESOURCE_ICON_BUILD (assignedValue)
        pure ()


-- throws Exception
getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: UnitGameResources))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: UnitGameResources))

getString_impl :: UnitGameResources -> IO (String)
getString_impl this = do
    javaCatchReturn $ do
        if (jio (AndroidUtil.isAndroid)) then do
            javaReturn =<< (GameGraphicsResourceUtil.getStringForFeature ((jio (GameGraphicsResourceUtil.getInstance))) (jget ((jio (GraphicsFeatureFactory.getInstance))).sPRITE_QUARTER_ROTATION_GRAPHICS))
        else do
            javaReturn =<< (BasicGameResources.getString_super this.base)


