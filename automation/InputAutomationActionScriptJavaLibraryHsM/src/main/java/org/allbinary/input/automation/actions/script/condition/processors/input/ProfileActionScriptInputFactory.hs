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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module ProfileActionScriptInputFactory where

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
import qualified ProfileActionScriptInputInterface -- same package or java.lang
import qualified KeyboardActionScriptInputData -- same package or java.lang
import qualified MouseActionScriptInputData -- same package or java.lang
import qualified MouseActionScriptInput -- same package or java.lang
import qualified KeyboardActionScriptInput -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified Node -- org.w3c.dom.Node

data ProfileActionScriptInputFactory = ProfileActionScriptInputFactory
    { header_ :: JavaHeader
    }

instance JavaNull ProfileActionScriptInputFactory where
    javaNull = javaNullRecord "ProfileActionScriptInputFactory"

instance JavaEquals ProfileActionScriptInputFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptInputFactory where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptInputFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProfileActionScriptInputFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ProfileActionScriptInputFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ProfileActionScriptInputFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ProfileActionScriptInputFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProfileActionScriptInputFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: Node.Node -> IO (ProfileActionScriptInputInterface.ProfileActionScriptInputInterface)
getInstance node = do
        profileActionScriptInputInterface <- newIORef (javaNull)
        if ((jio (DomSearchHelper.getNodeNoThrow (jget KeyboardActionScriptInputData.nAME) (jio (Node.getChildNodes node)))) /= javaNull) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ProfileActionScriptInputInterface.ProfileActionScriptInputInterface) (KeyboardActionScriptInput.new_1 node))
            jset profileActionScriptInputInterface (assignedValue)
        else if ((jio (DomSearchHelper.getNodeNoThrow (jget MouseActionScriptInputData.nAME) (jio (Node.getChildNodes node)))) /= javaNull) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ProfileActionScriptInputInterface.ProfileActionScriptInputInterface) (MouseActionScriptInput.new_1 node))
            jset profileActionScriptInputInterface (assignedValue)
        else do
            javaThrow ((JavaException "Exception" "No Such ActionScript Input"))
        pure ((jget profileActionScriptInputInterface))


