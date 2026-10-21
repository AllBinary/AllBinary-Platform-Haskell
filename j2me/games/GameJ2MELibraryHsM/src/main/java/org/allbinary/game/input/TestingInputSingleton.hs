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
-- package org.allbinary.game.input
module TestingInputSingleton (module TestingInputSingleton, module AllBinaryGameLayer) where

import AllBinaryGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, initInputProcessorsForTestInput, initInputProcessorsForTestInput_super, initInputProcessorsForTestInput_impl, processInputList, processInputList_super, processInputList_impl, processInput, processInput_super, processInput_impl, paint, paint_super, paint_impl, implmentsGameInputInterface, implmentsGameInputInterface_super, implmentsGameInputInterface_impl, instance_, inputProcessorArray, paintable)
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
import qualified GameInputProcessor -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified GameInputProcessorUtil -- same package or java.lang
import qualified TestInputInterface -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryGameLayer -- org.allbinary.game.layer.AllBinaryGameLayer
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified ViewPosition -- org.allbinary.view.ViewPosition
import qualified GameInputInterface

-- implements GameInputInterface
data TestingInputSingleton = TestingInputSingleton
    { header_ :: JavaHeader
    , base :: AllBinaryGameLayer.AllBinaryGameLayer
    , inputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , paintable :: IORef (PaintableInterface.PaintableInterface)
    }

instance JavaNull TestingInputSingleton where
    javaNull = javaNullRecord "TestingInputSingleton"

instance JavaEquals TestingInputSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestingInputSingleton where
    (==) = jrecordEquals

instance JavaObjectClass TestingInputSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO TestingInputSingleton
newRecord_ = do
    base <- AllBinaryGameLayer.newRecord_
    let header_ = base.header_
    inputProcessorArray <- newIORef javaNull
    paintable <- newIORef javaNull
    let this = TestingInputSingleton header_ base inputProcessorArray paintable
    jregisterLevel header_ this
    GameInputInterface.registerInterface_ header_
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "initInputProcessorsForTestInput" (\() -> initInputProcessorsForTestInput_impl this)
    jregisterMethod header_ "processInputList" (\() -> processInputList_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "implmentsGameInputInterface" (\() -> implmentsGameInputInterface_impl this)
    pure this

initFields_ :: TestingInputSingleton -> IO ()
initFields_ this = do
    jset this.inputProcessorArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.paintable =<< (fmap (\value_ -> javaCast value_ :: PaintableInterface.PaintableInterface) (NullPaintable.getInstance))
    pure ()


getInstance :: IO (TestingInputSingleton)
getInstance = do
        pure (TestingInputSingleton.instance_)

new_ :: IO TestingInputSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TestingInputSingleton -> IO ()
init_ this = do
        AllBinaryGameLayer.init_3 this.base (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (RectangleFactory.sINGLETON) (jio (ViewPosition.getInstanceD))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).inputProcessorArray))
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: TestingInputSingleton))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: TestingInputSingleton))

initInputProcessors_impl :: TestingInputSingleton -> IO (())
initInputProcessors_impl this = do
        pure ()


initInputProcessorsForTestInput :: (JavaObjectClass this_) => this_ -> TestInputInterface.TestInputInterface -> IO (())
initInputProcessorsForTestInput object_ a1 = jmethod object_ "initInputProcessorsForTestInput" (\() -> (initInputProcessorsForTestInput_impl (javaCast object_ :: TestingInputSingleton))) () a1

initInputProcessorsForTestInput_super :: (JavaObjectClass this_) => this_ -> TestInputInterface.TestInputInterface -> IO (())
initInputProcessorsForTestInput_super object_ a1 = (initInputProcessorsForTestInput_impl (javaCast object_ :: TestingInputSingleton)) a1

initInputProcessorsForTestInput_impl :: TestingInputSingleton -> TestInputInterface.TestInputInterface -> IO (())
initInputProcessorsForTestInput_impl this aTestInputInterface = do
        let testInputInterface = aTestInputInterface
        jset (this).paintable (testInputInterface)
        assignedValue <- (GameInputProcessor.new_ {- Java anonymous class body: implement it as a record of functions
            -- processEvent
-})
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.uP) (assignedValue)
        assignedValue <- (GameInputProcessor.new_ {- Java anonymous class body: implement it as a record of functions
            -- processEvent
-})
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.dOWN) (assignedValue)
        assignedValue <- (GameInputProcessor.new_ {- Java anonymous class body: implement it as a record of functions
            -- processEvent
-})
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.lEFT) (assignedValue)
        assignedValue <- (GameInputProcessor.new_ {- Java anonymous class body: implement it as a record of functions
            -- processEvent
-})
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.rIGHT) (assignedValue)
        assignedValue <- (GameInputProcessor.new_ {- Java anonymous class body: implement it as a record of functions
            -- processEvent
-})
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM7) (assignedValue)
        assignedValue <- (GameInputProcessor.new_ {- Java anonymous class body: implement it as a record of functions
            -- processEvent
-})
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM9) (assignedValue)
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).inputProcessorArray))
        pure ()


-- throws Exception
processInputList :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> BasicArrayList.BasicArrayList -> IO (())
processInputList object_ a1 a2 = jmethod object_ "processInputList" (\() -> (processInputList_impl (javaCast object_ :: TestingInputSingleton))) () a1 a2

processInputList_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> BasicArrayList.BasicArrayList -> IO (())
processInputList_super object_ a1 a2 = (processInputList_impl (javaCast object_ :: TestingInputSingleton)) a1 a2

processInputList_impl :: TestingInputSingleton -> AllBinaryLayerManager.AllBinaryLayerManager -> BasicArrayList.BasicArrayList -> IO (())
processInputList_impl this allbinaryLayerManager list = do
        key <- newIORef (0)
        gameKeyEvent <- newIORef (javaNull)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameKeyEvent (((javaCast (jindex ((jget (list).objectArray)) (index)) :: GameKeyEvent.GameKeyEvent)))
            assignedValue <- (GameKeyEvent.getKey ((jget gameKeyEvent)))
            jset key (assignedValue)
            Control.Monad.void (processEvent ((jindex ((jget (this).inputProcessorArray)) ((jget key)))) allbinaryLayerManager (GameKeyEvent.nONE))
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: TestingInputSingleton))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: TestingInputSingleton)) a1

processInput_impl :: TestingInputSingleton -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this allbinaryLayerManager = do
        Control.Monad.void (TestingInputSingleton.processInputList this allbinaryLayerManager (jio (AllBinaryGameLayer.getGameKeyEventList this)))
        Control.Monad.void (BasicArrayList.clear ((jio (AllBinaryGameLayer.getGameKeyEventList this))))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TestingInputSingleton))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TestingInputSingleton)) a1

paint_impl :: TestingInputSingleton -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (PaintableInterface.paint ((jget (this).paintable)) graphics)
        pure ()


implmentsGameInputInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface object_ = jmethod object_ "implmentsGameInputInterface" (\() -> (implmentsGameInputInterface_impl (javaCast object_ :: TestingInputSingleton))) ()

implmentsGameInputInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface_super object_ = (implmentsGameInputInterface_impl (javaCast object_ :: TestingInputSingleton))

implmentsGameInputInterface_impl :: TestingInputSingleton -> IO (Bool)
implmentsGameInputInterface_impl this = do
        pure (True)


