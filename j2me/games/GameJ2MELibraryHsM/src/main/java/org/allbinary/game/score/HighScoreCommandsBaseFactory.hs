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
-- package org.allbinary.game.score
module HighScoreCommandsBaseFactory where

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
import qualified Command -- javax.microedition.lcdui.Command
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data HighScoreCommandsBaseFactory = HighScoreCommandsBaseFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , hIGH_SCORE_COMMANDS :: IORef (JavaArray (Command.Command))
    }

instance JavaNull HighScoreCommandsBaseFactory where
    javaNull = javaNullRecord "HighScoreCommandsBaseFactory"

instance JavaEquals HighScoreCommandsBaseFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreCommandsBaseFactory where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreCommandsBaseFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoreCommandsBaseFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    hIGH_SCORE_COMMANDS <- newIORef javaNull
    let this = HighScoreCommandsBaseFactory header_ logUtil hIGH_SCORE_COMMANDS
    jregisterLevel header_ this
    jregisterMethod header_ "isHighScoreCommand" (\() -> isHighScoreCommand_impl this)
    jregisterMethod header_ "getIndex" (\() -> getIndex_impl this)
    pure this

initFields_ :: HighScoreCommandsBaseFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hIGH_SCORE_COMMANDS (javaNull)
    pure ()

new_1 :: JavaArray (Command.Command) -> IO HighScoreCommandsBaseFactory
new_1 hIGH_SCORE_COMMANDS = do
    this <- newRecord_
    init_1 this hIGH_SCORE_COMMANDS
    pure this

init_1 :: HighScoreCommandsBaseFactory -> JavaArray (Command.Command) -> IO ()
init_1 this hIGH_SCORE_COMMANDS = do
        initFields_ this
        jset (this).hIGH_SCORE_COMMANDS (hIGH_SCORE_COMMANDS)
        pure ()


isHighScoreCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Bool)
isHighScoreCommand object_ a1 = jmethod object_ "isHighScoreCommand" (\() -> (isHighScoreCommand_impl (javaCast object_ :: HighScoreCommandsBaseFactory))) () a1

isHighScoreCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Bool)
isHighScoreCommand_super object_ a1 = (isHighScoreCommand_impl (javaCast object_ :: HighScoreCommandsBaseFactory)) a1

isHighScoreCommand_impl :: HighScoreCommandsBaseFactory -> Command.Command -> IO (Bool)
isHighScoreCommand_impl this command = do
    javaCatchReturn $ do
        forM_ [((jlength (jget (this).hIGH_SCORE_COMMANDS)) - 1), ((jlength (jget (this).hIGH_SCORE_COMMANDS)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when (command == (jindex ((jget (this).hIGH_SCORE_COMMANDS)) (index))) $ do
                javaReturn (True)
        pure (False)


-- throws Exception
getIndex :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Int)
getIndex object_ a1 = jmethod object_ "getIndex" (\() -> (getIndex_impl (javaCast object_ :: HighScoreCommandsBaseFactory))) () a1

getIndex_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Int)
getIndex_super object_ a1 = (getIndex_impl (javaCast object_ :: HighScoreCommandsBaseFactory)) a1

getIndex_impl :: HighScoreCommandsBaseFactory -> Command.Command -> IO (Int)
getIndex_impl this command = do
    javaCatchReturn $ do
        forM_ [((jlength (jget (this).hIGH_SCORE_COMMANDS)) - 1), ((jlength (jget (this).hIGH_SCORE_COMMANDS)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when (command == (jindex ((jget (this).hIGH_SCORE_COMMANDS)) (index))) $ do
                javaReturn (index)
        javaThrow ((JavaException "Exception" "No Such Command"))


