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
-- package org.allbinary.game.input.mapping
module InputToGameKeyMapping (module InputToGameKeyMapping, module InputMapping) where

import InputMapping hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullInstance, getNullInstance_super, getNullInstance_impl, clear, clear_super, clear_impl, removeAll, removeAll_super, removeAll_impl, addMapping, addMapping_super, addMapping_impl, addAll, addAll_super, addAll_impl, add, add_super, add_impl, remove, remove_super, remove_impl, set, set_super, set_impl, getMaxMappable, getMaxMappable_super, getMaxMappable_impl, getReverseInstance, getReverseInstance_super, getReverseInstance_impl, initGameKey, initGameKey_super, initGameKey_impl, getSmallestCanvasGameKeyCode, getSmallestCanvasGameKeyCode_super, getSmallestCanvasGameKeyCode_impl, init, init_super, init_impl, getInstanceForCanvas, getInstanceForCanvas_super, getInstanceForCanvas_impl, getInstance, getInstance_super, getInstance_impl, instance_, gameKeyFactory, mappedGameKeys, platformToGameKeyMapping, negativePlatformToGameKeyMapping)
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
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified InputMapping

data InputToGameKeyMapping = InputToGameKeyMapping
    { header_ :: JavaHeader
    , base :: InputMapping.InputMapping
    , gameKeyFactory :: IORef (GameKeyFactory.GameKeyFactory)
    , mappedGameKeys :: IORef (JavaArray (GameKey.GameKey))
    , platformToGameKeyMapping :: IORef (JavaArray (GameKey.GameKey))
    , negativePlatformToGameKeyMapping :: IORef (JavaArray (GameKey.GameKey))
    }

instance JavaNull InputToGameKeyMapping where
    javaNull = javaNullRecord "InputToGameKeyMapping"

instance JavaEquals InputToGameKeyMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputToGameKeyMapping where
    (==) = jrecordEquals

instance JavaObjectClass InputToGameKeyMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO InputToGameKeyMapping
newRecord_ = do
    base <- InputMapping.newRecord_
    let header_ = base.header_
    gameKeyFactory <- newIORef javaNull
    mappedGameKeys <- newIORef javaNull
    platformToGameKeyMapping <- newIORef javaNull
    negativePlatformToGameKeyMapping <- newIORef javaNull
    let this = InputToGameKeyMapping header_ base gameKeyFactory mappedGameKeys platformToGameKeyMapping negativePlatformToGameKeyMapping
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "removeAll" (\() -> removeAll_impl this)
    jregisterMethod header_ "addMapping" (\() -> addMapping_impl this)
    jregisterMethod header_ "addAll" (\() -> addAll_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "getMaxMappable" (\() -> getMaxMappable_impl this)
    jregisterMethod header_ "getReverseInstance" (\() -> getReverseInstance_impl this)
    jregisterMethod header_ "initGameKey" (\() -> initGameKey_impl this)
    jregisterMethod header_ "getSmallestCanvasGameKeyCode" (\() -> getSmallestCanvasGameKeyCode_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceForCanvas" (\() -> getInstanceForCanvas_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: InputToGameKeyMapping -> IO ()
initFields_ this = do
    jset this.gameKeyFactory =<< (GameKeyFactory.getInstance)
    jset this.mappedGameKeys ((jarrayFromList [(jget ((jget (this).gameKeyFactory)).uP), (jget ((jget (this).gameKeyFactory)).dOWN), (jget ((jget (this).gameKeyFactory)).lEFT), (jget ((jget (this).gameKeyFactory)).rIGHT)]))
    jset this.platformToGameKeyMapping ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.negativePlatformToGameKeyMapping ((jnewArray (0) javaNull))
    pure ()


getNullInstance :: IO (InputToGameKeyMapping)
getNullInstance = do
        when ((jget InputToGameKeyMapping.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset InputToGameKeyMapping.instance_ (assignedValue)
        pure ((javaCast (jget InputToGameKeyMapping.instance_) :: InputToGameKeyMapping))

new_ :: IO InputToGameKeyMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputToGameKeyMapping -> IO ()
init_ this = do
        InputMapping.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (InputToGameKeyMapping.clear this)
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: InputToGameKeyMapping))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: InputToGameKeyMapping))

