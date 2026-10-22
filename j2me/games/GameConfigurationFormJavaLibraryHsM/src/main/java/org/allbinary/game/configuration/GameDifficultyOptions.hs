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
-- package org.allbinary.game.configuration
module GameDifficultyOptions (module GameDifficultyOptions, module CommandForm) where

import CommandForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, open, open_super, open_impl, close, close_super, close_impl, save, save_super, save_impl, initCommands, initCommands_super, initCommands_impl, update, update_super, update_impl, add, add_super, add_impl, getChoiceGroup, getChoiceGroup_super, getChoiceGroup_impl, setSelectedId, setSelectedId_super, setSelectedId_impl, getSelectedId, getSelectedId_super, getSelectedId_impl, getSelectedText, getSelectedText_super, getSelectedText_impl, meUtil, list)
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
import qualified Choice -- javax.microedition.lcdui.Choice
import qualified ChoiceGroup -- javax.microedition.lcdui.ChoiceGroup
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameDifficultyFactory -- org.allbinary.game.configuration.persistance.GameDifficultyFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified MEUtil -- org.allbinary.logic.MEUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data GameDifficultyOptions = GameDifficultyOptions
    { header_ :: JavaHeader
    , base :: CommandForm.CommandForm
    , meUtil :: IORef (MEUtil.MEUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GameDifficultyOptions where
    javaNull = javaNullRecord "GameDifficultyOptions"

instance JavaEquals GameDifficultyOptions where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameDifficultyOptions where
    (==) = jrecordEquals

instance JavaObjectClass GameDifficultyOptions where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameDifficultyOptions
newRecord_ = do
    base <- CommandForm.newRecord_
    let header_ = base.header_
    meUtil <- newIORef javaNull
    list <- newIORef javaNull
    let this = GameDifficultyOptions header_ base meUtil list
    jregisterLevel header_ this
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getChoiceGroup" (\() -> getChoiceGroup_impl this)
    jregisterMethod header_ "setSelectedId" (\() -> setSelectedId_impl this)
    jregisterMethod header_ "getSelectedId" (\() -> getSelectedId_impl this)
    jregisterMethod header_ "getSelectedText" (\() -> getSelectedText_impl this)
    pure this

initFields_ :: GameDifficultyOptions -> IO ()
initFields_ this = do
    jset this.meUtil =<< (MEUtil.getInstance)
    jset this.list (javaNull)
    pure ()

new_5 :: CommandListener.CommandListener -> String -> BasicArrayList.BasicArrayList -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO GameDifficultyOptions
new_5 commandListener title list backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_5 this commandListener title list backgrounBasicColor foregroundBasicColor
    pure this

init_5 :: GameDifficultyOptions -> CommandListener.CommandListener -> String -> BasicArrayList.BasicArrayList -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_5 this commandListener title list backgrounBasicColor foregroundBasicColor = do
        CommandForm.init_4 this.base (commandListener) (title) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        jset (this).list (list)
        Control.Monad.void (GameDifficultyOptions.update this)
        Control.Monad.void (GameDifficultyOptions.initCommands this commandListener)
        gameDifficultyFactory <- (GameDifficultyFactory.getInstance)
        Control.Monad.void (GameDifficultyOptions.setSelectedId this (jio (GameDifficultyFactory.getLevel gameDifficultyFactory)))
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: GameDifficultyOptions))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: GameDifficultyOptions))

open_impl :: GameDifficultyOptions -> IO (())
open_impl this = do
        Control.Monad.void (CommandForm.open_super this.base)
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: GameDifficultyOptions))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: GameDifficultyOptions))

close_impl :: GameDifficultyOptions -> IO (())
close_impl this = do
        Control.Monad.void (CommandForm.close_super this.base)
        Control.Monad.void (GameDifficultyOptions.save this)
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> IO (())
save object_ = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: GameDifficultyOptions))) ()

save_super :: (JavaObjectClass this_) => this_ -> IO (())
save_super object_ = (save_impl (javaCast object_ :: GameDifficultyOptions))

save_impl :: GameDifficultyOptions -> IO (())
save_impl this = do
        gameDifficultyFactory <- (GameDifficultyFactory.getInstance)
        Control.Monad.void (GameDifficultyFactory.setLevel gameDifficultyFactory (jio (GameDifficultyOptions.getSelectedId this)))
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: GameDifficultyOptions))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: GameDifficultyOptions)) a1

