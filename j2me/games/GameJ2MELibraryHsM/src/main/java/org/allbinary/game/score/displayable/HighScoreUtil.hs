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
-- package org.allbinary.game.score.displayable
module HighScoreUtil where

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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified HighScore -- org.allbinary.game.score.HighScore
import qualified HighScoreNamePersistanceSingleton -- org.allbinary.game.score.HighScoreNamePersistanceSingleton
import qualified HighScores -- org.allbinary.game.score.HighScores
import qualified HighScoresFactoryInterface -- org.allbinary.game.score.HighScoresFactoryInterface
import qualified HighScoresHelperBaseInterface -- org.allbinary.game.score.HighScoresHelperBaseInterface
import qualified HighScoresResultsListener -- org.allbinary.game.score.HighScoresResultsListener
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements HighScoresResultsListener
data HighScoreUtil = HighScoreUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , highScoresFactoryInterface :: IORef (HighScoresFactoryInterface.HighScoresFactoryInterface)
    , highScoresArray :: IORef (JavaArray (HighScores.HighScores))
    , highScore :: IORef (HighScore.HighScore)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , gameInfo :: IORef (GameInfo.GameInfo)
    , highScoresHelper :: IORef (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
    , firstTime :: IORef (Bool)
    }

instance JavaNull HighScoreUtil where
    javaNull = javaNullRecord "HighScoreUtil"

instance JavaEquals HighScoreUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreUtil where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sUBMIT_TEXTBOX_COMMAND #-}
sUBMIT_TEXTBOX_COMMAND = unsafePerformIO ((Command.new_4 "Submit" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoreUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    highScoresFactoryInterface <- newIORef javaNull
    highScoresArray <- newIORef javaNull
    highScore <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    gameInfo <- newIORef javaNull
    highScoresHelper <- newIORef javaNull
    firstTime <- newIORef False
    let this = HighScoreUtil header_ logUtil commonStrings highScoresFactoryInterface highScoresArray highScore abeClientInformation gameInfo highScoresHelper firstTime
    jregisterLevel header_ this
    HighScoresResultsListener.registerInterface_ header_
    jregisterMethod header_ "setHighScoresArray" (\() -> setHighScoresArray_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "saveHighScore" (\() -> saveHighScore_impl this)
    jregisterMethod header_ "submit" (\() -> submit_impl this)
    pure this

initFields_ :: HighScoreUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.highScoresFactoryInterface (javaNull)
    jset this.highScoresArray (javaNull)
    jset this.highScore (javaNull)
    jset this.abeClientInformation (javaNull)
    jset this.gameInfo (javaNull)
    jset this.highScoresHelper (javaNull)
    jset this.firstTime (True)
    pure ()

new_7 :: HighScoresFactoryInterface.HighScoresFactoryInterface -> HighScoresHelperBaseInterface.HighScoresHelperBaseInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> CommandListener.CommandListener -> String -> HighScore.HighScore -> IO HighScoreUtil
new_7 highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore = do
    this <- newRecord_
    init_7 this highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore
    pure this

init_7 :: HighScoreUtil -> HighScoresFactoryInterface.HighScoresFactoryInterface -> HighScoresHelperBaseInterface.HighScoresHelperBaseInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> CommandListener.CommandListener -> String -> HighScore.HighScore -> IO ()
init_7 this highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore = do
        initFields_ this
        jset (this).highScoresFactoryInterface (highScoresFactoryInterface)
        jset (this).highScoresHelper (highScoresHelper)
        assignedValue <- (HighScoresHelperBaseInterface.getHighScoresArray ((jget (this).highScoresHelper)))
        jset (this).highScoresArray (assignedValue)
        jset (this).highScore (highScore)
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).gameInfo (gameInfo)
        pure ()


setHighScoresArray :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray object_ a1 = jmethod object_ "setHighScoresArray" (\() -> (setHighScoresArray_impl (javaCast object_ :: HighScoreUtil))) () a1

setHighScoresArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_super object_ a1 = (setHighScoresArray_impl (javaCast object_ :: HighScoreUtil)) a1

setHighScoresArray_impl :: HighScoreUtil -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_impl this highScoresArray = do
        jset (this).highScoresArray (highScoresArray)
        jset (this).firstTime (False)
        Control.Monad.void (HighScoreUtil.saveHighScore this)
        pure ()


update :: (JavaObjectClass this_) => this_ -> String -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: HighScoreUtil))) () a1

update_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: HighScoreUtil)) a1

update_impl :: HighScoreUtil -> String -> IO (())
update_impl this name = do
        Control.Monad.void (HighScoreNamePersistanceSingleton.save ((jio (HighScoreNamePersistanceSingleton.getInstance))) (jget (this).abeClientInformation) (jget (this).gameInfo) name)
        Control.Monad.void (HighScore.setName ((jget (this).highScore)) name)
        pure ()


saveHighScore :: (JavaObjectClass this_) => this_ -> IO (())
saveHighScore object_ = jmethod object_ "saveHighScore" (\() -> (saveHighScore_impl (javaCast object_ :: HighScoreUtil))) ()

saveHighScore_super :: (JavaObjectClass this_) => this_ -> IO (())
saveHighScore_super object_ = (saveHighScore_impl (javaCast object_ :: HighScoreUtil))

saveHighScore_impl :: HighScoreUtil -> IO (())
saveHighScore_impl this = do
    javaCatchReturn $ do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).commonStrings)).sTART)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).highScore)))))))) this "saveHighScore")
        let size = (jlength (jget (this).highScoresArray))
        when ((jget (this).firstTime) && (size == 0)) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Games canvas did not give us any HighScores" this "saveHighScore")
            Control.Monad.void (HighScoresFactoryInterface.fetchHighScores ((jget (this).highScoresFactoryInterface)) (jget (this).gameInfo) this)
            javaReturn (())
        highScores <- newIORef (javaNull)
        highScoresAsString <- newIORef ("")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset highScores ((jindex ((jget (this).highScoresArray)) (index)))
            Control.Monad.void (HighScores.addHighScore ((jget highScores)) (jget (this).highScore))
            assignedValue <- (HighScores.toString ((jget highScores)))
            jset highScoresAsString (assignedValue)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Added/Adding Score: "))) (jget highScoresAsString)))))) this "saveHighScore")
        Control.Monad.void (HighScoresHelperBaseInterface.setHighScoresArray ((jget (this).highScoresHelper)) (jget (this).highScoresArray))
    pure ()


submit :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
submit object_ a1 = jmethod object_ "submit" (\() -> (submit_impl (javaCast object_ :: HighScoreUtil))) () a1

submit_super :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
submit_super object_ a1 = (submit_impl (javaCast object_ :: HighScoreUtil)) a1

submit_impl :: HighScoreUtil -> MyCanvas.MyCanvas -> IO (())
submit_impl this myCanvas = do
        commandListener <- (MyCanvas.getCustomCommandListener myCanvas)
        Control.Monad.void (CommandListener.commandAction commandListener (HighScoreUtil.sUBMIT_TEXTBOX_COMMAND) myCanvas)
        pure ()


