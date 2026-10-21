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
module GameOptionsForm (module GameOptionsForm, module CommandForm) where

import CommandForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, closeClientInformation, closeClientInformation_super, closeClientInformation_impl, addTextFieldsIfSimulated, addTextFieldsIfSimulated_super, addTextFieldsIfSimulated_impl, addTextFields, addTextFields_super, addTextFields_impl, addConfiguration, addConfiguration_super, addConfiguration_impl, initCommands, initCommands_super, initCommands_impl, save, save_super, save_impl, meUtil)
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
import qualified GameConfigurationTextInput -- same package or java.lang
import qualified GameConfigurationSingleton -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified GameConfigurationGauge -- same package or java.lang
import qualified GameConfigurationUtil -- same package or java.lang
import qualified GameConfigurationCentral -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Choice -- javax.microedition.lcdui.Choice
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Item -- javax.microedition.lcdui.Item
import qualified TextField -- javax.microedition.lcdui.TextField
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameFeatureChoiceGroups -- org.allbinary.game.configuration.feature.GameFeatureChoiceGroups
import qualified GameFeatureFormUtil -- org.allbinary.game.configuration.feature.GameFeatureFormUtil
import qualified GameFeatureItemCommandListener -- org.allbinary.game.configuration.feature.GameFeatureItemCommandListener
import qualified GameFeatureItemStateListener -- org.allbinary.game.configuration.feature.GameFeatureItemStateListener
import qualified SensorFeatureFactory -- org.allbinary.game.configuration.feature.SensorFeatureFactory
import qualified GameConfigurationPersistanceSingleton -- org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton
import qualified KeyValuePersistance -- org.allbinary.game.configuration.persistance.KeyValuePersistance
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified OrientationData -- org.allbinary.input.gyro.OrientationData
import qualified MEUtil -- org.allbinary.logic.MEUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data GameOptionsForm = GameOptionsForm
    { header_ :: JavaHeader
    , base :: CommandForm.CommandForm
    , meUtil :: IORef (MEUtil.MEUtil)
    }

instance JavaNull GameOptionsForm where
    javaNull = javaNullRecord "GameOptionsForm"

instance JavaEquals GameOptionsForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameOptionsForm where
    (==) = jrecordEquals

instance JavaObjectClass GameOptionsForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameOptionsForm
newRecord_ = do
    base <- CommandForm.newRecord_
    let header_ = base.header_
    meUtil <- newIORef javaNull
    let this = GameOptionsForm header_ base meUtil
    jregisterLevel header_ this
    jregisterMethod header_ "closeClientInformation" (\() -> closeClientInformation_impl this)
    jregisterMethod header_ "addTextFieldsIfSimulated" (\() -> addTextFieldsIfSimulated_impl this)
    jregisterMethod header_ "addTextFields" (\() -> addTextFields_impl this)
    jregisterMethod header_ "addConfiguration" (\() -> addConfiguration_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: GameOptionsForm -> IO ()
initFields_ this = do
    jset this.meUtil =<< (MEUtil.getInstance)
    pure ()

new_4 :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO GameOptionsForm
new_4 commandListener title backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this commandListener title backgrounBasicColor foregroundBasicColor
    pure this

init_4 :: GameOptionsForm -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this commandListener title backgrounBasicColor foregroundBasicColor = do
        CommandForm.init_4 this.base (commandListener) (title) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (GameOptionsForm.addConfiguration this)
        gameFeatureFormUtil <- (GameFeatureFormUtil.getInstance)
        Control.Monad.void (GameFeatureFormUtil.addChoiceGroup gameFeatureFormUtil this (jio (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getExclusiveInstance))))) (Choice.eXCLUSIVE))
        Control.Monad.void (GameFeatureFormUtil.addChoiceGroup gameFeatureFormUtil this (jio (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getMultipleInstance))))) (Choice.mULTIPLE))
        Control.Monad.void (GameOptionsForm.initCommands this commandListener)
        Control.Monad.void (CommandForm.setItemStateListener this (jio (GameFeatureItemStateListener.new_1 this)))
        Control.Monad.void (GameOptionsForm.addTextFieldsIfSimulated this)
        pure ()


-- throws Exception
closeClientInformation :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
closeClientInformation object_ a1 = jmethod object_ "closeClientInformation" (\() -> (closeClientInformation_impl (javaCast object_ :: GameOptionsForm))) () a1

closeClientInformation_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
closeClientInformation_super object_ a1 = (closeClientInformation_impl (javaCast object_ :: GameOptionsForm)) a1

closeClientInformation_impl :: GameOptionsForm -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
closeClientInformation_impl this abeClientInformation = do
        Control.Monad.void (CommandForm.close_super this.base)
        Control.Monad.void (GameOptionsForm.save this abeClientInformation)
        pure ()


addTextFieldsIfSimulated :: (JavaObjectClass this_) => this_ -> IO (())
addTextFieldsIfSimulated object_ = jmethod object_ "addTextFieldsIfSimulated" (\() -> (addTextFieldsIfSimulated_impl (javaCast object_ :: GameOptionsForm))) ()

addTextFieldsIfSimulated_super :: (JavaObjectClass this_) => this_ -> IO (())
addTextFieldsIfSimulated_super object_ = (addTextFieldsIfSimulated_impl (javaCast object_ :: GameOptionsForm))