clear_impl :: InputToGameKeyMapping -> IO (())
clear_impl this = do
        forM_ [((jlength (jget (this).platformToGameKeyMapping)) - 1), ((jlength (jget (this).platformToGameKeyMapping)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).platformToGameKeyMapping)) (index) ((jget ((jget (this).gameKeyFactory)).nONE))
        pure ()


removeAll :: (JavaObjectClass this_) => this_ -> IO (())
removeAll object_ = jmethod object_ "removeAll" (\() -> (removeAll_impl (javaCast object_ :: InputToGameKeyMapping))) ()

removeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAll_super object_ = (removeAll_impl (javaCast object_ :: InputToGameKeyMapping))

removeAll_impl :: InputToGameKeyMapping -> IO (())
removeAll_impl this = do
        Control.Monad.void (InputMapping.removeAll_super this.base)
        Control.Monad.void (InputToGameKeyMapping.clear this)
        pure ()


addMapping :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping -> IO (())
addMapping object_ a1 = jmethod object_ "addMapping" (\() -> (addMapping_impl (javaCast object_ :: InputToGameKeyMapping))) () a1

addMapping_super :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping -> IO (())
addMapping_super object_ a1 = (addMapping_impl (javaCast object_ :: InputToGameKeyMapping)) a1

addMapping_impl :: InputToGameKeyMapping -> InputToGameKeyMapping -> IO (())
addMapping_impl this inputToGameKeyMapping = do
        forM_ [((jio (InputToGameKeyMapping.getMaxMappable inputToGameKeyMapping)) - 1), ((jio (InputToGameKeyMapping.getMaxMappable inputToGameKeyMapping)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            input <- (fmap (\value_ -> javaCast value_ :: Input.Input) (InputToGameKeyMapping.getInstance inputToGameKeyMapping index))
            when ((jtoObject input) /= (jtoObject (jget ((jget (this).gameKeyFactory)).nONE))) $ do
                Control.Monad.void (InputToGameKeyMapping.addAll this input (jio (InputToGameKeyMapping.getMappedInput inputToGameKeyMapping input)))
        pure ()


addAll :: (JavaObjectClass this_) => this_ -> Input.Input -> BasicArrayList.BasicArrayList -> IO (())
addAll object_ a1 a2 = jmethod object_ "addAll" (\() -> (addAll_impl (javaCast object_ :: InputToGameKeyMapping))) () a1 a2

addAll_super :: (JavaObjectClass this_) => this_ -> Input.Input -> BasicArrayList.BasicArrayList -> IO (())
addAll_super object_ a1 a2 = (addAll_impl (javaCast object_ :: InputToGameKeyMapping)) a1 a2

addAll_impl :: InputToGameKeyMapping -> Input.Input -> BasicArrayList.BasicArrayList -> IO (())
addAll_impl this input list = do
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let mappedToInput = (javaCast (jindex ((jget (list).objectArray)) (index)) :: Input.Input)
            Control.Monad.void (InputToGameKeyMapping.add this input mappedToInput)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InputToGameKeyMapping))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: InputToGameKeyMapping)) a1 a2

add_impl :: InputToGameKeyMapping -> Input.Input -> Input.Input -> IO (())
add_impl this input mappedToInput = do
        Control.Monad.void (InputMapping.add_super this.base input mappedToInput)
        Control.Monad.void (InputToGameKeyMapping.set this input mappedToInput)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: InputToGameKeyMapping))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: InputToGameKeyMapping)) a1 a2

remove_impl :: InputToGameKeyMapping -> Input.Input -> Input.Input -> IO (())
remove_impl this input mappedToInput = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) input))))) " == "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) mappedToInput))))))) this "InputToGameKeyMapping::remove")
        Control.Monad.void (InputMapping.remove_super this.base input mappedToInput)
        Control.Monad.void (InputToGameKeyMapping.set this input (javaCast (jget ((jget (this).gameKeyFactory)).nONE)))
        pure ()


set :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
set object_ a1 a2 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: InputToGameKeyMapping))) () a1 a2

