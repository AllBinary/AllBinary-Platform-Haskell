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
-- package org.allbinary.game.paint.help
module InputMappingHelpPaintable (module InputMappingHelpPaintable, module HelpPaintable) where

import HelpPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, update, update_super, update_impl, get, get_super, get_impl, paint, paint_super, paint_impl, aND, sEP, mORE_THAN_TWO_IN_LIST_AND, logUtil, commonStrings, commonSeps, stringUtil, basicColorFactory, nONE, eMPTY_STRING, gameInputMappingArray, keyMappingArray, actionBasicColor, inputBasicColorArray, selectedBasicColor, updateMyFontProperties)
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
import qualified DisplayInfoSingleton -- same package or java.lang
import qualified MyFontProcessor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified Input -- org.allbinary.game.input.Input
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified GameInputMapping -- org.allbinary.game.input.mapping.GameInputMapping
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorUtil -- org.allbinary.graphics.color.BasicColorUtil
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HelpPaintable

data InputMappingHelpPaintable = InputMappingHelpPaintable
    { header_ :: JavaHeader
    , base :: HelpPaintable.HelpPaintable
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , nONE :: IORef (GameKey.GameKey)
    , eMPTY_STRING :: IORef (String)
    , gameInputMappingArray :: IORef (JavaArray (GameInputMapping.GameInputMapping))
    , keyMappingArray :: IORef (JavaArray (BasicArrayList.BasicArrayList))
    , actionBasicColor :: IORef (JavaArray (BasicColor.BasicColor))
    , inputBasicColorArray :: IORef (JavaArray (JavaArray (BasicColor.BasicColor)))
    , selectedBasicColor :: IORef (BasicColor.BasicColor)
    , updateMyFontProperties :: IORef (UpdateMyFontProperties.UpdateMyFontProperties)
    }

instance JavaNull InputMappingHelpPaintable where
    javaNull = javaNullRecord "InputMappingHelpPaintable"

instance JavaEquals InputMappingHelpPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputMappingHelpPaintable where
    (==) = jrecordEquals

instance JavaObjectClass InputMappingHelpPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

aND = " and "

sEP = ", "

mORE_THAN_TWO_IN_LIST_AND = ", and "

newRecord_ :: IO InputMappingHelpPaintable
newRecord_ = do
    base <- HelpPaintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    stringUtil <- newIORef javaNull
    basicColorFactory <- newIORef javaNull
    nONE <- newIORef javaNull
    eMPTY_STRING <- newIORef ""
    gameInputMappingArray <- newIORef javaNull
    keyMappingArray <- newIORef javaNull
    actionBasicColor <- newIORef javaNull
    inputBasicColorArray <- newIORef javaNull
    selectedBasicColor <- newIORef javaNull
    updateMyFontProperties <- newIORef javaNull
    let this = InputMappingHelpPaintable header_ base logUtil commonStrings commonSeps stringUtil basicColorFactory nONE eMPTY_STRING gameInputMappingArray keyMappingArray actionBasicColor inputBasicColorArray selectedBasicColor updateMyFontProperties
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: InputMappingHelpPaintable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.nONE ((jget ((jio (GameKeyFactory.getInstance))).nONE))
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.gameInputMappingArray (javaNull)
    jset this.keyMappingArray ((jnewArray (0) javaNull))
    jset this.actionBasicColor ((jget ((jio (BasicColorUtil.getInstance))).zERO_ARRAY))
    jset this.inputBasicColorArray ((jnewArray2 (0) (0) javaNull))
    jset this.selectedBasicColor (javaNull)
    jset this.updateMyFontProperties =<< (UpdateMyFontProperties.new_)
    pure ()

new_3 :: JavaArray (GameInputMapping.GameInputMapping) -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO InputMappingHelpPaintable
new_3 gameInputMappingArray backgroundBasicColor basicColor = do
    this <- newRecord_
    init_3 this gameInputMappingArray backgroundBasicColor basicColor
    pure this