addTextFieldsIfSimulated_impl :: GameOptionsForm -> IO (())
addTextFieldsIfSimulated_impl this = do
        let key = (jget ((jio (OrientationData.getInstance))).oRIENTATION_SENSOR_INPUT)
        hashtable <- (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getExclusiveInstance))))
        when (hashtable /= javaNull) $ do
            listCanBeNull <- (ABHashtable.get hashtable key)
            when (listCanBeNull /= javaNull) $ do
                let list = (javaCast listCanBeNull :: BasicArrayList.BasicArrayList)
                when (jio (BasicArrayList.contains list (jget ((jio (SensorFeatureFactory.getInstance))).sIMULATED_ORIENTATION_SENSORS))) $ do
                    Control.Monad.void (GameOptionsForm.addTextFields this)
        pure ()


addTextFields :: (JavaObjectClass this_) => this_ -> IO (())
addTextFields object_ = jmethod object_ "addTextFields" (\() -> (addTextFields_impl (javaCast object_ :: GameOptionsForm))) ()

addTextFields_super :: (JavaObjectClass this_) => this_ -> IO (())
addTextFields_super object_ = (addTextFields_impl (javaCast object_ :: GameOptionsForm))

addTextFields_impl :: GameOptionsForm -> IO (())
addTextFields_impl this = do
        hashtable <- (GameConfigurationTextInput.getHashtable)
        size <- (ABHashtable.size hashtable)
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
        gameConfigurationTextInput <- newIORef (javaNull)
        textField <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameConfigurationTextInput ((javaCast (jio (ABHashtable.get hashtable (javaCast (jindex objectArray (index)) :: Any.Any))) :: GameConfigurationTextInput.GameConfigurationTextInput))
            assignedValue <- (TextField.new_4 (jio (GameConfigurationTextInput.getLabel ((jget gameConfigurationTextInput)))) (jio (GameConfigurationTextInput.getText ((jget gameConfigurationTextInput)))) 30 (TextField.aNY))
            jset textField (assignedValue)
            Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) this (jget textField))
        pure ()


addConfiguration :: (JavaObjectClass this_) => this_ -> IO (())
addConfiguration object_ = jmethod object_ "addConfiguration" (\() -> (addConfiguration_impl (javaCast object_ :: GameOptionsForm))) ()

addConfiguration_super :: (JavaObjectClass this_) => this_ -> IO (())
addConfiguration_super object_ = (addConfiguration_impl (javaCast object_ :: GameOptionsForm))

addConfiguration_impl :: GameOptionsForm -> IO (())
addConfiguration_impl this = do
        let mETHOD_NAME = "addConfiguration"
        let nAME = "Name: "
        list <- (GameConfigurationSingleton.getOptionsBasicArrayList ((jio (GameConfigurationSingleton.getInstance))))
        let gAUGE_CHANGE = (jget ((jio (MyCommandsFactory.getInstance))).gAUGE_CHANGE)
        stringMaker <- (StringMaker.new_)
        size <- (BasicArrayList.size list)
        gameConfiguration <- newIORef (javaNull)
        gauge <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameConfiguration ((javaCast (jindex ((jget (list).objectArray)) (index)) :: GameConfiguration.GameConfiguration))
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker nAME))) (jio (GameConfiguration.toString ((jget gameConfiguration))))))))) this mETHOD_NAME)
            assignedValue <- (GameConfigurationGauge.new_1 (jget gameConfiguration))
            jset gauge (assignedValue)
            Control.Monad.void (GameConfigurationGauge.setDefaultCommand ((jget gauge)) gAUGE_CHANGE)
            Control.Monad.void (GameConfigurationGauge.setItemCommandListener ((jget gauge)) (jio (GameFeatureItemCommandListener.new_1 this)))
            Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) this (jget gauge))
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: GameOptionsForm))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: GameOptionsForm)) a1

initCommands_impl :: GameOptionsForm -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        Control.Monad.void (CommandForm.removeAllCommands this)
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).cLOSE_OPTIONS))
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).dEFAULT_OPTIONS))
        Control.Monad.void (CommandForm.setCommandListener this cmdListener)
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: GameOptionsForm))) () a1

save_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: GameOptionsForm)) a1

save_impl :: GameOptionsForm -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
save_impl this abeClientInformation = do
        size <- (CommandForm.size this)
        item <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (CommandForm.get this index)
            jset item (assignedValue)
            if (javaInstanceOf (jget item) "GameConfigurationGauge") then do
                Control.Monad.void (GameConfigurationUtil.update ((jio (GameConfigurationUtil.getInstance))) (javaCast (jget item) :: GameConfigurationGauge.GameConfigurationGauge))
            else when (javaInstanceOf (jget item) "TextField") $ do
                Control.Monad.void (GameConfigurationTextInput.update (javaCast (jget item) :: TextField.TextField))
        Control.Monad.void (GameConfigurationUtil.updateCompetitionValue ((jio (GameConfigurationUtil.getInstance))))
        hashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        let sCALE = (jget ((jio (GameConfigurationCentral.getInstance))).sCALE)
        Control.Monad.void (ABHashtable.put hashtable (jio (GameConfiguration.getName sCALE)) (javaToString (jio (GameConfiguration.getValue sCALE))))
        keyValuePersistance <- (fmap (\value_ -> javaCast value_ :: KeyValuePersistance.KeyValuePersistance) (GameConfigurationPersistanceSingleton.getInstance))
        Control.Monad.void (KeyValuePersistance.clear keyValuePersistance)
        Control.Monad.void (KeyValuePersistance.loadAll keyValuePersistance abeClientInformation)
        list <- (KeyValuePersistance.getIds keyValuePersistance)
        Control.Monad.void (KeyValuePersistance.save keyValuePersistance abeClientInformation hashtable)
        size2 <- (BasicArrayList.size list)
        integer <- newIORef (javaNull)
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            jset integer ((javaCast (jindex ((jget (list).objectArray)) (index)) :: Int))
            Control.Monad.void (KeyValuePersistance.delete keyValuePersistance abeClientInformation (jget integer))
        pure ()


