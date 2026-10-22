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
-- package org.allbinary.game.displayable.canvas
module GameInputMappingCanvas (module GameInputMappingCanvas, module GameCommandCanvas) where

import GameCommandCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, close, close_super, close_impl, initCommands, initCommands_super, initCommands_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyRepeated, keyRepeated_super, keyRepeated_impl, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, addGameKey, addGameKey_super, addGameKey_impl, processInputMapping, processInputMapping_super, processInputMapping_impl, setSelectedAction, setSelectedAction_super, setSelectedAction_impl, gameActionCrud, gameActionCrud_super, gameActionCrud_impl, addNewMapping, addNewMapping_super, addNewMapping_impl, deleteCurrentMapping, deleteCurrentMapping_super, deleteCurrentMapping_impl, setDefault, setDefault_super, setDefault_impl, update, update_super, update_impl, paint, paint_super, paint_impl, paintable, nAME, dISPLAY, dEFAULT, helpPaintable, colorFillPaintable, inputMapping, nONE, abeClientInformation, selectedGameKey, selectedInput, inputFactory)
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
import qualified GameInputMappingInstructionsCanvas -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified InputToGameKeyMapping -- same package or java.lang
import qualified RepaintBehavior -- same package or java.lang
import qualified ItemPaintable -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified InputMappingInterface -- org.allbinary.game.input.mapping.InputMappingInterface
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified ColorFillBasePaintable -- org.allbinary.game.paint.ColorFillBasePaintable
import qualified ColorFillPaintableFactory -- org.allbinary.game.paint.ColorFillPaintableFactory
import qualified HelpPaintable -- org.allbinary.game.paint.help.HelpPaintable
import qualified InputMappingHelpPaintable -- org.allbinary.game.paint.help.InputMappingHelpPaintable
import qualified ProcessPaintable -- org.allbinary.graphics.paint.ProcessPaintable
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified GameCommandCanvas

-- implements InputMappingInterface
data GameInputMappingCanvas = GameInputMappingCanvas
    { header_ :: JavaHeader
    , base :: GameCommandCanvas.GameCommandCanvas
    , paintable :: IORef (ProcessPaintable.ProcessPaintable)
    , helpPaintable :: IORef (InputMappingHelpPaintable.InputMappingHelpPaintable)
    , colorFillPaintable :: IORef (ColorFillBasePaintable.ColorFillBasePaintable)
    , inputMapping :: IORef (PersistentInputMapping.PersistentInputMapping)
    , nONE :: IORef (GameKey.GameKey)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , selectedGameKey :: IORef (GameKey.GameKey)
    , selectedInput :: IORef (Input.Input)
    , inputFactory :: IORef (InputFactory.InputFactory)
    }

instance JavaNull GameInputMappingCanvas where
    javaNull = javaNullRecord "GameInputMappingCanvas"

instance JavaEquals GameInputMappingCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMappingCanvas where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMappingCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "GameInputMappingCanvas"

{-# NOINLINE dISPLAY #-}
dISPLAY = unsafePerformIO ((Command.new_4 "Controls" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 2))

{-# NOINLINE dEFAULT #-}
dEFAULT = unsafePerformIO ((Command.new_4 "Default" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 2))

newRecord_ :: IO GameInputMappingCanvas
newRecord_ = do
    base <- GameCommandCanvas.newRecord_
    let header_ = base.header_
    paintable <- newIORef javaNull
    helpPaintable <- newIORef javaNull
    colorFillPaintable <- newIORef javaNull
    inputMapping <- newIORef javaNull
    nONE <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    selectedGameKey <- newIORef javaNull
    selectedInput <- newIORef javaNull
    inputFactory <- newIORef javaNull
    let this = GameInputMappingCanvas header_ base paintable helpPaintable colorFillPaintable inputMapping nONE abeClientInformation selectedGameKey selectedInput inputFactory
    jregisterLevel header_ this
    InputMappingInterface.registerInterface_ header_
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyRepeated" (\() -> keyRepeated_impl this)
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "addGameKey" (\() -> addGameKey_impl this)
    jregisterMethod header_ "processInputMapping" (\() -> processInputMapping_impl this)
    jregisterMethod header_ "setSelectedAction" (\() -> setSelectedAction_impl this)
    jregisterMethod header_ "gameActionCrud" (\() -> gameActionCrud_impl this)
    jregisterMethod header_ "addNewMapping" (\() -> addNewMapping_impl this)
    jregisterMethod header_ "deleteCurrentMapping" (\() -> deleteCurrentMapping_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: GameInputMappingCanvas -> IO ()
initFields_ this = do
    jset this.paintable (javaNull)
    jset this.helpPaintable (javaNull)
    jset this.colorFillPaintable (javaNull)
    jset this.inputMapping (javaNull)
    jset this.nONE ((jget ((jio (GameKeyFactory.getInstance))).nONE))
    jset this.abeClientInformation (javaNull)
    jset this.selectedGameKey ((jget (this).nONE))
    jset this.selectedInput ((javaCast (jget (this).nONE) :: Input.Input))
    jset this.inputFactory =<< (InputFactory.getInstance)
    pure ()

new_4 :: AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> HelpPaintable.HelpPaintable -> IO GameInputMappingCanvas
new_4 abeClientInformation commandListener allBinaryGameLayerManager helpPaintable = do
    this <- newRecord_
    init_4 this abeClientInformation commandListener allBinaryGameLayerManager helpPaintable
    pure this

init_4 :: GameInputMappingCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> HelpPaintable.HelpPaintable -> IO ()
init_4 this abeClientInformation commandListener allBinaryGameLayerManager helpPaintable = do
        GameCommandCanvas.init_4 this.base (commandListener) (GameInputMappingCanvas.nAME) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor allBinaryGameLayerManager))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        when (helpPaintable == javaNull) $ do
            javaThrow ((JavaException "Exception" "Help Paintable Exception"))
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).helpPaintable ((javaCast helpPaintable :: InputMappingHelpPaintable.InputMappingHelpPaintable))
        assignedValue <- (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance))))
        jset (this).inputMapping (assignedValue)
        assignedValue <- (ProcessPaintable.new_)
        jset (this).paintable (assignedValue)
        assignedValue <- (ColorFillPaintableFactory.getInstance_2 ((jio (ColorFillPaintableFactory.getInstance))) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) False)
        jset (this).colorFillPaintable (assignedValue)
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: GameInputMappingCanvas))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: GameInputMappingCanvas))

