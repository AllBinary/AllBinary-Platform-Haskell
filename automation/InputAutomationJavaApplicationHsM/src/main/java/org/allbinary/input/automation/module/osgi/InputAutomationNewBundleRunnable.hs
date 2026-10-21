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
-- package org.allbinary.input.automation.module.osgi
module InputAutomationNewBundleRunnable where

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
import qualified Thread -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified File -- java.io.File
import qualified FileFilter -- java.io.FileFilter
import qualified FileInputStream -- java.io.FileInputStream
import qualified URL -- java.net.URL
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified JarInputStream -- java.util.jar.JarInputStream
import qualified Manifest -- java.util.jar.Manifest
import qualified Bundle -- org.osgi.framework.Bundle
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified Constants -- org.osgi.framework.Constants
import qualified InputAutomationBundleActivator -- bundle.input.automation.InputAutomationBundleActivator
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified FileWrapperUtil -- org.allbinary.logic.io.file.FileWrapperUtil
import qualified SubDirectory -- org.allbinary.logic.io.file.directory.SubDirectory
import qualified BasicFileFilterUtil -- org.allbinary.logic.io.file.filter.BasicFileFilterUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- implements RunnableInterface
data InputAutomationNewBundleRunnable = InputAutomationNewBundleRunnable
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , inputAutomationBundleActivator :: IORef (InputAutomationBundleActivator.InputAutomationBundleActivator)
    , running :: IORef (Bool)
    , fileBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull InputAutomationNewBundleRunnable where
    javaNull = javaNullRecord "InputAutomationNewBundleRunnable"

instance JavaEquals InputAutomationNewBundleRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationNewBundleRunnable where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationNewBundleRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fILE = "file:"

jAR_DIR_PROP = "org.knopflerfish.gosg.jars"

iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH = "ia/auto"

mODULES_START_LEVEL = 8

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationNewBundleRunnable
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    inputAutomationBundleActivator <- newIORef javaNull
    running <- newIORef False
    fileBasicArrayList <- newIORef javaNull
    let this = InputAutomationNewBundleRunnable header_ logUtil commonStrings inputAutomationBundleActivator running fileBasicArrayList
    jregisterLevel header_ this
    RunnableInterface.registerInterface_ header_
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "updateModules" (\() -> updateModules_impl this)
    jregisterMethod header_ "getAllJarSymbolicNameHashMap" (\() -> getAllJarSymbolicNameHashMap_impl this)
    jregisterMethod header_ "getJarModuleFileBasicArrayList" (\() -> getJarModuleFileBasicArrayList_impl this)
    jregisterMethod header_ "getInstalledJarSymbolicNameBasicArrayList" (\() -> getInstalledJarSymbolicNameBasicArrayList_impl this)
    jregisterMethod header_ "isInstalled" (\() -> isInstalled_impl this)
    jregisterMethod header_ "findNewModules" (\() -> findNewModules_impl this)
    jregisterMethod header_ "install" (\() -> install_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: InputAutomationNewBundleRunnable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.inputAutomationBundleActivator (javaNull)
    jset this.running (False)
    jset this.fileBasicArrayList (javaNull)
    pure ()

new_1 :: InputAutomationBundleActivator.InputAutomationBundleActivator -> IO InputAutomationNewBundleRunnable
new_1 inputAutomationBundleActivator = do
    this <- newRecord_
    init_1 this inputAutomationBundleActivator
    pure this

init_1 :: InputAutomationNewBundleRunnable -> InputAutomationBundleActivator.InputAutomationBundleActivator -> IO ()
init_1 this inputAutomationBundleActivator = do
        initFields_ this
        jset (this).inputAutomationBundleActivator (inputAutomationBundleActivator)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).fileBasicArrayList (assignedValue)
        pure ()


-- throws Exception
setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: InputAutomationNewBundleRunnable)) a1

setThread_impl :: InputAutomationNewBundleRunnable -> Thread.Thread -> IO (())
setThread_impl this thread = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

isRunning_impl :: InputAutomationNewBundleRunnable -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: InputAutomationNewBundleRunnable)) a1

setRunning_impl :: InputAutomationNewBundleRunnable -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


