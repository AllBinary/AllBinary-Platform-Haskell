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
-- package org.allbinary.game.midlet
module DemoGameMidlet (module DemoGameMidlet, module GameMidlet) where

import GameMidlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isContinue, isContinue_super, isContinue_impl, getHighestLevel, getHighestLevel_super, getHighestLevel_impl, createDemoGameCanvasRunnableInterface, createDemoGameCanvasRunnableInterface_super, createDemoGameCanvasRunnableInterface_impl, createGameCanvasRunnable, createGameCanvasRunnable_super, createGameCanvasRunnable_impl, createGameCanvasRunnableInterface, createGameCanvasRunnableInterface_super, createGameCanvasRunnableInterface_impl, demoSetup, demoSetup_super, demoSetup_impl, postDemoSetup, postDemoSetup_super, postDemoSetup_impl, setDemo, setDemo_super, setDemo_impl, createGame, createGame_super, createGame_impl, isReady, isReady_super, isReady_impl)
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
import qualified Any -- same package or java.lang
import qualified DemoRunnable -- same package or java.lang
import qualified CreateGameRunnable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified GameCanvasRunnableInterface -- org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ClientInformationFactory -- org.allbinary.logic.system.security.licensing.ClientInformationFactory
import qualified PrimaryThreadPool -- org.allbinary.thread.PrimaryThreadPool
import qualified NullGameCanvasRunnable -- org.allbinary.game.displayable.canvas.NullGameCanvasRunnable
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified GameMidlet

data DemoGameMidlet = DemoGameMidlet
    { header_ :: JavaHeader
    , base :: GameMidlet.GameMidlet
    }

instance JavaNull DemoGameMidlet where
    javaNull = javaNullRecord "DemoGameMidlet"

instance JavaEquals DemoGameMidlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameMidlet where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameMidlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DemoGameMidlet
newRecord_ = do
    base <- GameMidlet.newRecord_
    let header_ = base.header_
    let this = DemoGameMidlet header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isContinue" (\() -> isContinue_impl this)
    jregisterMethod header_ "getHighestLevel" (\() -> getHighestLevel_impl this)
    jregisterMethod header_ "createDemoGameCanvasRunnableInterface" (\() -> createDemoGameCanvasRunnableInterface_impl this)
    jregisterMethod header_ "createGameCanvasRunnable" (\() -> createGameCanvasRunnable_impl this)
    jregisterMethod header_ "createGameCanvasRunnableInterface" (\() -> createGameCanvasRunnableInterface_impl this)
    jregisterMethod header_ "demoSetup" (\() -> demoSetup_impl this)
    jregisterMethod header_ "postDemoSetup" (\() -> postDemoSetup_impl this)
    jregisterMethod header_ "setDemo" (\() -> setDemo_impl this)
    jregisterMethod header_ "createGame" (\() -> createGame_impl this)
    jregisterMethod header_ "isReady" (\() -> isReady_impl this)
    pure this

initFields_ :: DemoGameMidlet -> IO ()
initFields_ this = do
    pure ()

new_1 :: ClientInformationFactory.ClientInformationFactory -> IO DemoGameMidlet
new_1 clientInformationFactory = do
    this <- newRecord_
    init_1 this clientInformationFactory
    pure this

init_1 :: DemoGameMidlet -> ClientInformationFactory.ClientInformationFactory -> IO ()
init_1 this clientInformationFactory = do
        GameMidlet.init_1 this.base (clientInformationFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
isContinue :: (JavaObjectClass this_) => this_ -> IO (Bool)
isContinue object_ = jmethod object_ "isContinue" (\() -> (isContinue_impl (javaCast object_ :: DemoGameMidlet))) ()

isContinue_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isContinue_super object_ = (isContinue_impl (javaCast object_ :: DemoGameMidlet))

isContinue_impl :: DemoGameMidlet -> IO (Bool)
isContinue_impl this = do
    javaCatchReturn $ do
        hashtable <- (GameMidlet.getStartStateHashtable this)
        if ((hashtable /= javaNull) && ((jio (ABHashtable.size hashtable)) > 0)) then do
            javaReturn (True)
        else do
            javaReturn (False)


getHighestLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getHighestLevel object_ = jmethod object_ "getHighestLevel" (\() -> (getHighestLevel_impl (javaCast object_ :: DemoGameMidlet))) ()

getHighestLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHighestLevel_super object_ = (getHighestLevel_impl (javaCast object_ :: DemoGameMidlet))

getHighestLevel_impl :: DemoGameMidlet -> IO (Int)
getHighestLevel_impl this = do
        pure (1)


-- throws Exception
createDemoGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createDemoGameCanvasRunnableInterface object_ = jmethod object_ "createDemoGameCanvasRunnableInterface" (\() -> (createDemoGameCanvasRunnableInterface_impl (javaCast object_ :: DemoGameMidlet))) ()

createDemoGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createDemoGameCanvasRunnableInterface_super object_ = (createDemoGameCanvasRunnableInterface_impl (javaCast object_ :: DemoGameMidlet))

createDemoGameCanvasRunnableInterface_impl :: DemoGameMidlet -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createDemoGameCanvasRunnableInterface_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).nOT_IMPLEMENTED) this (jget ((jget (this).base.base.base.commonStrings)).cREATE))
        pure ((javaCast NullGameCanvasRunnable.nULL_GAME_CANVAS_RUNNABLE :: GameCanvasRunnableInterface.GameCanvasRunnableInterface))