set_super :: (JavaObjectClass this_) => this_ -> Input.Input -> Input.Input -> IO (())
set_super object_ a1 a2 = (set_impl (javaCast object_ :: InputToGameKeyMapping)) a1 a2

set_impl :: InputToGameKeyMapping -> Input.Input -> Input.Input -> IO (())
set_impl this input mappedToInput = do
        id <- (Input.getId mappedToInput)
        when ((id >= 0) && (id < (jlength (jget (this).platformToGameKeyMapping)))) $ do
            jsetIndex ((jget (this).platformToGameKeyMapping)) (id) ((javaCast input :: GameKey.GameKey))
        pure ()


getMaxMappable :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxMappable object_ = jmethod object_ "getMaxMappable" (\() -> (getMaxMappable_impl (javaCast object_ :: InputToGameKeyMapping))) ()

getMaxMappable_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxMappable_super object_ = (getMaxMappable_impl (javaCast object_ :: InputToGameKeyMapping))

getMaxMappable_impl :: InputToGameKeyMapping -> IO (Int)
getMaxMappable_impl this = do
        pure ((jlength (jget (this).platformToGameKeyMapping)))


getReverseInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
getReverseInstance object_ a1 = jmethod object_ "getReverseInstance" (\() -> (getReverseInstance_impl (javaCast object_ :: InputToGameKeyMapping))) () a1

getReverseInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
getReverseInstance_super object_ a1 = (getReverseInstance_impl (javaCast object_ :: InputToGameKeyMapping)) a1

getReverseInstance_impl :: InputToGameKeyMapping -> Int -> IO (BasicArrayList.BasicArrayList)
getReverseInstance_impl this id = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        inputFactory <- (InputFactory.getInstance)
        forM_ [0 .. (jlength (jget (this).platformToGameKeyMapping)) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jio (getId ((jindex ((jget (this).platformToGameKeyMapping)) (index))))) == id) $ do
                input <- (InputFactory.getInstanceById inputFactory index)
                when (input /= javaNull) $ do
                    Control.Monad.void (BasicArrayList.add list input)
        pure (list)


-- throws Exception
initGameKey :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> GameKey.GameKey -> IO (())
initGameKey object_ a1 a2 = jmethod object_ "initGameKey" (\() -> (initGameKey_impl (javaCast object_ :: InputToGameKeyMapping))) () a1 a2

initGameKey_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> GameKey.GameKey -> IO (())
initGameKey_super object_ a1 a2 = (initGameKey_impl (javaCast object_ :: InputToGameKeyMapping)) a1 a2

initGameKey_impl :: InputToGameKeyMapping -> Canvas.Canvas -> GameKey.GameKey -> IO (())
initGameKey_impl this canvas gameKey = do
        key <- (Canvas.getKeyCode canvas (jio (GameKey.getId gameKey)))
        if ((key < 0) && ((Prelude.negate key) < (jlength (jget (this).negativePlatformToGameKeyMapping)))) then do
            jsetIndex ((jget (this).negativePlatformToGameKeyMapping)) ((Prelude.negate key)) (gameKey)
        else if (key > 0) then do
            when ((jindex ((jget (this).platformToGameKeyMapping)) (key)) == (jget ((jget (this).gameKeyFactory)).nONE)) $ do
                jsetIndex ((jget (this).platformToGameKeyMapping)) (key) (gameKey)
        else do
            Control.Monad.void (PreLogUtil.putOE (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (GameKey.toString gameKey))))) (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))) key))))) this (jget ((jget (this).base.commonStrings)).iNIT) (JavaException "Exception" ""))
        pure ()


-- throws Exception
getSmallestCanvasGameKeyCode :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (Int)
getSmallestCanvasGameKeyCode object_ a1 = jmethod object_ "getSmallestCanvasGameKeyCode" (\() -> (getSmallestCanvasGameKeyCode_impl (javaCast object_ :: InputToGameKeyMapping))) () a1

getSmallestCanvasGameKeyCode_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (Int)
getSmallestCanvasGameKeyCode_super object_ a1 = (getSmallestCanvasGameKeyCode_impl (javaCast object_ :: InputToGameKeyMapping)) a1

