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
-- package org.allbinary.graphics.form.item
module CommandTextItemArrayFactory where

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
import qualified CommandTextItem -- same package or java.lang
import qualified ABCustomItem -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified ImageItem -- javax.microedition.lcdui.ImageItem
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified ScreenInfo -- org.allbinary.graphics.form.ScreenInfo
import qualified VectorUtil -- org.allbinary.logic.VectorUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CommandTextItemArrayFactory = CommandTextItemArrayFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    , visitorInterface :: IORef (Visitor.Visitor)
    }

instance JavaNull CommandTextItemArrayFactory where
    javaNull = javaNullRecord "CommandTextItemArrayFactory"

instance JavaEquals CommandTextItemArrayFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandTextItemArrayFactory where
    (==) = jrecordEquals

instance JavaObjectClass CommandTextItemArrayFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommandTextItemArrayFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    visitorInterface <- newIORef javaNull
    let this = CommandTextItemArrayFactory header_ list visitorInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: CommandTextItemArrayFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.visitorInterface (javaNull)
    pure ()

new_1 :: Visitor.Visitor -> IO CommandTextItemArrayFactory
new_1 visitorInterface = do
    this <- newRecord_
    init_1 this visitorInterface
    pure this

init_1 :: CommandTextItemArrayFactory -> Visitor.Visitor -> IO ()
init_1 this visitorInterface = do
        initFields_ this
        jset (this).visitorInterface (visitorInterface)
        pure ()


getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (JavaArray (ABCustomItem.ABCustomItem))
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CommandTextItemArrayFactory))) () (jtoObject a1) a2 a3

getInstance_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (JavaArray (ABCustomItem.ABCustomItem))
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: CommandTextItemArrayFactory)) (jtoObject a1) a2 a3

getInstance_impl :: CommandTextItemArrayFactory -> JavaObject -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (JavaArray (ABCustomItem.ABCustomItem))
getInstance_impl this vectorObject_ backgroundBasicColor foregroundBasicColor = do
        let vector = jtoObject vectorObject_
        vectorUtil <- (VectorUtil.getInstance)
        size <- (VectorUtil.getSize vectorUtil vector)
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        textItem <- newIORef (javaNull)
        priorityLimit <- newIORef (7)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        let isLargeEnoughDisplayForBigMenu = ((((jio (DisplayInfoSingleton.isPortrait displayInfo)) && ((jio (DisplayInfoSingleton.getLastHeight displayInfo)) >= (jget ((jio (ScreenInfo.getInstance))).mEDIUM_WIDTH)))) || (((Prelude.not (jio (DisplayInfoSingleton.isPortrait displayInfo))) && ((jio (DisplayInfoSingleton.getLastWidth displayInfo)) >= (jget ((jio (ScreenInfo.getInstance))).mEDIUM_WIDTH)))))
        when ((Prelude.not isLargeEnoughDisplayForBigMenu) && (size > 3)) $ do
            jset priorityLimit (3)
        command <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset command ((javaCast (jio (VectorUtil.elementAt vectorUtil vector index)) :: Command.Command))
            when ((jio (Command.getPriority ((jget command)))) < (jget priorityLimit)) $ do
                let aBoolean = (javaCast (jio (Visitor.visit ((jget (this).visitorInterface)) (jget command))) :: Bool)
                when aBoolean $ do
                    assignedValue <- (CommandTextItem.new_5 (jget command) (ImageItem.lAYOUT_DEFAULT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) backgroundBasicColor foregroundBasicColor)
                    jset textItem (assignedValue)
                    Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget textItem))
        let textItemArray = (jnewArray ((jio (BasicArrayList.size ((jget (this).list))))) javaNull)
        let size2 = (jlength textItemArray)
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex textItemArray (index) ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: ABCustomItem.ABCustomItem))
        pure (textItemArray)