close_impl :: GameInputMappingCanvas -> IO (())
close_impl this = do
        Control.Monad.void (GameCommandCanvas.close_super this.base)
        Control.Monad.void (ProcessPaintable.process ((jget (this).paintable)))
        jset (this).selectedGameKey ((jget (this).nONE))
        jset (this).selectedInput ((jget (this).nONE))
        Control.Monad.void (GameInputMappingCanvas.update this)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: GameInputMappingCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: GameInputMappingCanvas)) a1

initCommands_impl :: GameInputMappingCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (GameCommandCanvas.removeAllCommands this)
        Control.Monad.void (GameCommandCanvas.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (GameCommandCanvas.addCommand this (GameInputMappingCanvas.dEFAULT))
        Control.Monad.void (GameCommandCanvas.addCommand this (GameInputMappingInstructionsCanvas.dISPLAY))
        Control.Monad.void (GameCommandCanvas.setCommandListener this cmdListener)
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: GameInputMappingCanvas))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: GameInputMappingCanvas)) a1

keyPressed_impl :: GameInputMappingCanvas -> Int -> IO (())
keyPressed_impl this keyCode = do
        Control.Monad.void (GameInputMappingCanvas.keyPressedByDevice this keyCode 0)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: GameInputMappingCanvas))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: GameInputMappingCanvas)) a1

keyReleased_impl :: GameInputMappingCanvas -> Int -> IO (())
keyReleased_impl this keyCode = do
        Control.Monad.void (GameCommandCanvas.keyReleasedByDevice this keyCode 0)
        pure ()


keyRepeated :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated object_ a1 = jmethod object_ "keyRepeated" (\() -> (keyRepeated_impl (javaCast object_ :: GameInputMappingCanvas))) () a1

keyRepeated_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated_super object_ a1 = (keyRepeated_impl (javaCast object_ :: GameInputMappingCanvas)) a1

keyRepeated_impl :: GameInputMappingCanvas -> Int -> IO (())
keyRepeated_impl this keyCode = do
        Control.Monad.void (GameCommandCanvas.keyRepeatedByDevice this keyCode 0)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: GameInputMappingCanvas))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: GameInputMappingCanvas)) a1 a2

keyPressedByDevice_impl :: GameInputMappingCanvas -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (GameInputMappingCanvas.addGameKey this keyCode False)
        Control.Monad.void (GameCommandCanvas.keyPressedByDevice_super this.base keyCode 0)
        pure ()


addGameKey :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
addGameKey object_ a1 a2 = jmethod object_ "addGameKey" (\() -> (addGameKey_impl (javaCast object_ :: GameInputMappingCanvas))) () a1 a2

addGameKey_super :: (JavaObjectClass this_) => this_ -> Int -> Bool -> IO (())
addGameKey_super object_ a1 a2 = (addGameKey_impl (javaCast object_ :: GameInputMappingCanvas)) a1 a2