initCommands_impl :: GameDifficultyOptions -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        Control.Monad.void (CommandForm.removeAllCommands this)
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (CommandForm.setCommandListener this cmdListener)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameDifficultyOptions))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameDifficultyOptions))

update_impl :: GameDifficultyOptions -> IO (())
update_impl this = do
        Control.Monad.void (CommandForm.deleteAll this)
        Control.Monad.void (GameDifficultyOptions.add this (jget (this).list) "Difficulty" (Choice.eXCLUSIVE))
        Control.Monad.void (CommandForm.update_super this.base)
        pure ()


add :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameDifficultyOptions))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: GameDifficultyOptions)) a1 a2 a3

add_impl :: GameDifficultyOptions -> BasicArrayList.BasicArrayList -> String -> Int -> IO (())
add_impl this list name option = do
        choiceGroup <- (GameDifficultyOptions.getChoiceGroup this list name option)
        when ((jio (BasicArrayList.size list)) > 0) $ do
            Control.Monad.void (ChoiceGroup.setSelectedIndex choiceGroup 0 True)
        Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) (javaCast this) (javaCast choiceGroup))
        pure ()


getChoiceGroup :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup object_ a1 a2 a3 = jmethod object_ "getChoiceGroup" (\() -> (getChoiceGroup_impl (javaCast object_ :: GameDifficultyOptions))) () a1 a2 a3

getChoiceGroup_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup_super object_ a1 a2 a3 = (getChoiceGroup_impl (javaCast object_ :: GameDifficultyOptions)) a1 a2 a3

getChoiceGroup_impl :: GameDifficultyOptions -> BasicArrayList.BasicArrayList -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup_impl this list name option = do
        let mETHOD_NAME = "addChoiceGroup"
        let nAME = "Adding Choice: "
        choiceGroup <- (ChoiceGroup.new_4 name option (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))) (NullImage.nULL_IMAGE_ARRAY))
        size <- (BasicArrayList.size list)
        anyType <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset anyType ((jindex ((jget (list).objectArray)) (index)))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) nAME))) (jio (Any.toString ((jget anyType))))))))) this mETHOD_NAME)
            Control.Monad.void (ChoiceGroup.append choiceGroup (jio (Any.toString ((jget anyType)))) (NullImage.nULL_IMAGE))
        pure (choiceGroup)


setSelectedId :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSelectedId object_ a1 = jmethod object_ "setSelectedId" (\() -> (setSelectedId_impl (javaCast object_ :: GameDifficultyOptions))) () a1

setSelectedId_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSelectedId_super object_ a1 = (setSelectedId_impl (javaCast object_ :: GameDifficultyOptions)) a1

setSelectedId_impl :: GameDifficultyOptions -> Int -> IO (())
setSelectedId_impl this id = do
        let choiceGroup = (javaCast (jio (CommandForm.get this 0)) :: ChoiceGroup.ChoiceGroup)
        Control.Monad.void (ChoiceGroup.setSelectedIndex choiceGroup id True)
        pure ()


getSelectedId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedId object_ = jmethod object_ "getSelectedId" (\() -> (getSelectedId_impl (javaCast object_ :: GameDifficultyOptions))) ()

getSelectedId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedId_super object_ = (getSelectedId_impl (javaCast object_ :: GameDifficultyOptions))

getSelectedId_impl :: GameDifficultyOptions -> IO (Int)
getSelectedId_impl this = do
        let choiceGroup = (javaCast (jio (CommandForm.get this 0)) :: ChoiceGroup.ChoiceGroup)
        (ChoiceGroup.getSelectedIndex choiceGroup)


getSelectedText :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedText object_ = jmethod object_ "getSelectedText" (\() -> (getSelectedText_impl (javaCast object_ :: GameDifficultyOptions))) ()

getSelectedText_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedText_super object_ = (getSelectedText_impl (javaCast object_ :: GameDifficultyOptions))

getSelectedText_impl :: GameDifficultyOptions -> IO (Int)
getSelectedText_impl this = do
        let choiceGroup = (javaCast (jio (CommandForm.get this 0)) :: ChoiceGroup.ChoiceGroup)
        let value = (javaToString (jio (ChoiceGroup.getString choiceGroup (jio (ChoiceGroup.getSelectedIndex choiceGroup)))))
        pure (value)


