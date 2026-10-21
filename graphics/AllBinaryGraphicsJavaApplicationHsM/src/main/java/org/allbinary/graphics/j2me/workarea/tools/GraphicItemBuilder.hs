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
module GraphicItemBuilder where

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
import qualified PointsDomUtil -- same package or java.lang
import qualified LinesGraphicItem -- same package or java.lang
import qualified GraphicItemInterface -- same package or java.lang
import qualified Node -- org.w3c.dom.Node

data GraphicItemBuilder = GraphicItemBuilder
    { header_ :: JavaHeader
    }

instance JavaNull GraphicItemBuilder where
    javaNull = javaNullRecord "GraphicItemBuilder"

instance JavaEquals GraphicItemBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicItemBuilder where
    (==) = jrecordEquals

instance JavaObjectClass GraphicItemBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GraphicItemBuilder
newRecord_ = do
    header_ <- newJavaHeader
    let this = GraphicItemBuilder header_
    jregisterLevel header_ this
    pure this

initFields_ :: GraphicItemBuilder -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GraphicItemBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GraphicItemBuilder -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: Node.Node -> IO (GraphicItemInterface.GraphicItemInterface)
getInstance node = do
    javaCatchReturn $ do
        graphicItemName <- (Node.getNodeName node)
        if ((Prelude.fromEnum (Prelude.compare graphicItemName (jget ((jio (PointsDomUtil.getInstance))).lINES)) - 1) == 0) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: GraphicItemInterface.GraphicItemInterface) (LinesGraphicItem.new_1 node))
        else do
            javaThrow ((JavaException "Exception" ("Graphic Item Does Not Exist: " ++ graphicItemName)))