-- throws Exception
createGameCanvasRunnable :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createGameCanvasRunnable object_ a1 = jmethod object_ "createGameCanvasRunnable" (\() -> (createGameCanvasRunnable_impl (javaCast object_ :: DemoGameMidlet))) () a1

createGameCanvasRunnable_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createGameCanvasRunnable_super object_ a1 = (createGameCanvasRunnable_impl (javaCast object_ :: DemoGameMidlet)) a1

createGameCanvasRunnable_impl :: DemoGameMidlet -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createGameCanvasRunnable_impl this allBinaryGameLayerManager = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
createGameCanvasRunnableInterface :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createGameCanvasRunnableInterface object_ = jmethod object_ "createGameCanvasRunnableInterface" (\() -> (createGameCanvasRunnableInterface_impl (javaCast object_ :: DemoGameMidlet))) ()

createGameCanvasRunnableInterface_super :: (JavaObjectClass this_) => this_ -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createGameCanvasRunnableInterface_super object_ = (createGameCanvasRunnableInterface_impl (javaCast object_ :: DemoGameMidlet))

createGameCanvasRunnableInterface_impl :: DemoGameMidlet -> IO (GameCanvasRunnableInterface.GameCanvasRunnableInterface)
createGameCanvasRunnableInterface_impl this = do
        (DemoGameMidlet.createGameCanvasRunnable this (jio (GameMidlet.createGameLayerManager this)))


demoSetup :: (JavaObjectClass this_) => this_ -> IO (())
demoSetup object_ = jmethod object_ "demoSetup" (\() -> (demoSetup_impl (javaCast object_ :: DemoGameMidlet))) ()

demoSetup_super :: (JavaObjectClass this_) => this_ -> IO (())
demoSetup_super object_ = (demoSetup_impl (javaCast object_ :: DemoGameMidlet))

demoSetup_impl :: DemoGameMidlet -> IO (())
demoSetup_impl this = do
        pure ()


postDemoSetup :: (JavaObjectClass this_) => this_ -> IO (())
postDemoSetup object_ = jmethod object_ "postDemoSetup" (\() -> (postDemoSetup_impl (javaCast object_ :: DemoGameMidlet))) ()

postDemoSetup_super :: (JavaObjectClass this_) => this_ -> IO (())
postDemoSetup_super object_ = (postDemoSetup_impl (javaCast object_ :: DemoGameMidlet))

postDemoSetup_impl :: DemoGameMidlet -> IO (())
postDemoSetup_impl this = do
        pure ()


-- throws Exception
setDemo :: (JavaObjectClass this_) => this_ -> IO (())
setDemo object_ = jmethod object_ "setDemo" (\() -> (setDemo_impl (javaCast object_ :: DemoGameMidlet))) ()

setDemo_super :: (JavaObjectClass this_) => this_ -> IO (())
setDemo_super object_ = (setDemo_impl (javaCast object_ :: DemoGameMidlet))

setDemo_impl :: DemoGameMidlet -> IO (())
setDemo_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this "setDemo")
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.start progressCanvas)
        Control.Monad.void (ThreadPool.runTask ((jio (PrimaryThreadPool.getInstance))) (jio (DemoRunnable.new_1 this)))
        pure ()


-- throws Exception
createGame :: (JavaObjectClass this_) => this_ -> IO (())
createGame object_ = jmethod object_ "createGame" (\() -> (createGame_impl (javaCast object_ :: DemoGameMidlet))) ()

createGame_super :: (JavaObjectClass this_) => this_ -> IO (())
createGame_super object_ = (createGame_impl (javaCast object_ :: DemoGameMidlet))

createGame_impl :: DemoGameMidlet -> IO (())
createGame_impl this = do
        let cREATE_GAME = "createGame"
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this cREATE_GAME)
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.start progressCanvas)
        hashtable <- (GameMidlet.getStartStateHashtable this)
        Control.Monad.void (GameMidlet.setStartStateHashtable this (jget ((jio (StdUtil.getInstance))).nULL_TABLE))
        Control.Monad.void (ThreadPool.runTask ((jio (PrimaryThreadPool.getInstance))) (jio (CreateGameRunnable.new_2 this hashtable)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eND) this cREATE_GAME)
        pure ()


isReady :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReady object_ = jmethod object_ "isReady" (\() -> (isReady_impl (javaCast object_ :: DemoGameMidlet))) ()

isReady_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReady_super object_ = (isReady_impl (javaCast object_ :: DemoGameMidlet))

isReady_impl :: DemoGameMidlet -> IO (Bool)
isReady_impl this = do
        pure (True)


