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
module LoadGameForm (module LoadGameForm, module CommandForm) where

import CommandForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, update, update_super, update_impl, add, add_super, add_impl, getChoiceGroup, getChoiceGroup_super, getChoiceGroup_impl, getSelectedId, getSelectedId_super, getSelectedId_impl, getSelectedText, getSelectedText_super, getSelectedText_impl, meUtil, areChoices)
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
import qualified Item -- javax.microedition.lcdui.Item
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified StringItem -- javax.microedition.lcdui.StringItem
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GamePersistanceSingleton -- org.allbinary.game.configuration.persistance.GamePersistanceSingleton
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified MEUtil -- org.allbinary.logic.MEUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data LoadGameForm = LoadGameForm
    { header_ :: JavaHeader
    , base :: CommandForm.CommandForm
    , meUtil :: IORef (MEUtil.MEUtil)
    , areChoices :: IORef (Bool)
    }

instance JavaNull LoadGameForm where
    javaNull = javaNullRecord "LoadGameForm"

instance JavaEquals LoadGameForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LoadGameForm where
    (==) = jrecordEquals

instance JavaObjectClass LoadGameForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LoadGameForm
newRecord_ = do
    base <- CommandForm.newRecord_
    let header_ = base.header_
    meUtil <- newIORef javaNull
    areChoices <- newIORef False
    let this = LoadGameForm header_ base meUtil areChoices
    jregisterLevel header_ this
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getChoiceGroup" (\() -> getChoiceGroup_impl this)
    jregisterMethod header_ "getSelectedId" (\() -> getSelectedId_impl this)
    jregisterMethod header_ "getSelectedText" (\() -> getSelectedText_impl this)
    pure this

initFields_ :: LoadGameForm -> IO ()
initFields_ this = do
    jset this.meUtil =<< (MEUtil.getInstance)
    jset this.areChoices (False)
    pure ()

new_4 :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO LoadGameForm
new_4 commandListener title backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this commandListener title backgrounBasicColor foregroundBasicColor
    pure this

init_4 :: LoadGameForm -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this commandListener title backgrounBasicColor foregroundBasicColor = do
        CommandForm.init_4 this.base (commandListener) (title) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (LoadGameForm.update this)
        Control.Monad.void (LoadGameForm.initCommands this commandListener)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: LoadGameForm))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: LoadGameForm)) a1

initCommands_impl :: LoadGameForm -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        Control.Monad.void (CommandForm.removeAllCommands this)
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).lOAD_FILE))
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).dELETE_FILE))
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (CommandForm.setCommandListener this cmdListener)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: LoadGameForm))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: LoadGameForm))

update_impl :: LoadGameForm -> IO (())
update_impl this = do
        list <- (GamePersistanceSingleton.getIds ((jio (GamePersistanceSingleton.getInstance))))
        Control.Monad.void (CommandForm.deleteAll this)
        if ((jio (BasicArrayList.size list)) > 0) then do
            Control.Monad.void (LoadGameForm.add this list "Select A Saved Game" (Choice.eXCLUSIVE))
            jset (this).areChoices (True)
        else do
            Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) this (jio (StringItem.new_3 "No Saved Games" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Item.pLAIN))))
            jset (this).areChoices (False)
        Control.Monad.void (CommandForm.update_super this.base)
        pure ()


add :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: LoadGameForm))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: LoadGameForm)) a1 a2 a3

add_impl :: LoadGameForm -> BasicArrayList.BasicArrayList -> String -> Int -> IO (())
add_impl this list name option = do
        choiceGroup <- (LoadGameForm.getChoiceGroup this list name option)
        when ((jio (BasicArrayList.size list)) > 0) $ do
            Control.Monad.void (ChoiceGroup.setSelectedIndex choiceGroup 0 True)
        Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) this choiceGroup)
        pure ()


getChoiceGroup :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup object_ a1 a2 a3 = jmethod object_ "getChoiceGroup" (\() -> (getChoiceGroup_impl (javaCast object_ :: LoadGameForm))) () a1 a2 a3

getChoiceGroup_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup_super object_ a1 a2 a3 = (getChoiceGroup_impl (javaCast object_ :: LoadGameForm)) a1 a2 a3

getChoiceGroup_impl :: LoadGameForm -> BasicArrayList.BasicArrayList -> String -> Int -> IO (ChoiceGroup.ChoiceGroup)
getChoiceGroup_impl this list name option = do
        let mETHOD_NAME = "getChoiceGroup"
        let aDDING_CHOICE = "Adding Choice: "
        choiceGroup <- (ChoiceGroup.new_4 name option (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))) (NullImage.nULL_IMAGE_ARRAY))
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let anyType = (jindex ((jget (list).objectArray)) (index))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) aDDING_CHOICE))) (jio (Any.toString anyType))))))) this mETHOD_NAME)
            Control.Monad.void (ChoiceGroup.append choiceGroup (jio (Any.toString anyType)) (NullImage.nULL_IMAGE))
        pure (choiceGroup)


getSelectedId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedId object_ = jmethod object_ "getSelectedId" (\() -> (getSelectedId_impl (javaCast object_ :: LoadGameForm))) ()

getSelectedId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedId_super object_ = (getSelectedId_impl (javaCast object_ :: LoadGameForm))

getSelectedId_impl :: LoadGameForm -> IO (Int)
getSelectedId_impl this = do
    javaCatchReturn $ do
        if (jget (this).areChoices) then do
            let choiceGroup = (javaCast (jio (CommandForm.get this 0)) :: ChoiceGroup.ChoiceGroup)
            javaReturn =<< (ChoiceGroup.getSelectedIndex choiceGroup)
        else do
            javaReturn ((Prelude.negate 1))


getSelectedText :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedText object_ = jmethod object_ "getSelectedText" (\() -> (getSelectedText_impl (javaCast object_ :: LoadGameForm))) ()

getSelectedText_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedText_super object_ = (getSelectedText_impl (javaCast object_ :: LoadGameForm))

getSelectedText_impl :: LoadGameForm -> IO (Int)
getSelectedText_impl this = do
    javaCatchReturn $ do
        if (jget (this).areChoices) then do
            let choiceGroup = (javaCast (jio (CommandForm.get this 0)) :: ChoiceGroup.ChoiceGroup)
            let value = (javaToString (jio (ChoiceGroup.getString choiceGroup (jio (ChoiceGroup.getSelectedIndex choiceGroup)))))
            javaReturn (value)
        else do
            javaReturn ((Prelude.negate 1))