addGameKey_impl :: GameInputMappingCanvas -> Int -> Bool -> IO (())
addGameKey_impl this keyCode repeated = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) "Key Event Error" this (jget ((jget (this).base.gameInputStrings)).aDD_KEY_EVENT) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Raw Device Key Code: "))) (Numeric.showHex keyCode "")))))) this (jget ((jget (this).base.gameInputStrings)).aDD_KEY_EVENT))
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).base.inputToGameKeyMapping)) (javaCast this) keyCode)
            input <- (InputFactory.getInstanceById ((jget (this).inputFactory)) keyCode)
            Control.Monad.void (GameInputMappingCanvas.processInputMapping this gameKey input)
        pure ()


-- throws Exception
processInputMapping :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
processInputMapping object_ a1 a2 = jmethod object_ "processInputMapping" (\() -> (processInputMapping_impl (javaCast object_ :: GameInputMappingCanvas))) () a1 a2

processInputMapping_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
processInputMapping_super object_ a1 a2 = (processInputMapping_impl (javaCast object_ :: GameInputMappingCanvas)) a1 a2

processInputMapping_impl :: GameInputMappingCanvas -> GameKey.GameKey -> Input.Input -> IO (())
processInputMapping_impl this gameKey input = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Start Passed GameKey: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) gameKey)))
        Control.Monad.void (StringMaker.append stringBuffer " Input: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) input)))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).pROCESS))
        if ((jget (this).selectedGameKey) /= (jget (this).nONE)) then do
            Control.Monad.void (GameInputMappingCanvas.gameActionCrud this gameKey input)
        else do
            Control.Monad.void (GameInputMappingCanvas.setSelectedAction this gameKey)
        pure ()


setSelectedAction :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setSelectedAction object_ a1 = jmethod object_ "setSelectedAction" (\() -> (setSelectedAction_impl (javaCast object_ :: GameInputMappingCanvas))) () a1

setSelectedAction_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setSelectedAction_super object_ a1 = (setSelectedAction_impl (javaCast object_ :: GameInputMappingCanvas)) a1

setSelectedAction_impl :: GameInputMappingCanvas -> GameKey.GameKey -> IO (())
setSelectedAction_impl this gameKey = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Selected GameKey: "))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) gameKey))))))) this "setSelectedAction")
        jset (this).selectedGameKey (gameKey)
        jset (this).selectedInput ((jget (this).nONE))
        Control.Monad.void (InputMappingHelpPaintable.update ((jget (this).helpPaintable)) (jget (this).selectedGameKey) (jget (this).selectedInput))
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.repaintBehavior)) (javaCast this))
        pure ()


-- throws Exception
gameActionCrud :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
gameActionCrud object_ a1 a2 = jmethod object_ "gameActionCrud" (\() -> (gameActionCrud_impl (javaCast object_ :: GameInputMappingCanvas))) () a1 a2

gameActionCrud_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
gameActionCrud_super object_ a1 a2 = (gameActionCrud_impl (javaCast object_ :: GameInputMappingCanvas)) a1 a2

gameActionCrud_impl :: GameInputMappingCanvas -> GameKey.GameKey -> Input.Input -> IO (())
gameActionCrud_impl this gameKey input = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Start GameKey: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).selectedGameKey))))
        Control.Monad.void (StringMaker.append stringBuffer " Input: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).selectedInput))))
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this "gameActionCrud")
        if ((jtoObject (jget (this).selectedInput)) == (jtoObject (jget (this).nONE))) then do
            list <- (InputToGameKeyMapping.getMappedInput ((jio (PersistentInputMapping.getInputMapping ((jget (this).inputMapping))))) (javaCast (jget (this).selectedGameKey)))
            isInputAlreadyMappedToSelectedAction <- (BasicArrayList.contains list input)
            if isInputAlreadyMappedToSelectedAction then do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Already Mapped Input: "))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) input))))))) this "gameActionCrud")
                jset (this).selectedInput (input)
                Control.Monad.void (InputMappingHelpPaintable.update ((jget (this).helpPaintable)) (jget (this).selectedGameKey) (jget (this).selectedInput))
                Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.repaintBehavior)) (javaCast this))
            else do
                Control.Monad.void (GameInputMappingCanvas.addNewMapping this gameKey input)
        else if (jio (PersistentInputMapping.isDelete ((jget (this).inputMapping)) input)) then do
            Control.Monad.void (GameInputMappingCanvas.deleteCurrentMapping this)
        else do
            Control.Monad.void (GameInputMappingCanvas.setSelectedAction this gameKey)
        pure ()


-- throws Exception
addNewMapping :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
addNewMapping object_ a1 a2 = jmethod object_ "addNewMapping" (\() -> (addNewMapping_impl (javaCast object_ :: GameInputMappingCanvas))) () a1 a2

addNewMapping_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
addNewMapping_super object_ a1 a2 = (addNewMapping_impl (javaCast object_ :: GameInputMappingCanvas)) a1 a2

