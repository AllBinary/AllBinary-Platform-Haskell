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
-- package org.allbinary.business.init
module InstallerInfo where

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
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbDataInputStream -- org.allbinary.logic.io.AbDataInputStream
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileLocalInputStream -- org.allbinary.logic.io.AbFileLocalInputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified DatabaseEncoder -- org.allbinary.logic.system.security.crypt.DatabaseEncoder
import qualified WeakCrypt -- org.allbinary.logic.system.security.crypt.WeakCrypt

data InstallerInfo = InstallerInfo
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull InstallerInfo where
    javaNull = javaNullRecord "InstallerInfo"

instance JavaEquals InstallerInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InstallerInfo where
    (==) = jrecordEquals

instance JavaObjectClass InstallerInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

iNITFILENAME = "installerdata.dat"

pACKAGE = (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH)

{-# NOINLINE userName #-}
userName = unsafePerformIO (newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))

{-# NOINLINE password #-}
password = unsafePerformIO (newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))

{-# NOINLINE hasRead #-}
hasRead = unsafePerformIO (newIORef (False))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InstallerInfo
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = InstallerInfo header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "updateIfNeeded" (\() -> updateIfNeeded_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: InstallerInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO InstallerInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InstallerInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: InstallerInfo))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: InstallerInfo))

write_impl :: InstallerInfo -> IO (())
write_impl this = do
        fILEABPATH <- (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) + InstallerInfo.pACKAGE) (InstallerInfo.iNITFILENAME))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRELOADERERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Failed" this "write")
            javaThrow (e)
            ) $ do
            newFile <- (AbFile.createAbFileFromAbPath fILEABPATH)
            Control.Monad.void (AbFile.createNewFile newFile)
            dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) newFile)
            let cryptedUserName = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 1))) (jio (InstallerInfo.getUserName this)))))
            let cryptedPassword = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 2))) (jio (InstallerInfo.getPassword this)))))
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedUserName)))
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedPassword)))
            jset InstallerInfo.hasRead (False)
        pure ()


-- throws Exception
read :: (JavaObjectClass this_) => this_ -> IO (())
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: InstallerInfo))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (())
read_super object_ = (read_impl (javaCast object_ :: InstallerInfo))

read_impl :: InstallerInfo -> IO (())
read_impl this = do
        fILEABPATH <- (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) + InstallerInfo.pACKAGE) (InstallerInfo.iNITFILENAME))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRELOADERERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Failed" this "read")
            ) $ do
            file <- (AbFile.createAbFileFromAbPath fILEABPATH)
            if (jio (AbFile.isFile file)) then do
                iFile <- (AbFileLocalInputStream.new_1 file)
                iData <- (AbDataInputStream.new_1 iFile)
                decryptedUserName <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                decryptedPassword <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                Control.Monad.void (InstallerInfo.setUserName this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 1))) decryptedUserName)))
                Control.Monad.void (InstallerInfo.setPassword this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 2))) decryptedPassword)))
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRELOADER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Not a File - Failed Loading: " ++ (jio (AbPath.toString fILEABPATH))) this "read")
        pure ()


setHasRead :: Bool -> IO (())
setHasRead value = do
        jset InstallerInfo.hasRead (value)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: InstallerInfo))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: InstallerInfo)) a1

setUserName_impl :: InstallerInfo -> String -> IO (())
setUserName_impl this userName = do
        jset InstallerInfo.userName (userName)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: InstallerInfo))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: InstallerInfo)) a1

setPassword_impl :: InstallerInfo -> String -> IO (())
setPassword_impl this password = do
        jset InstallerInfo.password (password)
        pure ()


-- throws Exception
updateIfNeeded :: (JavaObjectClass this_) => this_ -> IO (())
updateIfNeeded object_ = jmethod object_ "updateIfNeeded" (\() -> (updateIfNeeded_impl (javaCast object_ :: InstallerInfo))) ()

updateIfNeeded_super :: (JavaObjectClass this_) => this_ -> IO (())
updateIfNeeded_super object_ = (updateIfNeeded_impl (javaCast object_ :: InstallerInfo))

updateIfNeeded_impl :: InstallerInfo -> IO (())
updateIfNeeded_impl this = do
        when (Prelude.not (jget InstallerInfo.hasRead)) $ do
            jset InstallerInfo.hasRead (True)
            Control.Monad.void (InstallerInfo.read this)
            when (((jget InstallerInfo.userName) == javaNull) || ((jget InstallerInfo.password) == javaNull)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRELOADER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Failed" this "updateIfNeeded")
        pure ()


-- throws Exception
getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: InstallerInfo))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: InstallerInfo))

getUserName_impl :: InstallerInfo -> IO (String)
getUserName_impl this = do
        Control.Monad.void (InstallerInfo.updateIfNeeded this)
        pure ((jget InstallerInfo.userName))


-- throws Exception
getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: InstallerInfo))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: InstallerInfo))

getPassword_impl :: InstallerInfo -> IO (String)
getPassword_impl this = do
        Control.Monad.void (InstallerInfo.updateIfNeeded this)
        pure ((jget InstallerInfo.password))


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isValid object_ a1 a2 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: InstallerInfo))) () a1 a2

isValid_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isValid_super object_ a1 a2 = (isValid_impl (javaCast object_ :: InstallerInfo)) a1 a2

isValid_impl :: InstallerInfo -> String -> String -> IO (Bool)
isValid_impl this userName password = do
    javaCatchReturn $ do
        Control.Monad.void (InstallerInfo.updateIfNeeded this)
        when ((((userName /= javaNull) && ((Prelude.fromEnum (Prelude.compare userName userName) - 1) == 0)) && (password /= javaNull)) && ((Prelude.fromEnum (Prelude.compare password password) - 1) == 0)) $ do
            javaReturn (True)
        pure (False)


