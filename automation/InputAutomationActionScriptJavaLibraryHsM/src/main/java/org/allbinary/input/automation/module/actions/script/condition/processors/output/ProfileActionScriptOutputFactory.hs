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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module ProfileActionScriptOutputFactory where

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
import qualified ProfileActionScriptOutputInterface -- same package or java.lang
import qualified ImageActionScriptOutputData -- same package or java.lang
import qualified ImageActionScriptOutput -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified Node -- org.w3c.dom.Node

data ProfileActionScriptOutputFactory = ProfileActionScriptOutputFactory
    { header_ :: JavaHeader
    }

instance JavaNull ProfileActionScriptOutputFactory where
    javaNull = javaNullRecord "ProfileActionScriptOutputFactory"

instance JavaEquals ProfileActionScriptOutputFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptOutputFactory where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptOutputFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProfileActionScriptOutputFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ProfileActionScriptOutputFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ProfileActionScriptOutputFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ProfileActionScriptOutputFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProfileActionScriptOutputFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: Node.Node -> IO (ProfileActionScriptOutputInterface.ProfileActionScriptOutputInterface)
getInstance node = do
        profileActionScriptOutputInterface <- newIORef (javaNull)
        if ((jio (DomSearchHelper.getNodeNoThrow (jget ImageActionScriptOutputData.nAME) (jio (Node.getChildNodes node)))) /= javaNull) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ProfileActionScriptOutputInterface.ProfileActionScriptOutputInterface) (ImageActionScriptOutput.new_1 node))
            jset profileActionScriptOutputInterface (assignedValue)
        else do
            javaThrow ((JavaException "Exception" "No Such ActionScript Output"))
        pure ((jget profileActionScriptOutputInterface))


