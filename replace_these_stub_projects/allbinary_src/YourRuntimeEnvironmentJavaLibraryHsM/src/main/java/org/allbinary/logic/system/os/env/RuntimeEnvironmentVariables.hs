{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os.env
module RuntimeEnvironmentVariables where

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
import qualified Process -- same package or java.lang
import qualified Runtime -- same package or java.lang
import qualified BufferedReader -- java.io.BufferedReader
import qualified InputStreamReader -- java.io.InputStreamReader
import qualified Properties -- java.util.Properties
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified OperatingSystems -- org.allbinary.logic.system.os.OperatingSystems
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data RuntimeEnvironmentVariables = RuntimeEnvironmentVariables
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull RuntimeEnvironmentVariables where
    javaNull = javaNullRecord "RuntimeEnvironmentVariables"

instance JavaEquals RuntimeEnvironmentVariables where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RuntimeEnvironmentVariables where
    (==) = jrecordEquals

instance JavaObjectClass RuntimeEnvironmentVariables where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RuntimeEnvironmentVariables
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = RuntimeEnvironmentVariables header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getTest1" (\() -> getTest1_impl this)
    jregisterMethod header_ "getVariable" (\() -> getVariable_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getTempDir" (\() -> getTempDir_impl this)
    jregisterMethod header_ "getLibraryPath" (\() -> getLibraryPath_impl this)
    jregisterMethod header_ "getClassPath" (\() -> getClassPath_impl this)
    jregisterMethod header_ "updateLibraryPath" (\() -> updateLibraryPath_impl this)
    jregisterMethod header_ "getUserHome" (\() -> getUserHome_impl this)
    jregisterMethod header_ "getUserDir" (\() -> getUserDir_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "setVariable" (\() -> setVariable_impl this)
    pure this

initFields_ :: RuntimeEnvironmentVariables -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO RuntimeEnvironmentVariables
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RuntimeEnvironmentVariables -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getTest1 :: (JavaObjectClass this_) => this_ -> IO (String)
getTest1 object_ = jmethod object_ "getTest1" (\() -> (getTest1_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

getTest1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTest1_super object_ = (getTest1_impl (javaCast object_ :: RuntimeEnvironmentVariables))

getTest1_impl :: RuntimeEnvironmentVariables -> IO (String)
getTest1_impl this = do
        (jgetProperty "java.java.home")


getVariable :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getVariable object_ a1 = jmethod object_ "getVariable" (\() -> (getVariable_impl (javaCast object_ :: RuntimeEnvironmentVariables))) () a1

getVariable_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getVariable_super object_ a1 = (getVariable_impl (javaCast object_ :: RuntimeEnvironmentVariables)) a1

getVariable_impl :: RuntimeEnvironmentVariables -> String -> IO (String)
getVariable_impl this var = do
        environmentVariables <- (RuntimeEnvironmentVariables.get this)
        (Properties.getProperty environmentVariables var)


get :: (JavaObjectClass this_) => this_ -> IO (Properties.Properties)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Properties.Properties)
get_super object_ = (get_impl (javaCast object_ :: RuntimeEnvironmentVariables))

get_impl :: RuntimeEnvironmentVariables -> IO (Properties.Properties)
get_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "get()" e)
            pure (javaNull)
            ) $ do
            process <- newIORef (javaNull)
            environmentVariables <- (Properties.new_)
            operatingSystemInterface <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
            osName <- (GenericOperatingSystem.getName operatingSystemInterface)
            let linuxCommand = "env"
            let windowsCommand = "cmd.exe /c set"
            let solarisCommand = linuxCommand
            operatingSystems <- (OperatingSystems.getInstance)
            if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).lINUX)) - 1) == 0) then do
                assignedValue <- (Runtime.exec ((jio (Runtime.getRuntime))) linuxCommand)
                jset process (assignedValue)
            else if ((jstringIndexOf osName (jget (operatingSystems).wINDOWS) 0) >= 0) then do
                assignedValue <- (Runtime.exec ((jio (Runtime.getRuntime))) windowsCommand)
                jset process (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).sOLARIS)) - 1) == 0) then do
                assignedValue <- (Runtime.exec ((jio (Runtime.getRuntime))) solarisCommand)
                jset process (assignedValue)
            else do
                javaThrow ((JavaException "Exception" ""))
            processInputStreamReader <- (InputStreamReader.new_1 (jio (Process.getInputStream ((jget process)))))
            bufferedReader <- (BufferedReader.new_1 processInputStreamReader)
            keyValuePair <- newIORef ("")
            fix $ \loop -> when (((jassign keyValuePair ((jio (BufferedReader.readLine bufferedReader))))) /= javaNull) $ javaIteration (loop) $ do
                let index = (jstringIndexOf (jget keyValuePair) '=' 0)
                let key = (Prelude.take ((index) - (0)) (Prelude.drop (0) (jget keyValuePair)))
                let value = (Prelude.drop (index + 1) (jget keyValuePair))
                Control.Monad.void (Properties.put environmentVariables key value)
            pure (environmentVariables)


