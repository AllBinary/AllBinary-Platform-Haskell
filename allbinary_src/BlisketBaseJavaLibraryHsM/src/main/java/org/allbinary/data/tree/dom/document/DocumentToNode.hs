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
-- package org.allbinary.data.tree.dom.document
module DocumentToNode where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace

data DocumentToNode = DocumentToNode
    { header_ :: JavaHeader
    }

instance JavaNull DocumentToNode where
    javaNull = javaNullRecord "DocumentToNode"

instance JavaEquals DocumentToNode where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DocumentToNode where
    (==) = jrecordEquals

instance JavaObjectClass DocumentToNode where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

xMLROOT = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

xMLROOTSTART = "<?xml"

xMLROOTEND = "?>"

xMLJSPROOTSTART = "<jsp:root"

xMLEND = ">"

xMLJSPROOTENDSTART = "</jsp:root"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DocumentToNode
newRecord_ = do
    header_ <- newJavaHeader
    let this = DocumentToNode header_
    jregisterLevel header_ this
    pure this

initFields_ :: DocumentToNode -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DocumentToNode
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DocumentToNode -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
convertDocumentToNodeString :: String -> IO (String)
convertDocumentToNodeString documentString = do
        documentString <- newIORef documentString
        assignedValue <- (DocumentToNode.remove (jget documentString) (DocumentToNode.xMLJSPROOTSTART) (DocumentToNode.xMLEND))
        jset documentString (assignedValue)
        assignedValue <- (DocumentToNode.remove (jget documentString) (DocumentToNode.xMLJSPROOTENDSTART) (DocumentToNode.xMLEND))
        jset documentString (assignedValue)
        replaceXmlRoot <- (Replace.new_2 xMLROOT (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        (Replace.all replaceXmlRoot (jget documentString))


removeXmlDefinitionFromDocumentString :: String -> IO (String)
removeXmlDefinitionFromDocumentString documentString = do
        (DocumentToNode.remove documentString xMLROOTSTART xMLROOTEND)


remove :: String -> String -> String -> IO (String)
remove documentString start end = do
    javaCatchReturn $ do
        startIndex <- newIORef (0)
        fix $ \loop -> when (((jassign startIndex ((jstringIndexOf documentString start 0)))) /= (Prelude.negate 1)) $ javaIteration (loop) $ do
            when ((jget startIndex) >= 0) $ do
                let endIndex = (jstringIndexOf documentString end (jget startIndex))
                when (endIndex >= 0) $ do
                    let startString = (Prelude.take (((jget startIndex)) - (0)) (Prelude.drop (0) documentString))
                    let resultString = (Prelude.drop (endIndex + 1) documentString)
                    javaReturn ((startString ++ resultString))
        pure (documentString)


