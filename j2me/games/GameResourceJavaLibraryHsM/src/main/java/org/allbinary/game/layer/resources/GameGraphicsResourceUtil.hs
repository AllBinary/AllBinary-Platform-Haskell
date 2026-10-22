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
module GameGraphicsResourceUtil where

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
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GraphicsFeature -- org.allbinary.game.configuration.feature.GraphicsFeature
import qualified GraphicsFeatureFactory -- org.allbinary.game.configuration.feature.GraphicsFeatureFactory
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GameGraphicsResourceUtil = GameGraphicsResourceUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , sPRITE :: IORef (String)
    , qUARTER :: IORef (String)
    , name :: IORef (String)
    }

instance JavaNull GameGraphicsResourceUtil where
    javaNull = javaNullRecord "GameGraphicsResourceUtil"

instance JavaEquals GameGraphicsResourceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameGraphicsResourceUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameGraphicsResourceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameGraphicsResourceUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    sPRITE <- newIORef ""
    qUARTER <- newIORef ""
    name <- newIORef ""
    let this = GameGraphicsResourceUtil header_ logUtil sPRITE qUARTER name
    jregisterLevel header_ this
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    jregisterMethod header_ "getStringForFeature" (\() -> getStringForFeature_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: GameGraphicsResourceUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sPRITE ("_sprite")
    jset this.qUARTER ("_quarter")
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()


getInstance :: IO (GameGraphicsResourceUtil)
getInstance = do
        when ((jget GameGraphicsResourceUtil.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameGraphicsResourceUtil.instance_ (assignedValue)
        pure ((javaCast (jget GameGraphicsResourceUtil.instance_) :: GameGraphicsResourceUtil))

new_ :: IO GameGraphicsResourceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameGraphicsResourceUtil -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            assignedValue <- (GameGraphicsResourceUtil.getString this)
            jset (this).name (assignedValue)
        pure ()


-- throws Exception
getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: GameGraphicsResourceUtil))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: GameGraphicsResourceUtil))

getString_impl :: GameGraphicsResourceUtil -> IO (String)
getString_impl this = do
        graphicsFeatureFactory <- (GraphicsFeatureFactory.getInstance)
        graphicsFeature <- newIORef ((jget (graphicsFeatureFactory).nONE))
        features <- (Features.getInstance)
        if (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_TO_ARRAY_GRAPHICS)))) then do
            jset graphicsFeature ((jget (graphicsFeatureFactory).iMAGE_TO_ARRAY_GRAPHICS))
        else if (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).sPRITE_FULL_GRAPHICS)))) then do
            jset graphicsFeature ((jget (graphicsFeatureFactory).sPRITE_FULL_GRAPHICS))
        else if (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).sPRITE_QUARTER_ROTATION_GRAPHICS)))) then do
            jset graphicsFeature ((jget (graphicsFeatureFactory).sPRITE_QUARTER_ROTATION_GRAPHICS))
        else when (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_ROTATION_ON_THE_FLY)))) $ do
            jset graphicsFeature ((jget (graphicsFeatureFactory).iMAGE_ROTATION_ON_THE_FLY))
        (GameGraphicsResourceUtil.getStringForFeature this (jget graphicsFeature))


-- throws Exception
getStringForFeature :: (JavaObjectClass this_) => this_ -> GraphicsFeature.GraphicsFeature -> IO (String)
getStringForFeature object_ a1 = jmethod object_ "getStringForFeature" (\() -> (getStringForFeature_impl (javaCast object_ :: GameGraphicsResourceUtil))) () a1

getStringForFeature_super :: (JavaObjectClass this_) => this_ -> GraphicsFeature.GraphicsFeature -> IO (String)
getStringForFeature_super object_ a1 = (getStringForFeature_impl (javaCast object_ :: GameGraphicsResourceUtil)) a1

getStringForFeature_impl :: GameGraphicsResourceUtil -> GraphicsFeature.GraphicsFeature -> IO (String)
getStringForFeature_impl this graphicsFeature = do
        stringBuffer <- (StringMaker.new_)
        graphicsFeatureFactory <- (GraphicsFeatureFactory.getInstance)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        features <- (Features.getInstance)
        if (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).vECTOR_GRAPHICS)))) then do
            pure ()
        else if (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_GRAPHICS)))) then do
            if ((graphicsFeature == (jget (graphicsFeatureFactory).iMAGE_TO_ARRAY_GRAPHICS)) || (graphicsFeature == (jget (graphicsFeatureFactory).iMAGE_ROTATION_ON_THE_FLY))) then do
                pure ()
            else if (graphicsFeature == (jget (graphicsFeatureFactory).sPRITE_FULL_GRAPHICS)) then do
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPRITE))
            else if (graphicsFeature == (jget (graphicsFeatureFactory).sPRITE_QUARTER_ROTATION_GRAPHICS)) then do
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).qUARTER))
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPRITE))
            else do
                javaThrow ((JavaException "Exception" "None/Unknown Sub Image Resource Type Specified"))
        else if (jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) then do
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CanvasStrings.getInstance))).oBJ_MODEL))
        else do
            javaThrow ((JavaException "Exception" "None/Unknown Main Image Resource Type Specified"))
        (StringMaker.toString stringBuffer)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GameGraphicsResourceUtil))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GameGraphicsResourceUtil))

getName_impl :: GameGraphicsResourceUtil -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