getTempDir :: (JavaObjectClass this_) => this_ -> IO (String)
getTempDir object_ = jmethod object_ "getTempDir" (\() -> (getTempDir_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

getTempDir_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTempDir_super object_ = (getTempDir_impl (javaCast object_ :: RuntimeEnvironmentVariables))

getTempDir_impl :: RuntimeEnvironmentVariables -> IO (String)
getTempDir_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getTempDir()" e)
            pure (javaNull)
            ) $ do
            (jgetProperty "java.io.tmpdir")


getLibraryPath :: (JavaObjectClass this_) => this_ -> IO (String)
getLibraryPath object_ = jmethod object_ "getLibraryPath" (\() -> (getLibraryPath_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

getLibraryPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLibraryPath_super object_ = (getLibraryPath_impl (javaCast object_ :: RuntimeEnvironmentVariables))

getLibraryPath_impl :: RuntimeEnvironmentVariables -> IO (String)
getLibraryPath_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getLibraryPath()" e)
            pure (javaNull)
            ) $ do
            (jgetProperty "java.library.path")


getClassPath :: (JavaObjectClass this_) => this_ -> IO (String)
getClassPath object_ = jmethod object_ "getClassPath" (\() -> (getClassPath_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

getClassPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getClassPath_super object_ = (getClassPath_impl (javaCast object_ :: RuntimeEnvironmentVariables))

getClassPath_impl :: RuntimeEnvironmentVariables -> IO (String)
getClassPath_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getClassPath()" e)
            pure (javaNull)
            ) $ do
            (jgetProperty "java.class.path")


updateLibraryPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateLibraryPath object_ a1 = jmethod object_ "updateLibraryPath" (\() -> (updateLibraryPath_impl (javaCast object_ :: RuntimeEnvironmentVariables))) () a1

updateLibraryPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
updateLibraryPath_super object_ a1 = (updateLibraryPath_impl (javaCast object_ :: RuntimeEnvironmentVariables)) a1

updateLibraryPath_impl :: RuntimeEnvironmentVariables -> String -> IO (())
updateLibraryPath_impl this libPath = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "updateLibraryPath()" e)
            ) $ do
            existingPath <- (RuntimeEnvironmentVariables.getLibraryPath this)
            Control.Monad.void (System.setProperty "java.library.path" ((libPath ++ ":") ++ existingPath))
        pure ()


getUserHome :: (JavaObjectClass this_) => this_ -> IO (String)
getUserHome object_ = jmethod object_ "getUserHome" (\() -> (getUserHome_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

getUserHome_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserHome_super object_ = (getUserHome_impl (javaCast object_ :: RuntimeEnvironmentVariables))

getUserHome_impl :: RuntimeEnvironmentVariables -> IO (String)
getUserHome_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getUserHome()" e)
            pure (javaNull)
            ) $ do
            (jgetProperty "user.home")


getUserDir :: (JavaObjectClass this_) => this_ -> IO (String)
getUserDir object_ = jmethod object_ "getUserDir" (\() -> (getUserDir_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

getUserDir_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserDir_super object_ = (getUserDir_impl (javaCast object_ :: RuntimeEnvironmentVariables))

getUserDir_impl :: RuntimeEnvironmentVariables -> IO (String)
getUserDir_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getUserDir()" e)
            pure (javaNull)
            ) $ do
            (jgetProperty "user.dir")


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: RuntimeEnvironmentVariables))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: RuntimeEnvironmentVariables))

set_impl :: RuntimeEnvironmentVariables -> IO (())
set_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "get()" e)
            ) $ do
            pure ()
        pure ()


setVariable :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setVariable object_ a1 a2 = jmethod object_ "setVariable" (\() -> (setVariable_impl (javaCast object_ :: RuntimeEnvironmentVariables))) () a1 a2

setVariable_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setVariable_super object_ a1 a2 = (setVariable_impl (javaCast object_ :: RuntimeEnvironmentVariables)) a1 a2

setVariable_impl :: RuntimeEnvironmentVariables -> String -> String -> IO (())
setVariable_impl this var val = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).oSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "setVariable()" e)
            ) $ do
            process <- newIORef (javaNull)
            operatingSystemInterface <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
            operatingSystems <- (OperatingSystems.getInstance)
            osName <- (GenericOperatingSystem.getName operatingSystemInterface)
            let windowsCommand = ((("cmd.exe /c set" ++ var) ++ "=") ++ val)
            if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).lINUX)) - 1) == 0) then do
                javaThrow ((JavaException "Exception" ""))
            else if ((jstringIndexOf osName (jget (operatingSystems).wINDOWS) 0) >= 0) then do
                assignedValue <- (Runtime.exec ((jio (Runtime.getRuntime))) windowsCommand)
                jset process (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).sOLARIS)) - 1) == 0) then do
                javaThrow ((JavaException "Exception" ""))
            else do
                javaThrow ((JavaException "Exception" ""))
        pure ()


