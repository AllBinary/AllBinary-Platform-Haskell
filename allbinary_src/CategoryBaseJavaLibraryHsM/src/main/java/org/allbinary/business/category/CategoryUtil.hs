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
-- package org.allbinary.business.category
module CategoryUtil where

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
import qualified CategoryData -- same package or java.lang
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringUtils -- org.apache.commons.lang3.StringUtils
import qualified Attr -- org.w3c.dom.Attr
import qualified NamedNodeMap -- org.w3c.dom.NamedNodeMap
import qualified Node -- org.w3c.dom.Node

data CategoryUtil = CategoryUtil
    { header_ :: JavaHeader
    }

instance JavaNull CategoryUtil where
    javaNull = javaNullRecord "CategoryUtil"

instance JavaEquals CategoryUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryUtil where
    (==) = jrecordEquals

instance JavaObjectClass CategoryUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = CategoryUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: CategoryUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CategoryUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CategoryUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getPathLevel :: AbPath.AbPath -> IO (Int)
getPathLevel categoryPath = do
        count <- (StringUtils.countMatches (jio (AbPath.toString categoryPath)) (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        pure (count)


getNameFromNode :: Node.Node -> IO (String)
getNameFromNode node = do
    javaCatchReturn $ do
        attributes <- (Node.getAttributes node)
        let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem attributes (jget ((jio (CategoryData.getInstance))).lABEL))) :: Attr.Attr)
        if (attrNode /= javaNull) then do
            javaReturn =<< (Attr.getValue attrNode)
        else do
            labelNode <- (DomSearchHelper.getNodeNoThrow (jget ((jio (CategoryData.getInstance))).lABEL) (jio (Node.getChildNodes node)))
            when (labelNode /= javaNull) $ do
                javaReturn =<< (DomNodeHelper.getTextNodeValue labelNode)
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