getSmallestCanvasGameKeyCode_impl :: InputToGameKeyMapping -> Canvas.Canvas -> IO (Int)
getSmallestCanvasGameKeyCode_impl this canvas = do
        nextKey <- newIORef (0)
        smallestKey <- newIORef (0)
        index <- newIORef ((jlength (jget (this).mappedGameKeys)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (Canvas.getKeyCode canvas (jio (getId ((jindex ((jget (this).mappedGameKeys)) ((jget index)))))))
            jset nextKey (assignedValue)
            when ((jget nextKey) < (jget smallestKey)) $ do
                jset smallestKey ((jget nextKey))
        pure ((jget smallestKey))


init :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputToGameKeyMapping))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: InputToGameKeyMapping)) a1

init_impl :: InputToGameKeyMapping -> Canvas.Canvas -> IO (())
init_impl this canvas = do
        handle (\(t :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).iNIT) t)
            ) $ do
            negativePlatformToGameKeyMapping <- newIORef ((jnewArray (0) javaNull))
            smallestKey <- newIORef =<< (InputToGameKeyMapping.getSmallestCanvasGameKeyCode this canvas)
            when ((jget smallestKey) < 0) $ do
                jset smallestKey ((jget smallestKey) - 1)
                when ((jget smallestKey) < (Prelude.negate 256)) $ do
                    jset smallestKey ((Prelude.negate 256))
                jset negativePlatformToGameKeyMapping ((jnewArray ((Prelude.negate (jget smallestKey))) javaNull))
                index <- newIORef ((jlength (jget negativePlatformToGameKeyMapping)))
                fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                    jsetIndex ((jget negativePlatformToGameKeyMapping)) ((jget index)) ((jget ((jget (this).gameKeyFactory)).nONE))
                jset (this).negativePlatformToGameKeyMapping ((jget negativePlatformToGameKeyMapping))
            index <- newIORef ((jlength (jget (this).mappedGameKeys)))
            fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                Control.Monad.void (InputToGameKeyMapping.initGameKey this canvas (jindex ((jget (this).mappedGameKeys)) ((jget index))))
        pure ()


getInstanceForCanvas :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> IO (GameKey.GameKey)
getInstanceForCanvas object_ a1 a2 = jmethod object_ "getInstanceForCanvas" (\() -> (getInstanceForCanvas_impl (javaCast object_ :: InputToGameKeyMapping))) () a1 a2

getInstanceForCanvas_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> IO (GameKey.GameKey)
getInstanceForCanvas_super object_ a1 a2 = (getInstanceForCanvas_impl (javaCast object_ :: InputToGameKeyMapping)) a1 a2

getInstanceForCanvas_impl :: InputToGameKeyMapping -> Canvas.Canvas -> Int -> IO (GameKey.GameKey)
getInstanceForCanvas_impl this canvas id = do
    javaCatchReturn $ do
        if ((id >= 0) && (id < (jlength (jget (this).platformToGameKeyMapping)))) then do
            javaReturn ((jindex ((jget (this).platformToGameKeyMapping)) (id)))
        else if ((id < 0) && ((Prelude.negate id) < (jlength (jget (this).negativePlatformToGameKeyMapping)))) then do
            javaReturn ((jindex ((jget (this).negativePlatformToGameKeyMapping)) ((Prelude.negate id))))
        else do
            javaReturn ((jget ((jget (this).gameKeyFactory)).nONE))


getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (GameKey.GameKey)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: InputToGameKeyMapping))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (GameKey.GameKey)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: InputToGameKeyMapping)) a1

getInstance_impl :: InputToGameKeyMapping -> Int -> IO (GameKey.GameKey)
getInstance_impl this id = do
    javaCatchReturn $ do
        if ((id >= 0) && (id < (jlength (jget (this).platformToGameKeyMapping)))) then do
            javaReturn ((jindex ((jget (this).platformToGameKeyMapping)) (id)))
        else if ((id < 0) && ((Prelude.negate id) < (jlength (jget (this).negativePlatformToGameKeyMapping)))) then do
            javaReturn ((jindex ((jget (this).negativePlatformToGameKeyMapping)) ((Prelude.negate id))))
        else do
            javaReturn ((jget ((jget (this).gameKeyFactory)).nONE))


