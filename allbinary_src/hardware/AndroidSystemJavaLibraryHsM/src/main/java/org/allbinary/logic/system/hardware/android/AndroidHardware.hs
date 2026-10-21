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
-- package org.allbinary.logic.system.hardware.android
module AndroidHardware where

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
import qualified Closeable -- java.io.Closeable
import qualified FileReader -- java.io.FileReader
import qualified LineNumberReader -- java.io.LineNumberReader
import qualified NullCloseable -- org.allbinary.logic.io.NullCloseable
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified HardwareInterface -- org.allbinary.logic.system.hardware.HardwareInterface
import qualified UnknownHardware -- org.allbinary.logic.system.hardware.components.android.UnknownHardware
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements HardwareInterface
data AndroidHardware = AndroidHardware
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , componentInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , pROC_BUS_INPUT_DIRECTORY :: IORef (String)
    , dEVICES :: IORef (String)
    , mINHARDWARE :: IORef (Int)
    }

instance JavaNull AndroidHardware where
    javaNull = javaNullRecord "AndroidHardware"

instance JavaEquals AndroidHardware where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidHardware where
    (==) = jrecordEquals

instance JavaObjectClass AndroidHardware where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AndroidHardware
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    componentInterfaceVector <- newIORef javaNull
    pROC_BUS_INPUT_DIRECTORY <- newIORef ""
    dEVICES <- newIORef ""
    mINHARDWARE <- newIORef 0
    let this = AndroidHardware header_ logUtil commonStrings componentInterfaceVector pROC_BUS_INPUT_DIRECTORY dEVICES mINHARDWARE
    jregisterLevel header_ this
    HardwareInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getComponent" (\() -> getComponent_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "difference" (\() -> difference_impl this)
    pure this

initFields_ :: AndroidHardware -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.componentInterfaceVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.pROC_BUS_INPUT_DIRECTORY ("/proc/bus/input/")
    jset this.dEVICES (((jget (this).pROC_BUS_INPUT_DIRECTORY) ++ "devices/"))
    jset this.mINHARDWARE (3)
    pure ()

new_ :: IO AndroidHardware
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidHardware -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (AndroidHardware.init this (jget (this).dEVICES))
        size <- (BasicArrayList.size ((jget (this).componentInterfaceVector)))
        when (size < (jget (this).mINHARDWARE)) $ do
            javaThrow ((JavaException "Exception" "Not Enough Data For A Valid License On Linux"))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> String -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AndroidHardware))) () a1

init_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: AndroidHardware)) a1

init_impl :: AndroidHardware -> String -> IO (())
init_impl this filePath = do
        lineNumberReader <- newIORef ((javaCast NullCloseable.nULL_CLOSEABLE :: Closeable.Closeable))
        flip finally (do
            when ((jget lineNumberReader) /= javaNull) $ do
                Control.Monad.void (Closeable.close ((jget lineNumberReader)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Hardware Data: " ++ (jio (AndroidHardware.toString this))) this (jget ((jget (this).commonStrings)).iNIT) e)
            javaThrow (e)
            ) $ do
            assignedValue <- (AndroidHardware.get this filePath)
            jset lineNumberReader (assignedValue)
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> IO (LineNumberReader.LineNumberReader)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AndroidHardware))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (LineNumberReader.LineNumberReader)
get_super object_ a1 = (get_impl (javaCast object_ :: AndroidHardware)) a1

get_impl :: AndroidHardware -> String -> IO (LineNumberReader.LineNumberReader)
get_impl this filePath = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).componentInterfaceVector (assignedValue)
        pciFile <- (FileReader.new_1 filePath)
        lineNumberReader <- (LineNumberReader.new_1 pciFile)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "File Found" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        nextLine <- newIORef =<< (LineNumberReader.readLine lineNumberReader)
        fix $ \loop -> when ((jget nextLine) /= javaNull) $ javaIteration (loop) $ do
            assignedValue <- (LineNumberReader.readLine lineNumberReader)
            jset nextLine (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget (this).componentInterfaceVector)) (jio (UnknownHardware.new_1 (jget nextLine))))
        pure (lineNumberReader)


getComponent :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent object_ a1 = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: AndroidHardware))) () a1

getComponent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_super object_ a1 = (getComponent_impl (javaCast object_ :: AndroidHardware)) a1

getComponent_impl :: AndroidHardware -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).componentInterfaceVector)) index)) :: HardwareComponentInterface.HardwareComponentInterface))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AndroidHardware))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AndroidHardware))

toString_impl :: AndroidHardware -> IO (String)
toString_impl this = do
        stringBuilder <- (StringMaker.new_)
        size <- (BasicArrayList.size ((jget (this).componentInterfaceVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let componentInterface = (javaCast (jio (BasicArrayList.get ((jget (this).componentInterfaceVector)) index)) :: HardwareComponentInterface.HardwareComponentInterface)
            Control.Monad.void (StringMaker.append stringBuilder (jio (HardwareComponentInterface.toString componentInterface)))
            Control.Monad.void (StringMaker.append stringBuilder (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        (StringMaker.toString stringBuilder)


compareTo :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: AndroidHardware))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: AndroidHardware)) a1

compareTo_impl :: AndroidHardware -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_impl this hardwareInterface = do
        pure (True)


difference :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: AndroidHardware))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_super object_ a1 = (difference_impl (javaCast object_ :: AndroidHardware)) a1

difference_impl :: AndroidHardware -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_impl this hardwareInterface = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