init_3 :: InputMappingHelpPaintable -> JavaArray (GameInputMapping.GameInputMapping) -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this gameInputMappingArray backgroundBasicColor basicColor = do
        HelpPaintable.init_3 this.base ("Input Mapping") (backgroundBasicColor) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).gameInputMappingArray (gameInputMappingArray)
        Control.Monad.void (InputMappingHelpPaintable.update this (jget (this).nONE) (javaCast (jget (this).nONE)))
        if ((backgroundBasicColor == (jget ((jget (this).basicColorFactory)).wHITE)) || (basicColor == (jget ((jget (this).basicColorFactory)).wHITE))) then do
            jset (this).selectedBasicColor ((jget ((jget (this).basicColorFactory)).rED))
        else do
            jset (this).selectedBasicColor ((jget ((jget (this).basicColorFactory)).wHITE))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: InputMappingHelpPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: InputMappingHelpPaintable)) a1

updateMeasurement_impl :: InputMappingHelpPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        updateMyFontProperties <- (UpdateMyFontProperties.new_)
        assignedValue <- (Font.getHeight font)
        jset (updateMyFontProperties).charHeight (assignedValue)
        stringMaker <- (StringMaker.new_)
        let inputInfo = (jget (this).base.inputInfo)
        let size = (jlength inputInfo)
        jset (updateMyFontProperties).actionStringArray ((jnewArray (size) javaNull))
        jset (updateMyFontProperties).keymappingBeginWidthArray ((jnewArray (size) 0))
        jset (updateMyFontProperties).actionStringDeltaXArray ((jnewArray (size) 0))
        jset (updateMyFontProperties).inputDeltaXArray ((jnewArray2 (size) (0) 0))
        jset (updateMyFontProperties).sepArray ((jnewArray2 (size) (0) javaNull))
        jset (updateMyFontProperties).sepWidthArray ((jnewArray2 (size) (0) 0))
        list <- newIORef (javaNull)
        keyMappings <- newIORef ("")
        actionString <- newIORef ("")
        input <- newIORef (javaNull)
        size2 <- newIORef (0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset list ((jindex ((jget (this).keyMappingArray)) (index)))
            assignedValue <- (InputMappingHelpPaintable.get this (jget list))
            jset keyMappings (assignedValue)
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jindex inputInfo (index))))) (jget ((jget this.commonSeps)).cOLON)))) (jget ((jget this.commonSeps)).sPACE)))) (jget ((jget this.commonSeps)).sPACE)))))
            jset actionString (assignedValue)
            jsetIndex ((jget (updateMyFontProperties).actionStringArray)) (index) ((jget actionString))
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            jsetIndex ((jget (updateMyFontProperties).keymappingBeginWidthArray)) (index) ((((jio (Font.stringWidth font (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jindex ((jget (updateMyFontProperties).actionStringArray)) (index))))) (jget keyMappings)))))))) `Data.Bits.shiftR` 1)))
            assignedValue <- (Font.stringWidth font (jget actionString))
            jsetIndex ((jget (updateMyFontProperties).actionStringDeltaXArray)) (index) (assignedValue)
            assignedValue <- (BasicArrayList.size ((jget list)))
            jset size2 (assignedValue)
            jsetIndex ((jget (updateMyFontProperties).inputDeltaXArray)) (index) ((jnewArray ((jget size2)) 0))
            jsetIndex ((jget (updateMyFontProperties).sepArray)) (index) ((jnewArray ((jget size2)) javaNull))
            jsetIndex ((jget (updateMyFontProperties).sepWidthArray)) (index) ((jnewArray ((jget size2)) 0))
            forM_ [0 .. (jget size2) - 1] $ \index2 -> javaIteration (pure ()) $ do
                jset input ((javaCast (jindex ((jget ((jget list)).objectArray)) (index2)) :: Input.Input))
                assignedValue <- (Font.stringWidth font (jio (Input.getName ((jget input)))))
                jsetIndex ((jindex ((jget (updateMyFontProperties).inputDeltaXArray)) (index))) (index2) (assignedValue)
                jsetIndex ((jindex ((jget (updateMyFontProperties).sepArray)) (index))) (index2) ((jget this.eMPTY_STRING))
                when ((index2 + 1) < (jio (BasicArrayList.size ((jget list))))) $ do
                    if ((jio (BasicArrayList.size ((jget list)))) == 2) then do
                        jsetIndex ((jindex ((jget (updateMyFontProperties).sepArray)) (index))) (index2) (InputMappingHelpPaintable.aND)
                    else do
                        if ((index2 + 2) == (jio (BasicArrayList.size ((jget list))))) then do
                            jsetIndex ((jindex ((jget (updateMyFontProperties).sepArray)) (index))) (index2) (InputMappingHelpPaintable.mORE_THAN_TWO_IN_LIST_AND)
                        else do
                            jsetIndex ((jindex ((jget (updateMyFontProperties).sepArray)) (index))) (index2) (InputMappingHelpPaintable.sEP)
                when ((jindex ((jindex ((jget (updateMyFontProperties).sepArray)) (index))) (index2)) /= (jget this.eMPTY_STRING)) $ do
                    assignedValue <- (Font.stringWidth font (jindex ((jindex ((jget (updateMyFontProperties).sepArray)) (index))) (index2)))
                    jsetIndex ((jindex ((jget (updateMyFontProperties).sepWidthArray)) (index))) (index2) (assignedValue)
        jset (this).updateMyFontProperties (updateMyFontProperties)
        Control.Monad.void (HelpPaintable.updateMeasurement_super this.base graphics)
        pure ()


