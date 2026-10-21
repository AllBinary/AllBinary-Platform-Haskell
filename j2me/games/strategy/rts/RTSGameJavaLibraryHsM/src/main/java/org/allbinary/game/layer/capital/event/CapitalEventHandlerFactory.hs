{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer.capital.event
module CapitalEventHandlerFactory where

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
import qualified CapitalEventHandler -- same package or java.lang
import qualified Group -- org.allbinary.game.identification.Group

data CapitalEventHandlerFactory = CapitalEventHandlerFactory
    { header_ :: JavaHeader
    }

instance JavaNull CapitalEventHandlerFactory where
    javaNull = javaNullRecord "CapitalEventHandlerFactory"

instance JavaEquals CapitalEventHandlerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CapitalEventHandlerFactory where
    (==) = jrecordEquals

instance JavaObjectClass CapitalEventHandlerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

capitalEventHandlerArray = javaNull

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CapitalEventHandlerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CapitalEventHandlerFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CapitalEventHandlerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CapitalEventHandlerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CapitalEventHandlerFactory -> IO ()
init_ this = do
    initFields_ this


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        capitalEventHandlerArray <- pure ((jnewArray (10) javaNull))
        forM_ [((jlength CapitalEventHandlerFactory.capitalEventHandlerArray) - 1), ((jlength CapitalEventHandlerFactory.capitalEventHandlerArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (CapitalEventHandler.new_)
            jsetIndex CapitalEventHandlerFactory.capitalEventHandlerArray (index) (assignedValue)
        pure ()


getInstance :: Group.Group -> IO (CapitalEventHandler.CapitalEventHandler)
getInstance groupInterface = do
        pure ((jindex CapitalEventHandlerFactory.capitalEventHandlerArray ((Prelude.fromIntegral (jio (Group.getGroupId groupInterface))))))


removeAll :: IO (())
removeAll = do
        forM_ [((jlength CapitalEventHandlerFactory.capitalEventHandlerArray) - 1), ((jlength CapitalEventHandlerFactory.capitalEventHandlerArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (removeAllListeners ((jindex CapitalEventHandlerFactory.capitalEventHandlerArray (index))))
        pure ()


