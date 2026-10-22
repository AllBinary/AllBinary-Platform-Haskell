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
module GraphicItemFactory where

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
import qualified SelectionToolFactory -- same package or java.lang
import qualified GraphicsItemInterfaceFactoryInterface -- same package or java.lang
import qualified LinesGraphicItem -- same package or java.lang
import qualified LinesGraphicItemFactory -- same package or java.lang
import qualified GraphicItemBuilder -- same package or java.lang
import qualified GraphicItemInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified LOGGING -- org.allbinary.log.LOGGING
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Node -- org.w3c.dom.Node

data GraphicItemFactory = GraphicItemFactory
    { header_ :: JavaHeader
    , graphicItems :: IORef (HashMap.HashMap)
    , dEFAULT :: IORef (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
    }

instance JavaNull GraphicItemFactory where
    javaNull = javaNullRecord "GraphicItemFactory"

instance JavaEquals GraphicItemFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicItemFactory where
    (==) = jrecordEquals

instance JavaObjectClass GraphicItemFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GraphicItemFactory
newRecord_ = do
    header_ <- newJavaHeader
    graphicItems <- newIORef javaNull
    dEFAULT <- newIORef javaNull
    let this = GraphicItemFactory header_ graphicItems dEFAULT
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1_overload1" (\() -> getInstance_1_overload1_impl this)
    jregisterMethod header_ "getInstance_1_overload2" (\() -> getInstance_1_overload2_impl this)
    pure this

initFields_ :: GraphicItemFactory -> IO ()
initFields_ this = do
    jset this.graphicItems (javaNull)
    jset this.dEFAULT =<< (fmap (\value_ -> javaCast value_ :: GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface) (SelectionToolFactory.new_))
    pure ()


getInstance :: IO (GraphicItemFactory)
getInstance = do
        pure (GraphicItemFactory.instance_)

new_ :: IO GraphicItemFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GraphicItemFactory -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).graphicItems (assignedValue)
        Control.Monad.void (HashMap.put ((jget (this).graphicItems)) (jio (LinesGraphicItem.getStaticName)) (jio (LinesGraphicItemFactory.new_)))
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance_1 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getInstance_1 this a1
    | jisInstanceOf a1 (javaNull :: String) = getInstance_1_overload1 this (javaCast a1 :: String)
    | jisInstanceOf a1 (javaNull :: BasicArrayList.BasicArrayList) = getInstance_1_overload2 this (javaCast a1 :: BasicArrayList.BasicArrayList)
    | otherwise = getInstance_1_overload2 this (javaCast a1 :: BasicArrayList.BasicArrayList)

getInstance_1_overload1 :: (JavaObjectClass this_) => this_ -> String -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getInstance_1_overload1 object_ a1 = jmethod object_ "getInstance_1_overload1" (\() -> (getInstance_1_overload1_impl (javaCast object_ :: GraphicItemFactory))) () a1

getInstance_1_overload1_super :: (JavaObjectClass this_) => this_ -> String -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getInstance_1_overload1_super object_ a1 = (getInstance_1_overload1_impl (javaCast object_ :: GraphicItemFactory)) a1

getInstance_1_overload1_impl :: GraphicItemFactory -> String -> IO (GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface)
getInstance_1_overload1_impl this itemName = do
        graphicsItemInterfaceFactoryInterface <- newIORef ((javaCast (jio (HashMap.get ((jget (this).graphicItems)) itemName)) :: GraphicsItemInterfaceFactoryInterface.GraphicsItemInterfaceFactoryInterface))
        when ((jget graphicsItemInterfaceFactoryInterface) == javaNull) $ do
            jset graphicsItemInterfaceFactoryInterface ((jget this.dEFAULT))
        pure ((jget graphicsItemInterfaceFactoryInterface))


-- throws Exception
getInstance_1_overload2 :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (HashMap.HashMap)
getInstance_1_overload2 object_ a1 = jmethod object_ "getInstance_1_overload2" (\() -> (getInstance_1_overload2_impl (javaCast object_ :: GraphicItemFactory))) () a1

getInstance_1_overload2_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (HashMap.HashMap)
getInstance_1_overload2_super object_ a1 = (getInstance_1_overload2_impl (javaCast object_ :: GraphicItemFactory)) a1

getInstance_1_overload2_impl :: GraphicItemFactory -> BasicArrayList.BasicArrayList -> IO (HashMap.HashMap)
getInstance_1_overload2_impl this graphicItemNodeList = do
        numberOfItems <- (BasicArrayList.size graphicItemNodeList)
        graphicItemHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        when (jio (LOGGING.contains (LOGGING.mENUEVENT))) $ do
            pure ()
        forM_ [0 .. numberOfItems - 1] $ \index -> javaIteration (pure ()) $ do
            graphicItem <- (GraphicItemBuilder.getInstance (javaCast (jio (BasicArrayList.get graphicItemNodeList index)) :: Node.Node))
            Control.Monad.void (HashMap.put graphicItemHashMap (jio (GraphicItemInterface.getTreeNode graphicItem)) graphicItem)
        pure (graphicItemHashMap)