update :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: InputMappingHelpPaintable))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: InputMappingHelpPaintable)) a1 a2

update_impl :: InputMappingHelpPaintable -> GameKey.GameKey -> Input.Input -> IO (())
update_impl this selectedGameKey selectedInput = do
        stringMaker <- (StringMaker.new_)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) "selected GameKey: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) selectedGameKey))))) " Input: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) selectedInput))))))) this (jget ((jget (this).commonStrings)).uPDATE))
        gameKeyMapping <- (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance))))
        let size = (jlength (jget (this).gameInputMappingArray))
        let keyInfo = (jnewArray (size) javaNull)
        let keyMappingArray = (jnewArray (size) javaNull)
        let actionBasicColor = (jnewArray (size) javaNull)
        let inputBasicColorArray = (jnewArray (size) javaNull)
        gameInputMapping <- newIORef (javaNull)
        gameKey <- newIORef (javaNull)
        list <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameInputMapping ((jindex ((jget (this).gameInputMappingArray)) (index)))
            assignedValue <- (GameInputMapping.getGameKey ((jget gameInputMapping)))
            jset gameKey (assignedValue)
            assignedValue <- (InputToGameKeyMapping.getMappedInput ((jio (PersistentInputMapping.getInputMapping gameKeyMapping))) (javaCast (jget gameKey)))
            jset list (assignedValue)
            size2 <- (BasicArrayList.size ((jget list)))
            jsetIndex inputBasicColorArray (index) ((jnewArray (size2) javaNull))
            forM_ [0 .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                jsetIndex ((jindex inputBasicColorArray (index))) (index2) ((jget (this).base.basicColor))
            if ((jget gameKey) == selectedGameKey) then do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker "Found: selected GameKey: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) selectedGameKey))))))) this (jget ((jget (this).commonStrings)).uPDATE))
                jsetIndex actionBasicColor (index) ((jget (this).selectedBasicColor))
                indexOfSelectedInput <- (BasicArrayList.indexOf ((jget list)) selectedInput)
                when (indexOfSelectedInput >= 0) $ do
                    Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker "Found: selected Input: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) selectedInput))))))) this (jget ((jget (this).commonStrings)).uPDATE))
                    jsetIndex ((jindex inputBasicColorArray (index))) (indexOfSelectedInput) ((jget (this).selectedBasicColor))
            else do
                jsetIndex actionBasicColor (index) ((jget (this).base.basicColor))
            assignedValue <- (GameInputMapping.getName ((jget gameInputMapping)))
            jsetIndex keyInfo (index) (assignedValue)
            jsetIndex keyMappingArray (index) ((jget list))
        jset (this).keyMappingArray (keyMappingArray)
        jset (this).actionBasicColor (actionBasicColor)
        jset (this).inputBasicColorArray (inputBasicColorArray)
        Control.Monad.void (HelpPaintable.setInputInfoP_super this.base keyInfo)
        jset (this).base.myFontProcessor ((jget (this).base.updateMyFontProcessor))
        pure ()


get :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (String)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: InputMappingHelpPaintable))) () a1

get_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (String)
get_super object_ a1 = (get_impl (javaCast object_ :: InputMappingHelpPaintable)) a1

