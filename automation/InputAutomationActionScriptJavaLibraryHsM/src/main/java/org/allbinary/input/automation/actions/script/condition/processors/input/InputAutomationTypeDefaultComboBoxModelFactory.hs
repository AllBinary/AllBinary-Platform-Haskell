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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module InputAutomationTypeDefaultComboBoxModelFactory where

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
import qualified DefaultComboBoxModel -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Set -- java.util.Set
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
-- import javax.swing.*

data InputAutomationTypeDefaultComboBoxModelFactory = InputAutomationTypeDefaultComboBoxModelFactory
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationTypeDefaultComboBoxModelFactory where
    javaNull = javaNullRecord "InputAutomationTypeDefaultComboBoxModelFactory"

instance JavaEquals InputAutomationTypeDefaultComboBoxModelFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationTypeDefaultComboBoxModelFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationTypeDefaultComboBoxModelFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationTypeDefaultComboBoxModelFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = InputAutomationTypeDefaultComboBoxModelFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: InputAutomationTypeDefaultComboBoxModelFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputAutomationTypeDefaultComboBoxModelFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationTypeDefaultComboBoxModelFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: IO (DefaultComboBoxModel.DefaultComboBoxModel)
getInstance = do
        defaultComboBoxModel <- (DefaultComboBoxModel.new_)
        set <- (ABHashtable.keySet ((jio (InputRobotFactory.get ((jio (InputRobotFactory.getInstance)))))))
        nameArray <- (Set.toArray set)
        let size = (jlength nameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DefaultComboBoxModel.addElement defaultComboBoxModel (javaCast (jindex nameArray (index)) :: String))
        pure (defaultComboBoxModel)


