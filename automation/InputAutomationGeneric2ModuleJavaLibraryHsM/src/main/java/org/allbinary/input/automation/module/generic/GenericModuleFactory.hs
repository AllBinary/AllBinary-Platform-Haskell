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
-- package org.allbinary.input.automation.module.generic
module GenericModuleFactory (module GenericModuleFactory, module AbstractInputAutomationFactory) where

import AbstractInputAutomationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, nAME)
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
import qualified GenericInputAutomationAction -- same package or java.lang
import qualified GenericInputAutomationWorker -- same package or java.lang
import qualified AbstractInputAutomationFactory -- org.allbinary.input.automation.module.AbstractInputAutomationFactory
import qualified InputAutomationActionInterface -- org.allbinary.input.automation.module.InputAutomationActionInterface
import qualified InputAutomationModuleData -- org.allbinary.input.automation.module.InputAutomationModuleData
import qualified GenericModuleConfigurationJPanel -- org.allbinary.input.automation.module.generic.configuration.GenericModuleConfigurationJPanel
import qualified GenericProfile -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile
import qualified NoImageComparatorConstraints -- org.allbinary.input.automation.module.generic.constraints.NoImageComparatorConstraints
import qualified NoMotionRectangleConstraints -- org.allbinary.input.automation.module.generic.constraints.NoMotionRectangleConstraints
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface

data GenericModuleFactory = GenericModuleFactory
    { header_ :: JavaHeader
    , base :: AbstractInputAutomationFactory.AbstractInputAutomationFactory
    }

instance JavaNull GenericModuleFactory where
    javaNull = javaNullRecord "GenericModuleFactory"

instance JavaEquals GenericModuleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericModuleFactory where
    (==) = jrecordEquals

instance JavaObjectClass GenericModuleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nAME #-}
nAME = unsafePerformIO (newIORef (("Generic" ++ javaToString (jget InputAutomationModuleData.mODULE_NAME_END))))

newRecord_ :: IO GenericModuleFactory
newRecord_ = do
    base <- AbstractInputAutomationFactory.newRecord_
    let header_ = base.header_
    let this = GenericModuleFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: GenericModuleFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GenericModuleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericModuleFactory -> IO ()
init_ this = do
        AbstractInputAutomationFactory.init_2 this.base (jget nAME) (jio (GenericModuleConfigurationJPanel.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (RunnableInterface.RunnableInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GenericModuleFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (RunnableInterface.RunnableInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: GenericModuleFactory))

getInstance_impl :: GenericModuleFactory -> IO (RunnableInterface.RunnableInterface)
getInstance_impl this = do
        genericProfile <- (getSelectedGenericProfile (((javaCast (jio (AbstractInputAutomationFactory.getConfigurationJPanel this)) :: GenericModuleConfigurationJPanel.GenericModuleConfigurationJPanel))))
        let inputAutomationActionInterface = (javaCast (jio (GenericInputAutomationAction.new_)) :: InputAutomationActionInterface.InputAutomationActionInterface)
        pure ((javaCast (jio (GenericInputAutomationWorker.new_4 inputAutomationActionInterface genericProfile (jio (NoMotionRectangleConstraints.new_)) (jio (NoImageComparatorConstraints.new_)))) :: RunnableInterface.RunnableInterface))