get_impl :: InputMappingHelpPaintable -> BasicArrayList.BasicArrayList -> IO (String)
get_impl this keyList = do
        stringBuffer <- (StringMaker.new_)
        key <- newIORef (javaNull)
        size <- (BasicArrayList.size keyList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset key ((javaCast (jindex ((jget (keyList).objectArray)) (index)) :: Input.Input))
            Control.Monad.void (StringMaker.append stringBuffer (jio (Input.getName ((jget key)))))
            when ((index + 1) < (jio (BasicArrayList.size keyList))) $ do
                if ((jio (BasicArrayList.size keyList)) == 2) then do
                    Control.Monad.void (StringMaker.append stringBuffer (InputMappingHelpPaintable.aND))
                else do
                    if ((index + 2) == (jio (BasicArrayList.size keyList))) then do
                        Control.Monad.void (StringMaker.append stringBuffer (InputMappingHelpPaintable.mORE_THAN_TWO_IN_LIST_AND))
                    else do
                        Control.Monad.void (StringMaker.append stringBuffer (InputMappingHelpPaintable.sEP))
        (StringMaker.toString stringBuffer)


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: InputMappingHelpPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: InputMappingHelpPaintable)) a1

paint_impl :: InputMappingHelpPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        halfWidth <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).base.displayInfo)))
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget (this).base.basicColor)))))
        Control.Monad.void (Graphics.drawString graphics (jget (this).base.title) (halfWidth - (jget (this).base.titleBeginWidth)) (jget ((jget (this).updateMyFontProperties)).charHeight) (jget (this).base.anchor))
        let inputInfo = (jget (this).base.inputInfo)
        let size = (jlength inputInfo)
        y <- newIORef (0)
        deltaX <- newIORef (0)
        size2 <- newIORef (0)
        actionString <- newIORef ("")
        input <- newIORef (javaNull)
        list <- newIORef (javaNull)
        sep <- newIORef ("")
        beginWidth <- newIORef (0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset y ((((index + 3)) * (jget ((jget (this).updateMyFontProperties)).charHeight)))
            jset deltaX (0)
            jset list ((jindex ((jget (this).keyMappingArray)) (index)))
            assignedValue <- (BasicArrayList.size ((jget list)))
            jset size2 (assignedValue)
            jset beginWidth ((jindex ((jget ((jget (this).updateMyFontProperties)).keymappingBeginWidthArray)) (index)))
            Control.Monad.void (Graphics.setColor graphics (jio (intValue ((jindex ((jget (this).actionBasicColor)) (index))))))
            jset actionString ((jindex ((jget ((jget (this).updateMyFontProperties)).actionStringArray)) (index)))
            Control.Monad.void (Graphics.drawString graphics (jget actionString) ((halfWidth - (jget beginWidth)) + (jget deltaX)) (jget y) (jget (this).base.anchor))
            jset deltaX (((jget deltaX) + (jindex ((jget ((jget (this).updateMyFontProperties)).actionStringDeltaXArray)) (index))))
            forM_ [0 .. (jget size2) - 1] $ \index2 -> javaIteration (pure ()) $ do
                jset input ((javaCast (jindex ((jget ((jget list)).objectArray)) (index2)) :: Input.Input))
                Control.Monad.void (Graphics.setColor graphics (jio (intValue ((jindex ((jindex ((jget (this).inputBasicColorArray)) (index))) (index2))))))
                Control.Monad.void (Graphics.drawString graphics (jio (Input.getName ((jget input)))) ((halfWidth - (jget beginWidth)) + (jget deltaX)) (jget y) (jget (this).base.anchor))
                jset deltaX (((jget deltaX) + (jindex ((jindex ((jget ((jget (this).updateMyFontProperties)).inputDeltaXArray)) (index))) (index2))))
                jset sep ((jindex ((jindex ((jget ((jget (this).updateMyFontProperties)).sepArray)) (index))) (index2)))
                Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget (this).base.basicColor)))))
                Control.Monad.void (Graphics.drawString graphics (jget sep) ((halfWidth - (jget beginWidth)) + (jget deltaX)) (jget y) (jget (this).base.anchor))
                jset deltaX (((jget deltaX) + (jindex ((jindex ((jget ((jget (this).updateMyFontProperties)).sepWidthArray)) (index))) (index2))))
        pure ()

-- Java nested class UpdateMyFontProperties: move it to its own module UpdateMyFontProperties

