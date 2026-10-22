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
-- package org.allbinary.graphics.j2me.workarea.tools
module ToolFactory where

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
import qualified GraphicsItemInterfaceFactoryInterface -- same package or java.lang
import qualified GraphicItemFactory -- same package or java.lang
import qualified StatusFactory -- org.allbinary.graphics.j2me.StatusFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ToolFactory = ToolFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , selectedTool :: IORef (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
    , tool :: IORef (String)
    , sELECTED_LABEL :: IORef (String)
    }

instance JavaNull ToolFactory where
    javaNull = javaNullRecord "ToolFactory"

instance JavaEquals ToolFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ToolFactory where
    (==) = jrecordEquals

instance JavaObjectClass ToolFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ToolFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    selectedTool <- newIORef javaNull
    tool <- newIORef ""
    sELECTED_LABEL <- newIORef ""
    let this = ToolFactory header_ logUtil commonStrings selectedTool tool sELECTED_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "setSelectedTool" (\() -> setSelectedTool_impl this)
    jregisterMethod header_ "getSelectedToolFactory" (\() -> getSelectedToolFactory_impl this)
    pure this

initFields_ :: ToolFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.selectedTool (javaNull)
    jset this.tool (javaNull)
    jset this.sELECTED_LABEL ("Selected: ")
    pure ()

new_ :: IO ToolFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ToolFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ToolFactory)
getInstance = do
        pure (ToolFactory.instance_)


setSelectedTool :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSelectedTool object_ a1 = jmethod object_ "setSelectedTool" (\() -> (setSelectedTool_impl (javaCast object_ :: ToolFactory))) () a1

setSelectedTool_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSelectedTool_super object_ a1 = (setSelectedTool_impl (javaCast object_ :: ToolFactory)) a1

setSelectedTool_impl :: ToolFactory -> String -> IO (())
setSelectedTool_impl this tool = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "setSelectionTool" e)
            ) $ do
            Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) ((jget (this).sELECTED_LABEL) ++ tool))
            jset (this).tool (tool)
        pure ()


getSelectedToolFactory :: (JavaObjectClass this_) => this_ -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getSelectedToolFactory object_ = jmethod object_ "getSelectedToolFactory" (\() -> (getSelectedToolFactory_impl (javaCast object_ :: ToolFactory))) ()

getSelectedToolFactory_super :: (JavaObjectClass this_) => this_ -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getSelectedToolFactory_super object_ = (getSelectedToolFactory_impl (javaCast object_ :: ToolFactory))

getSelectedToolFactory_impl :: ToolFactory -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getSelectedToolFactory_impl this = do
    javaCatchReturn $ do
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) ("Tool In Use: " ++ (jget (this).tool)))
        if ((jget (this).tool) /= javaNull) then do
            assignedValue <- (GraphicItemFactory.getInstance_1 ((jio (GraphicItemFactory.getInstance))) (jget (this).tool))
            jset (this).selectedTool (assignedValue)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("New Tool: " ++ javaToString (jget (this).selectedTool)) this "getSelectedToolFactory")
            javaReturn ((jget (this).selectedTool))
        else do
            javaReturn (javaNull)