addNewMapping_impl :: GameInputMappingCanvas -> GameKey.GameKey -> Input.Input -> IO (())
addNewMapping_impl this gameKey input = do
        let mETHOD_NAME = "addNewMapping"
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this mETHOD_NAME)
        isInputAlreadyMapped <- (InputToGameKeyMapping.isMapped ((jio (PersistentInputMapping.getInputMapping ((jget (this).inputMapping))))) input)
        if ((Prelude.not isInputAlreadyMapped) && (Prelude.not (jio (PersistentInputMapping.isSystemInput ((jget (this).inputMapping)) input)))) then do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Add Key Mapping : GameKey: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).selectedGameKey))))
            Control.Monad.void (StringMaker.append stringBuffer " Input: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).selectedInput))))
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
            Control.Monad.void (InputToGameKeyMapping.add ((jio (PersistentInputMapping.getInputMapping ((jget (this).inputMapping))))) (javaCast (jget (this).selectedGameKey)) input)
            jset (this).selectedInput (input)
            Control.Monad.void (GameInputMappingCanvas.update this)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to" this mETHOD_NAME)
            Control.Monad.void (GameInputMappingCanvas.setSelectedAction this gameKey)
        pure ()


-- throws Exception
deleteCurrentMapping :: (JavaObjectClass this_) => this_ -> IO (())
deleteCurrentMapping object_ = jmethod object_ "deleteCurrentMapping" (\() -> (deleteCurrentMapping_impl (javaCast object_ :: GameInputMappingCanvas))) ()

deleteCurrentMapping_super :: (JavaObjectClass this_) => this_ -> IO (())
deleteCurrentMapping_super object_ = (deleteCurrentMapping_impl (javaCast object_ :: GameInputMappingCanvas))

deleteCurrentMapping_impl :: GameInputMappingCanvas -> IO (())
deleteCurrentMapping_impl this = do
        let mETHOD_NAME = "deleteCurrentMapping"
        list <- (InputToGameKeyMapping.getMappedInput ((jio (PersistentInputMapping.getInputMapping ((jget (this).inputMapping))))) (javaCast (jget (this).selectedGameKey)))
        if ((jio (BasicArrayList.size list)) > 1) then do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Start GameKey: ")
            Control.Monad.void (StringMaker.append stringBuffer "Remove Key Mapping: GameKey: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).selectedGameKey))))
            Control.Monad.void (StringMaker.append stringBuffer " Input: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) (jget (this).selectedInput))))
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this mETHOD_NAME)
            Control.Monad.void (InputToGameKeyMapping.remove ((jio (PersistentInputMapping.getInputMapping ((jget (this).inputMapping))))) (javaCast (jget (this).selectedGameKey)) (jget (this).selectedInput))
            jset (this).selectedInput ((jget (this).nONE))
            Control.Monad.void (GameInputMappingCanvas.update this)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Can't Remove Last Key Mapping" this mETHOD_NAME)
        pure ()


-- throws Exception
setDefault :: (JavaObjectClass this_) => this_ -> IO (())
setDefault object_ = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: GameInputMappingCanvas))) ()

setDefault_super :: (JavaObjectClass this_) => this_ -> IO (())
setDefault_super object_ = (setDefault_impl (javaCast object_ :: GameInputMappingCanvas))

setDefault_impl :: GameInputMappingCanvas -> IO (())
setDefault_impl this = do
        Control.Monad.void (PersistentInputMapping.setDefault ((jget (this).inputMapping)) (jget (this).abeClientInformation))
        Control.Monad.void (InputMappingHelpPaintable.update ((jget (this).helpPaintable)) (jget (this).nONE) (javaCast (jget (this).nONE)))
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.repaintBehavior)) (javaCast this))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameInputMappingCanvas))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameInputMappingCanvas))

update_impl :: GameInputMappingCanvas -> IO (())
update_impl this = do
        Control.Monad.void (PersistentInputMapping.update ((jget (this).inputMapping)) (jget (this).abeClientInformation))
        Control.Monad.void (InputMappingHelpPaintable.update ((jget (this).helpPaintable)) (jget (this).selectedGameKey) (jget (this).selectedInput))
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.repaintBehavior)) (javaCast this))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GameInputMappingCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GameInputMappingCanvas)) a1

paint_impl :: GameInputMappingCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (ColorFillBasePaintable.paint ((jget (this).colorFillPaintable)) graphics)
        Control.Monad.void (InputMappingHelpPaintable.paint ((jget (this).helpPaintable)) graphics)
        Control.Monad.void (ProcessPaintable.paint ((jget (this).paintable)) graphics)
        Control.Monad.void (GameCommandCanvas.paint_super this.base graphics)
        pure ()


