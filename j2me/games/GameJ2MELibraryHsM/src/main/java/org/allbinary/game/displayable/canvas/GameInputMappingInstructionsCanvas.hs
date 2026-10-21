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
module GameInputMappingInstructionsCanvas (module GameInputMappingInstructionsCanvas, module GameCommandCanvas) where

import GameCommandCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, paint, paint_super, paint_impl, dISPLAY, cLOSE, nAME, drawStringUtil, tITLE, instructions, colorFillPaintable, anchor)
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
import qualified LogUtil -- same package or java.lang
import qualified MyFontProcessor -- same package or java.lang
import qualified DisplayInfoSingleton -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified ColorFillBasePaintable -- org.allbinary.game.paint.ColorFillBasePaintable
import qualified ColorFillPaintableFactory -- org.allbinary.game.paint.ColorFillPaintableFactory
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified DrawStringUtil -- org.allbinary.graphics.draw.DrawStringUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified GameCommandCanvas

data GameInputMappingInstructionsCanvas = GameInputMappingInstructionsCanvas
    { header_ :: JavaHeader
    , base :: GameCommandCanvas.GameCommandCanvas
    , drawStringUtil :: IORef (DrawStringUtil.DrawStringUtil)
    , tITLE :: IORef (String)
    , instructions :: IORef (JavaArray (String))
    , colorFillPaintable :: IORef (ColorFillBasePaintable.ColorFillBasePaintable)
    , anchor :: IORef (Int)
    }

instance JavaNull GameInputMappingInstructionsCanvas where
    javaNull = javaNullRecord "GameInputMappingInstructionsCanvas"

instance JavaEquals GameInputMappingInstructionsCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMappingInstructionsCanvas where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMappingInstructionsCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dISPLAY #-}
dISPLAY = unsafePerformIO ((Command.new_4 "Help" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1))

{-# NOINLINE cLOSE #-}
cLOSE = unsafePerformIO ((Command.new_4 "Close" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1))

nAME = "GameInputMappingInstructionsCanvas"

newRecord_ :: IO GameInputMappingInstructionsCanvas
newRecord_ = do
    base <- GameCommandCanvas.newRecord_
    let header_ = base.header_
    drawStringUtil <- newIORef javaNull
    tITLE <- newIORef ""
    instructions <- newIORef javaNull
    colorFillPaintable <- newIORef javaNull
    anchor <- newIORef 0
    let this = GameInputMappingInstructionsCanvas header_ base drawStringUtil tITLE instructions colorFillPaintable anchor
    jregisterLevel header_ this
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: GameInputMappingInstructionsCanvas -> IO ()
initFields_ this = do
    jset this.drawStringUtil =<< (DrawStringUtil.getInstance)
    jset this.tITLE ("Input Instructions")
    jset this.instructions ((jarrayFromList ["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", (jget ((jio (StringUtil.getInstance))).eMPTY_STRING), "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."]))
    jset this.colorFillPaintable (javaNull)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_2 :: CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO GameInputMappingInstructionsCanvas
new_2 commandListener allBinaryGameLayerManager = do
    this <- newRecord_
    init_2 this commandListener allBinaryGameLayerManager
    pure this

init_2 :: GameInputMappingInstructionsCanvas -> CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO ()
init_2 this commandListener allBinaryGameLayerManager = do
        GameCommandCanvas.init_4 this.base (commandListener) (GameInputMappingInstructionsCanvas.nAME) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor allBinaryGameLayerManager))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        assignedValue <- (ColorFillPaintableFactory.getInstance ((jio (ColorFillPaintableFactory.getInstance))) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) False)
        jset (this).colorFillPaintable (assignedValue)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: GameInputMappingInstructionsCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: GameInputMappingInstructionsCanvas)) a1

initCommands_impl :: GameInputMappingInstructionsCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (GameCommandCanvas.removeAllCommands this)
        Control.Monad.void (GameCommandCanvas.addCommand this (GameInputMappingInstructionsCanvas.cLOSE))
        Control.Monad.void (GameCommandCanvas.setCommandListener this cmdListener)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GameInputMappingInstructionsCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GameInputMappingInstructionsCanvas)) a1

paint_impl :: GameInputMappingInstructionsCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        Control.Monad.void (ColorFillBasePaintable.paint ((jget (this).colorFillPaintable)) graphics)
        halfWidth <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).base.base.displayInfo)))
        let beginWidth = (((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jget (this).tITLE))) `Data.Bits.shiftR` 1))
        Control.Monad.void (Graphics.setColor graphics (jget (this).base.foregroundColor))
        Control.Monad.void (Graphics.drawString graphics (jget (this).tITLE) (halfWidth - beginWidth) (jget (this).base.fontHeight) (jget (this).anchor))
        Control.Monad.void (DrawStringUtil.drawCenterStrings ((jget (this).drawStringUtil)) graphics (jget (this).instructions) (jio (DisplayInfoSingleton.getLastWidth ((jget (this).base.base.displayInfo)))) (jget (this).base.fontHeight) halfWidth (3 * (jget (this).base.fontHeight)))
        Control.Monad.void (GameCommandCanvas.paint_super this.base graphics)
        pure ()