-- throws Exception
updateModules :: (JavaObjectClass this_) => this_ -> IO (())
updateModules object_ = jmethod object_ "updateModules" (\() -> (updateModules_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

updateModules_super :: (JavaObjectClass this_) => this_ -> IO (())
updateModules_super object_ = (updateModules_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

updateModules_impl :: InputAutomationNewBundleRunnable -> IO (())
updateModules_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "updateModules")
        list <- (InputAutomationNewBundleRunnable.findNewModules this)
        size <- (BasicArrayList.size list)
        bundle <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (InputAutomationNewBundleRunnable.install this (javaCast (jio (BasicArrayList.get list index)) :: URL.URL))
            jset bundle (assignedValue)
            when ((jget bundle) /= javaNull) $ do
                Control.Monad.void (Bundle.start ((jget bundle)) (InputAutomationNewBundleRunnable.mODULES_START_LEVEL))
        pure ()


-- throws Exception
getAllJarSymbolicNameHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getAllJarSymbolicNameHashMap object_ = jmethod object_ "getAllJarSymbolicNameHashMap" (\() -> (getAllJarSymbolicNameHashMap_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

getAllJarSymbolicNameHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getAllJarSymbolicNameHashMap_super object_ = (getAllJarSymbolicNameHashMap_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

getAllJarSymbolicNameHashMap_impl :: InputAutomationNewBundleRunnable -> IO (HashMap.HashMap)
getAllJarSymbolicNameHashMap_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getAllJarSymbolicNameHashMap")
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        jarFileBasicArrayList <- (InputAutomationNewBundleRunnable.getJarModuleFileBasicArrayList this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Jar Module Files: " ++ javaToString jarFileBasicArrayList) this "getAllJarSymbolicNameHashMap")
        size <- (BasicArrayList.size jarFileBasicArrayList)
        file <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset file ((javaCast (jio (BasicArrayList.get jarFileBasicArrayList index)) :: File.File))
            when (Prelude.not (jio (File.isDirectory ((jget file))))) $ do
                fileInputStream <- (FileInputStream.new_1 (jget file))
                jarInputStream <- (JarInputStream.new_1 fileInputStream)
                manifest <- (JarInputStream.getManifest jarInputStream)
                if (manifest == javaNull) then do
                    pure ()
                else do
                    symbolicName <- (Manifest.getValue ((jio (Manifest.getMainAttributes manifest))) (Constants.bUNDLE_SYMBOLICNAME))
                    when (symbolicName /= javaNull) $ do
                        Control.Monad.void (jio (HashMap.put hashMap symbolicName (jio (URL.new_1 (InputAutomationNewBundleRunnable.fILE + (jio (File.getAbsolutePath ((jget file)))))))))
        pure (hashMap)


getJarModuleFileBasicArrayList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getJarModuleFileBasicArrayList object_ = jmethod object_ "getJarModuleFileBasicArrayList" (\() -> (getJarModuleFileBasicArrayList_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

getJarModuleFileBasicArrayList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getJarModuleFileBasicArrayList_super object_ = (getJarModuleFileBasicArrayList_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

getJarModuleFileBasicArrayList_impl :: InputAutomationNewBundleRunnable -> IO (BasicArrayList.BasicArrayList)
getJarModuleFileBasicArrayList_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getJarModuleFileBasicArrayList")
        baseJarPath <- newIORef =<< (jgetProperty jAR_DIR_PROP)
        when (Data.List.isPrefixOf (InputAutomationNewBundleRunnable.fILE) (jget baseJarPath)) $ do
            jset baseJarPath ((Prelude.drop (jio (length InputAutomationNewBundleRunnable.fILE)) (jget baseJarPath)))
        jarFileFilter <- (BasicFileFilterUtil.getInstance ".jar")
        let path = ((jget baseJarPath) ++ javaToString InputAutomationNewBundleRunnable.iNPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Path: " ++ path) this "getJarModuleFileBasicArrayList")
        file <- (File.new_1 path)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("File: " ++ javaToString (jio (File.getAbsolutePath file))) ++ " isDirectory: ") ++ javaToString (jio (File.isDirectory file))) this "getJarModuleFileBasicArrayList")
        (SubDirectory.search ((jio (SubDirectory.getInstance))) jarFileFilter (jio (FileWrapperUtil.wrapFile file)))


-- throws Exception
getInstalledJarSymbolicNameBasicArrayList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getInstalledJarSymbolicNameBasicArrayList object_ = jmethod object_ "getInstalledJarSymbolicNameBasicArrayList" (\() -> (getInstalledJarSymbolicNameBasicArrayList_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

getInstalledJarSymbolicNameBasicArrayList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getInstalledJarSymbolicNameBasicArrayList_super object_ = (getInstalledJarSymbolicNameBasicArrayList_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

getInstalledJarSymbolicNameBasicArrayList_impl :: InputAutomationNewBundleRunnable -> IO (BasicArrayList.BasicArrayList)
getInstalledJarSymbolicNameBasicArrayList_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getInstalledJarSymbolicNameBasicArrayList")
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        bundleContext <- (InputAutomationBundleActivator.getBundleContext)
        bundleArray <- (BundleContext.getBundles bundleContext)
        when (bundleArray /= javaNull) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("bundleArray: " ++ javaToString (jlength bundleArray)) this "getInputAutomationModuleServices")
            forM_ [0 .. (jlength bundleArray) - 1] $ \index -> javaIteration (pure ()) $ do
                let bundle = (jindex bundleArray (index))
                Control.Monad.void (BasicArrayList.add vector (jio (Bundle.getSymbolicName bundle)))
        pure (vector)


-- throws Exception
isInstalled :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isInstalled object_ a1 = jmethod object_ "isInstalled" (\() -> (isInstalled_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) () a1

isInstalled_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isInstalled_super object_ a1 = (isInstalled_impl (javaCast object_ :: InputAutomationNewBundleRunnable)) a1

isInstalled_impl :: InputAutomationNewBundleRunnable -> String -> IO (Bool)
isInstalled_impl this symbolicName = do
    javaCatchReturn $ do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jio (CommonLabels.getInstance))).sTART) ++ symbolicName) this "isInstalled")
        list <- (InputAutomationNewBundleRunnable.getInstalledJarSymbolicNameBasicArrayList this)
        size <- (BasicArrayList.size list)
        nextSymbolicName <- newIORef ("")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextSymbolicName ((javaCast (jio (BasicArrayList.get list index)) :: String))
            when ((Prelude.fromEnum (Prelude.compare (jget nextSymbolicName) symbolicName) - 1) == 0) $ do
                javaReturn (True)
        pure (False)


-- throws Exception
findNewModules :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
findNewModules object_ = jmethod object_ "findNewModules" (\() -> (findNewModules_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

findNewModules_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
findNewModules_super object_ = (findNewModules_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

findNewModules_impl :: InputAutomationNewBundleRunnable -> IO (BasicArrayList.BasicArrayList)
findNewModules_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "findNewModules")
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        hashMap <- (InputAutomationNewBundleRunnable.getAllJarSymbolicNameHashMap this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("All: " ++ javaToString hashMap) this "findNewModules")
        set <- (HashMap.keySet hashMap)
        symbolicNameArray <- (Set.toArray set)
        let size = (jlength symbolicNameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let symbolicName = (javaCast (jindex symbolicNameArray (index)) :: String)
            when (Prelude.not (jio (InputAutomationNewBundleRunnable.isInstalled this symbolicName))) $ do
                Control.Monad.void (BasicArrayList.add vector (jio (HashMap.get hashMap symbolicName)))
        pure (vector)


-- throws Exception
install :: (JavaObjectClass this_) => this_ -> URL.URL -> IO (Bundle.Bundle)
install object_ a1 = jmethod object_ "install" (\() -> (install_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) () a1

install_super :: (JavaObjectClass this_) => this_ -> URL.URL -> IO (Bundle.Bundle)
install_super object_ a1 = (install_impl (javaCast object_ :: InputAutomationNewBundleRunnable)) a1

install_impl :: InputAutomationNewBundleRunnable -> URL.URL -> IO (Bundle.Bundle)
install_impl this url = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).sTART) + url) this "install")
        bundleContext <- (InputAutomationBundleActivator.getBundleContext)
        (BundleContext.installBundle bundleContext (jio (URL.toString url)))


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: InputAutomationNewBundleRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: InputAutomationNewBundleRunnable))

run_impl :: InputAutomationNewBundleRunnable -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (InputAutomationNewBundleRunnable.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            handle (\JavaBreak -> pure ()) $ fix $ \loop -> when (jio (InputAutomationNewBundleRunnable.isRunning this)) $ javaIteration (loop) $ do
                Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
                Control.Monad.void (InputAutomationNewBundleRunnable.updateModules this)
                throwIO JavaBreak
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


