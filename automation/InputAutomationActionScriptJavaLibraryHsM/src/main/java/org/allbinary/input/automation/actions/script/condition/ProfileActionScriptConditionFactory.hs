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
-- package org.allbinary.input.automation.actions.script.condition
module ProfileActionScriptConditionFactory where

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
import qualified ProfileActionScriptConditionInterface -- same package or java.lang
import qualified ColorAtActionScriptConditionData -- same package or java.lang
import qualified TimeIntervalActionScriptConditionData -- same package or java.lang
import qualified AlwaysActionScriptConditionData -- same package or java.lang
import qualified AlwaysActionScriptCondition -- same package or java.lang
import qualified TimeIntervalActionScriptCondition -- same package or java.lang
import qualified ColorAtActionScriptCondition -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified Node -- org.w3c.dom.Node

data ProfileActionScriptConditionFactory = ProfileActionScriptConditionFactory
    { header_ :: JavaHeader
    }

instance JavaNull ProfileActionScriptConditionFactory where
    javaNull = javaNullRecord "ProfileActionScriptConditionFactory"

instance JavaEquals ProfileActionScriptConditionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptConditionFactory where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptConditionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProfileActionScriptConditionFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ProfileActionScriptConditionFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ProfileActionScriptConditionFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ProfileActionScriptConditionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProfileActionScriptConditionFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: Node.Node -> IO (ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
getInstance node = do
        profileActionScriptConditionInterface <- newIORef (javaNull)
        if ((jio (DomSearchHelper.getNodeNoThrow (jget ColorAtActionScriptConditionData.nAME) (jio (Node.getChildNodes node)))) /= javaNull) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface) (ColorAtActionScriptCondition.new_1 node))
            jset profileActionScriptConditionInterface (assignedValue)
        else if ((jio (DomSearchHelper.getNodeNoThrow (jget TimeIntervalActionScriptConditionData.nAME) (jio (Node.getChildNodes node)))) /= javaNull) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface) (TimeIntervalActionScriptCondition.new_1 node))
            jset profileActionScriptConditionInterface (assignedValue)
        else when ((jio (DomSearchHelper.getNodeNoThrow (jget AlwaysActionScriptConditionData.nAME) (jio (Node.getChildNodes node)))) /= javaNull) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface) (AlwaysActionScriptCondition.new_1 node))
            jset profileActionScriptConditionInterface (assignedValue)
        pure ((jget profileActionScriptConditionInterface))


