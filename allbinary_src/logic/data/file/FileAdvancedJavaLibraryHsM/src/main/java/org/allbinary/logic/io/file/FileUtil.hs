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
-- package org.allbinary.logic.io.file
module FileUtil where

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
import qualified AbFile -- same package or java.lang
import qualified FilePathData -- same package or java.lang
import qualified FileWrapperUtil -- same package or java.lang
import qualified FileUtil2 -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified AbFileLocalInputStream -- org.allbinary.logic.io.AbFileLocalInputStream
import qualified AbIOSystem -- org.allbinary.logic.io.AbIOSystem
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified FileStreamFactory -- org.allbinary.logic.io.FileStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data FileUtil = FileUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , directory :: IORef (Directory.Directory)
    , logConfigTypeFactory :: IORef (LogConfigTypeFactory.LogConfigTypeFactory)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , streamUtil :: IORef (StreamUtil.StreamUtil)
    , wRITE_LABEL :: IORef (String)
    , dATA_LABEL :: IORef (String)
    , wRITE_METHOD :: IORef (String)
    }

instance JavaNull FileUtil where
    javaNull = javaNullRecord "FileUtil"

instance JavaEquals FileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileUtil where
    (==) = jrecordEquals

instance JavaObjectClass FileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    directory <- newIORef javaNull
    logConfigTypeFactory <- newIORef javaNull
    commonStrings <- newIORef javaNull
    streamUtil <- newIORef javaNull
    wRITE_LABEL <- newIORef ""
    dATA_LABEL <- newIORef ""
    wRITE_METHOD <- newIORef ""
    let this = FileUtil header_ logUtil directory logConfigTypeFactory commonStrings streamUtil wRITE_LABEL dATA_LABEL wRITE_METHOD
    jregisterLevel header_ this
    jregisterMethod header_ "write_overload1" (\() -> write_overload1_impl this)
    jregisterMethod header_ "write_overload2" (\() -> write_overload2_impl this)
    jregisterMethod header_ "write_3" (\() -> write_3_impl this)
    jregisterMethod header_ "copy_overload1" (\() -> copy_overload1_impl this)
    jregisterMethod header_ "fixPath" (\() -> fixPath_impl this)
    jregisterMethod header_ "copyToCloud_overload1" (\() -> copyToCloud_overload1_impl this)
    jregisterMethod header_ "copyToCloud_6" (\() -> copyToCloud_6_impl this)
    jregisterMethod header_ "copyToCloud_2" (\() -> copyToCloud_2_impl this)
    jregisterMethod header_ "copyToCloud_overload2" (\() -> copyToCloud_overload2_impl this)
    jregisterMethod header_ "copyPrepare" (\() -> copyPrepare_impl this)
    jregisterMethod header_ "copyFile" (\() -> copyFile_impl this)
    jregisterMethod header_ "copyFile_4" (\() -> copyFile_4_impl this)
    jregisterMethod header_ "copyDirectoryPortion" (\() -> copyDirectoryPortion_impl this)
    jregisterMethod header_ "copyDirectory" (\() -> copyDirectory_impl this)
    jregisterMethod header_ "copy_overload2" (\() -> copy_overload2_impl this)
    jregisterMethod header_ "shouldSkip" (\() -> shouldSkip_impl this)
    jregisterMethod header_ "write_overload3" (\() -> write_overload3_impl this)
    jregisterMethod header_ "loadFileAsList" (\() -> loadFileAsList_impl this)
    pure this

initFields_ :: FileUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.directory =<< (Directory.getInstance)
    jset this.logConfigTypeFactory =<< (LogConfigTypeFactory.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.streamUtil =<< (StreamUtil.getInstance)
    jset this.wRITE_LABEL ("Write file: ")
    jset this.dATA_LABEL (" data: ")
    jset this.wRITE_METHOD ("write")
    pure ()


getInstance :: IO (FileUtil)
getInstance = do
        pure (FileUtil.instance_)

new_ :: IO FileUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of write: calls the overload for the types of the arguments
write :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
write this a1 a2
    | jisInstanceOf a1 (javaNull :: InputStream.InputStream) && jisInstanceOf a2 (javaNull :: AbFile.AbFile) = write_overload1 this (javaCast a1 :: InputStream.InputStream) (javaCast a2 :: AbFile.AbFile)
    | jisInstanceOf a1 (javaNull :: InputStream.InputStream) && jisInstanceOf a2 (javaNull :: AbDataOutputStream.AbDataOutputStream) = write_overload2 this (javaCast a1 :: InputStream.InputStream) (javaCast a2 :: AbDataOutputStream.AbDataOutputStream)
    | jisInstanceOf a1 (javaNull :: String) && jisInstanceOf a2 (javaNull :: String) = write_overload3 this (javaCast a1 :: String) (javaCast a2 :: String)
    | otherwise = write_overload3 this (javaCast a1 :: String) (javaCast a2 :: String)

-- throws Exception
write_overload1 :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> AbFile.AbFile -> IO (())
write_overload1 object_ a1 a2 = jmethod object_ "write_overload1" (\() -> (write_overload1_impl (javaCast object_ :: FileUtil))) () a1 a2

write_overload1_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> AbFile.AbFile -> IO (())
write_overload1_super object_ a1 a2 = (write_overload1_impl (javaCast object_ :: FileUtil)) a1 a2

write_overload1_impl :: FileUtil -> InputStream.InputStream -> AbFile.AbFile -> IO (())
write_overload1_impl this inputStream file = do
        dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) file)
        Control.Monad.void (FileUtil.write this inputStream dataOutputStream)
        pure ()


-- throws Exception
write_overload2 :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> AbDataOutputStream.AbDataOutputStream -> IO (())
write_overload2 object_ a1 a2 = jmethod object_ "write_overload2" (\() -> (write_overload2_impl (javaCast object_ :: FileUtil))) () a1 a2

write_overload2_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> AbDataOutputStream.AbDataOutputStream -> IO (())
write_overload2_super object_ a1 a2 = (write_overload2_impl (javaCast object_ :: FileUtil)) a1 a2

write_overload2_impl :: FileUtil -> InputStream.InputStream -> AbDataOutputStream.AbDataOutputStream -> IO (())
write_overload2_impl this inputStream dataOutputStream = do
        dataOutputStream <- newIORef dataOutputStream
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget dataOutputStream)))
            ) $ do
            jset dataOutputStream ((javaCast (jio (StreamUtil.get ((jio (StreamUtil.getInstance))) inputStream (javaCast (jget dataOutputStream)) (jnewArray (16384) 0))) :: AbDataOutputStream.AbDataOutputStream))
            Control.Monad.void (AbDataOutputStream.flush ((jget dataOutputStream)))
        pure ()


-- throws Exception
write_3 :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> AbDataOutputStream.AbDataOutputStream -> JavaArray (Int8) -> IO (())
write_3 object_ a1 a2 a3 = jmethod object_ "write_3" (\() -> (write_3_impl (javaCast object_ :: FileUtil))) () a1 a2 a3

write_3_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> AbDataOutputStream.AbDataOutputStream -> JavaArray (Int8) -> IO (())
write_3_super object_ a1 a2 a3 = (write_3_impl (javaCast object_ :: FileUtil)) a1 a2 a3

write_3_impl :: FileUtil -> InputStream.InputStream -> AbDataOutputStream.AbDataOutputStream -> JavaArray (Int8) -> IO (())
write_3_impl this inputStream dataOutputStream buffer = do
        dataOutputStream <- newIORef dataOutputStream
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget dataOutputStream)))
            ) $ do
            jset dataOutputStream ((javaCast (jio (StreamUtil.get ((jio (StreamUtil.getInstance))) inputStream (javaCast (jget dataOutputStream)) buffer)) :: AbDataOutputStream.AbDataOutputStream))
            Control.Monad.void (AbDataOutputStream.flush ((jget dataOutputStream)))
        pure ()


-- Java overloads of copy: calls the overload for the types of the arguments
copy :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o2) => this_ -> o1 -> o2 -> IO (())
copy this a1 a2
    | jisInstanceOf a1 (javaNull :: AbFileInputStream.AbFileInputStream) && jisInstanceOf a2 (javaNull :: AbDataOutputStream.AbDataOutputStream) = copy_overload1 this (javaCast a1 :: AbFileInputStream.AbFileInputStream) (javaCast a2 :: AbDataOutputStream.AbDataOutputStream)
    | jisInstanceOf a1 (javaNull :: AbPath.AbPath) && jisInstanceOf a2 (javaNull :: AbPath.AbPath) = copy_overload2 this (javaCast a1 :: AbPath.AbPath) (javaCast a2 :: AbPath.AbPath)
    | otherwise = copy_overload2 this (javaCast a1 :: AbPath.AbPath) (javaCast a2 :: AbPath.AbPath)

-- throws Exception
copy_overload1 :: (JavaObjectClass this_) => this_ -> AbFileInputStream.AbFileInputStream -> AbDataOutputStream.AbDataOutputStream -> IO (())
copy_overload1 object_ a1 a2 = jmethod object_ "copy_overload1" (\() -> (copy_overload1_impl (javaCast object_ :: FileUtil))) () a1 a2

copy_overload1_super :: (JavaObjectClass this_) => this_ -> AbFileInputStream.AbFileInputStream -> AbDataOutputStream.AbDataOutputStream -> IO (())
copy_overload1_super object_ a1 a2 = (copy_overload1_impl (javaCast object_ :: FileUtil)) a1 a2

copy_overload1_impl :: FileUtil -> AbFileInputStream.AbFileInputStream -> AbDataOutputStream.AbDataOutputStream -> IO (())
copy_overload1_impl this dataInputStream dataOutputStream = do
        dataOutputStream <- newIORef dataOutputStream
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget dataOutputStream)))
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast dataInputStream))
            ) $ do
            jset dataOutputStream ((javaCast (jio (StreamUtil.get ((jio (StreamUtil.getInstance))) (javaCast dataInputStream) (javaCast (jget dataOutputStream)) (jnewArray (16384) 0))) :: AbDataOutputStream.AbDataOutputStream))
            Control.Monad.void (AbDataOutputStream.flush ((jget dataOutputStream)))
        pure ()


-- throws Exception
fixPath :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> IO (AbPath.AbPath)
fixPath object_ a1 a2 a3 a4 = jmethod object_ "fixPath" (\() -> (fixPath_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4

fixPath_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> IO (AbPath.AbPath)
fixPath_super object_ a1 a2 a3 a4 = (fixPath_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4

fixPath_impl :: FileUtil -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> IO (AbPath.AbPath)
fixPath_impl this file path realPath cloud = do
        let beginIndex = ((jstringIndexOf (jio (AbFile.getPath file)) cloud 0) + (Prelude.length cloud))
        let endIndex = (jstringIndexOf (jio (AbFile.getPath file)) (jio (AbFile.getName file)) 0)
        let fixedPathString = (javaToString (jio (AbPath.toFileSystemString realPath)) ++ (Prelude.take ((endIndex) - (beginIndex)) (Prelude.drop (beginIndex) (jio (AbFile.getPath file)))))
        fixedPath <- (AbPath.new_2 fixedPathString (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        Control.Monad.void (Directory.create ((jget (this).directory)) fixedPath)
        string <- (AbPath.toFileSystemString fixedPath)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) string this "fixPath")
        outPath <- (AbPath.new_2 string (jio (AbFile.getName file)))
        pure (outPath)


-- Java overloads of copyToCloud: calls the overload for the types of the arguments
copyToCloud :: (JavaObjectClass this_, JavaObjectClass o2, JavaObjectClass o3, JavaObjectClass o4) => this_ -> AbFile.AbFile -> o2 -> o3 -> o4 -> IO (())
copyToCloud this a1 a2 a3 a4
    | jisInstanceOf a2 (javaNull :: AbPath.AbPath) && jisInstanceOf a3 (javaNull :: AbPath.AbPath) && jisInstanceOf a4 (javaNull :: String) = copyToCloud_overload1 this a1 (javaCast a2 :: AbPath.AbPath) (javaCast a3 :: AbPath.AbPath) (javaCast a4 :: String)
    | jisInstanceOf a2 (javaNull :: AbFile.AbFile) && jisInstanceOf a3 (javaNull :: Bool) && jisInstanceOf a4 (javaNull :: Bool) = copyToCloud_overload2 this a1 (javaCast a2 :: AbFile.AbFile) (javaCast a3 :: Bool) (javaCast a4 :: Bool)
    | otherwise = copyToCloud_overload2 this a1 (javaCast a2 :: AbFile.AbFile) (javaCast a3 :: Bool) (javaCast a4 :: Bool)

-- throws Exception
copyToCloud_overload1 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> IO (())
copyToCloud_overload1 object_ a1 a2 a3 a4 = jmethod object_ "copyToCloud_overload1" (\() -> (copyToCloud_overload1_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4

copyToCloud_overload1_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> IO (())
copyToCloud_overload1_super object_ a1 a2 a3 a4 = (copyToCloud_overload1_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4

copyToCloud_overload1_impl :: FileUtil -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> IO (())
copyToCloud_overload1_impl this file path realPath cloud = do
        Control.Monad.void (FileUtil.copyToCloud_6 this file path realPath cloud False False)
        pure ()


-- throws Exception
copyToCloud_6 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> Bool -> Bool -> IO (())
copyToCloud_6 object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "copyToCloud_6" (\() -> (copyToCloud_6_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4 a5 a6

copyToCloud_6_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> Bool -> Bool -> IO (())
copyToCloud_6_super object_ a1 a2 a3 a4 a5 a6 = (copyToCloud_6_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4 a5 a6

copyToCloud_6_impl :: FileUtil -> AbFile.AbFile -> AbPath.AbPath -> AbPath.AbPath -> String -> Bool -> Bool -> IO (())
copyToCloud_6_impl this file path realPath cloud overwriteNewer overwriteAll = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILEERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Error Copying File File: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.toString file)))
                Control.Monad.void (StringMaker.append stringBuffer " to cloud.")
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyToCloud" e)
            javaThrow (e)
            ) $ do
            outPath <- (FileUtil.fixPath this file path realPath cloud)
            outFile <- (AbFile.createAbFileFromAbPath outPath)
            if (Prelude.not (jio (FileUtil.copyPrepare this file outFile overwriteNewer overwriteAll))) then do
                javaReturn (())
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "Out File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath outFile)))
                    Control.Monad.void (StringMaker.append stringBuffer " In File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
                    Control.Monad.void (StringMaker.append stringBuffer " to cloud.")
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyToCloud")
            dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) outFile)
            fileInputStream <- (fmap (\value_ -> javaCast value_ :: AbFileInputStream.AbFileInputStream) (AbFileLocalInputStream.new_1 file))
            Control.Monad.void (FileUtil.copy this fileInputStream dataOutputStream)
    pure ()


-- throws Exception
copyToCloud_2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyToCloud_2 object_ a1 a2 = jmethod object_ "copyToCloud_2" (\() -> (copyToCloud_2_impl (javaCast object_ :: FileUtil))) () a1 a2

copyToCloud_2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyToCloud_2_super object_ a1 a2 = (copyToCloud_2_impl (javaCast object_ :: FileUtil)) a1 a2

copyToCloud_2_impl :: FileUtil -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyToCloud_2_impl this file outFile = do
        Control.Monad.void (FileUtil.copyToCloud this file outFile False False)
        pure ()


-- throws Exception
copyToCloud_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (())
copyToCloud_overload2 object_ a1 a2 a3 a4 = jmethod object_ "copyToCloud_overload2" (\() -> (copyToCloud_overload2_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4

copyToCloud_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (())
copyToCloud_overload2_super object_ a1 a2 a3 a4 = (copyToCloud_overload2_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4

copyToCloud_overload2_impl :: FileUtil -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (())
copyToCloud_overload2_impl this file outFile overwriteNewer overwriteAll = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILEERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Error Copying File File: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.toString file)))
                Control.Monad.void (StringMaker.append stringBuffer " to cloud.")
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyToCloud" e)
            javaThrow (e)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            if (Prelude.not (jio (FileUtil.copyPrepare this file outFile overwriteNewer overwriteAll))) then do
                javaReturn (())
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer "Out File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath outFile)))
                    Control.Monad.void (StringMaker.append stringBuffer " In File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
                    Control.Monad.void (StringMaker.append stringBuffer " to cloud.")
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyToCloud")
            dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) outFile)
            fileInputStream <- (fmap (\value_ -> javaCast value_ :: AbFileInputStream.AbFileInputStream) (AbFileLocalInputStream.new_1 file))
            Control.Monad.void (FileUtil.copy this fileInputStream dataOutputStream)
    pure ()


-- throws Exception
copyPrepare :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (Bool)
copyPrepare object_ a1 a2 a3 a4 = jmethod object_ "copyPrepare" (\() -> (copyPrepare_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4

copyPrepare_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (Bool)
copyPrepare_super object_ a1 a2 a3 a4 = (copyPrepare_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4

copyPrepare_impl :: FileUtil -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (Bool)
copyPrepare_impl this fromFile toFile overwriteNewer overwriteAll = do
    javaCatchReturn $ do
        if (jio (AbFile.exists toFile)) then do
            stringBuffer <- (StringMaker.new_)
            if overwriteAll then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer "Overwriting File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath toFile)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyFile")
                Control.Monad.void (AbFile.delete toFile)
                Control.Monad.void (AbFile.createNewFile toFile)
            else if (((jio (AbFile.lastModified toFile)) < (jio (AbFile.lastModified fromFile))) && overwriteNewer) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer "Newer by: ")
                    Control.Monad.void (StringMaker.appendlong stringBuffer ((jio (AbFile.lastModified fromFile)) - (jio (AbFile.lastModified toFile))))
                    Control.Monad.void (StringMaker.append stringBuffer "ms ")
                    Control.Monad.void (StringMaker.append stringBuffer "Copying File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath toFile)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyFile")
                Control.Monad.void (AbFile.delete toFile)
                Control.Monad.void (AbFile.createNewFile toFile)
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer "File Already Exists")
                    if overwriteNewer then do
                        Control.Monad.void (StringMaker.append stringBuffer " And Is Not Older")
                    else do
                        Control.Monad.void (StringMaker.append stringBuffer " And Not A In Overwrite Mode")
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).cOLON_SEP))
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath toFile)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyFile")
                javaReturn (False)
        else do
            Control.Monad.void (AbFile.createNewFile toFile)
        pure (True)


-- throws Exception
copyFile :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyFile object_ a1 a2 = jmethod object_ "copyFile" (\() -> (copyFile_impl (javaCast object_ :: FileUtil))) () a1 a2

copyFile_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyFile_super object_ a1 a2 = (copyFile_impl (javaCast object_ :: FileUtil)) a1 a2

copyFile_impl :: FileUtil -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyFile_impl this fromFile toFile = do
        Control.Monad.void (FileUtil.copyFile_4 this fromFile toFile False False)
        pure ()


-- throws Exception
copyFile_4 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (())
copyFile_4 object_ a1 a2 a3 a4 = jmethod object_ "copyFile_4" (\() -> (copyFile_4_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4

copyFile_4_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (())
copyFile_4_super object_ a1 a2 a3 a4 = (copyFile_4_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4

copyFile_4_impl :: FileUtil -> AbFile.AbFile -> AbFile.AbFile -> Bool -> Bool -> IO (())
copyFile_4_impl this fromFile toFile overwriteNewer overwriteAll = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILEERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Error Copying File fromFile: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.toString fromFile)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.toString toFile)))
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyFile" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Copying ")
                Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromIntegral (jio (AbFile.length fromFile))))
                Control.Monad.void (StringMaker.append stringBuffer " bytes from File: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath fromFile)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath toFile)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyFile")
            when (Prelude.not (jio (FileUtil.copyPrepare this fromFile toFile overwriteNewer overwriteAll))) $ do
                javaReturn (())
            dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) toFile)
            fileInputStream <- (AbFileInputStream.new_1 fromFile)
            Control.Monad.void (FileUtil.copy this fileInputStream dataOutputStream)
    pure ()


getNewDirectory :: AbFile.AbFile -> IO (String)
getNewDirectory fromFile = do
        newDirectory <- newIORef =<< (AbFile.getPath fromFile)
        separatorChar <- newIORef ((jget ((jio (FilePathData.getInstance))).pATH_START))
        when (jio (AbIOSystem.isType ((jio (AbIOSystem.getInstance))) "com.vobject.appengine.java.io")) $ do
            jset separatorChar ((jget ((jio (AbPathData.getInstance))).sEPARATOR))
        lastIndex <- newIORef ((jstringLastIndexOf (jget newDirectory) (jget separatorChar)))
        when ((jget lastIndex) >= (Prelude.length (jget newDirectory))) $ do
            jset newDirectory ((Prelude.take ((((Prelude.length (jget newDirectory)) - 1)) - (0)) (Prelude.drop (0) (jget newDirectory))))
            jset lastIndex ((jstringLastIndexOf (jget newDirectory) (jget separatorChar)))
        pure ((Prelude.take (((Prelude.length (jget newDirectory))) - ((jget lastIndex))) (Prelude.drop ((jget lastIndex)) (jget newDirectory))))


-- throws Exception
copyDirectoryPortion :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> Bool -> Bool -> Int -> Int -> IO (())
copyDirectoryPortion object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "copyDirectoryPortion" (\() -> (copyDirectoryPortion_impl (javaCast object_ :: FileUtil))) () a1 a2 a3 a4 a5 a6

copyDirectoryPortion_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> Bool -> Bool -> Int -> Int -> IO (())
copyDirectoryPortion_super object_ a1 a2 a3 a4 a5 a6 = (copyDirectoryPortion_impl (javaCast object_ :: FileUtil)) a1 a2 a3 a4 a5 a6

copyDirectoryPortion_impl :: FileUtil -> AbPath.AbPath -> AbPath.AbPath -> Bool -> Bool -> Int -> Int -> IO (())
copyDirectoryPortion_impl this fromDirectoryAbPath toDirectoryAbPath overwriteNewer overwriteAll current total = do
        file <- (AbFile.createAbFileFromAbPath fromDirectoryAbPath)
        when (Prelude.not (jio (AbFile.isDirectory file))) $ do
            javaThrow ((JavaException "Exception" ("Not a directory: " ++ javaToString (jio (AbFile.getPath file)))))
        fileList <- (Directory.search ((jget (this).directory)) file True)
        size <- (BasicArrayList.size fileList)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Searched: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
        Control.Monad.void (StringMaker.append stringBuffer " Total: ")
        Control.Monad.void (StringMaker.appendint stringBuffer size)
        let portion = ((size `quot` total) + 1)
        let start = (portion * current)
        end <- newIORef ((start + portion))
        when ((jget end) > size) $ do
            jset end (size)
        Control.Monad.void (StringMaker.append stringBuffer " Section: ")
        Control.Monad.void (StringMaker.appendint stringBuffer start)
        Control.Monad.void (StringMaker.append stringBuffer " - ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget end))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copySomeFilesToDirectory()")
        nextFile <- newIORef (javaNull)
        forM_ [start .. (jget end) - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextFile ((javaCast (jio (BasicArrayList.get fileList index)) :: AbFile.AbFile))
            if (jio (AbFile.isDirectory ((jget nextFile)))) then do
                pure ()
            else do
                path <- (AbPath.getPath ((jio (AbPath.new_2 (jio (AbFile.getPath ((jget nextFile)))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))))
                beginIndex <- newIORef ((Prelude.length (jio (AbPath.getPath fromDirectoryAbPath))))
                when ((jstringIndexOf path (jio (URLGLOBALS.getWebappPath)) 0) < 0) $ do
                    jset beginIndex (((jget beginIndex) - (Prelude.length (jio (AbPath.getPath ((jio (AbPath.new_2 (jio (URLGLOBALS.getWebappPath)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))))))))
                let newPath = (javaToString (jio (AbPath.toFileSystemString toDirectoryAbPath)) ++ (Prelude.drop (jget beginIndex) path))
                toFile <- (AbFile.createAbFileFromAbPath (jio (AbPath.new_2 newPath (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))))
                Control.Monad.void (FileUtil.copyFile_4 this (jget nextFile) toFile overwriteNewer overwriteAll)
        pure ()


-- throws Exception
copyDirectory :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyDirectory object_ a1 a2 = jmethod object_ "copyDirectory" (\() -> (copyDirectory_impl (javaCast object_ :: FileUtil))) () a1 a2

copyDirectory_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyDirectory_super object_ a1 a2 = (copyDirectory_impl (javaCast object_ :: FileUtil)) a1 a2

copyDirectory_impl :: FileUtil -> AbFile.AbFile -> AbFile.AbFile -> IO (())
copyDirectory_impl this fromFile to = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILEERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Error Copying Directory fromFile: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.toString fromFile)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.toString to)))
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyDirectory" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Copying Directory from: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath fromFile)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath to)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyDirectory")
            newDirectory <- (FileUtil.getNewDirectory fromFile)
            newDirectoryAbPath <- (AbPath.new_2 (javaToString ((jio (AbFile.getPath to)) + (jget ((jio (AbPathData.getInstance))).sEPARATOR)) ++ newDirectory) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when (Prelude.not (jio (Directory.create ((jget (this).directory)) newDirectoryAbPath))) $ do
                javaThrow ((JavaException "Exception" ("Failed to create directory: " ++ javaToString newDirectoryAbPath)))
            fileArray <- (FileWrapperUtil.wrapFiles (jio (AbFile.listFiles fromFile)))
            let size = (jlength fileArray)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Copying ")
                Control.Monad.void (StringMaker.appendint stringBuffer size)
                Control.Monad.void (StringMaker.append stringBuffer " files from: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath fromFile)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath to)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) "copyDirectory")
            file <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset file ((jindex fileArray (index)))
                if (jio (AbFile.isFile ((jget file)))) then do
                    Control.Monad.void (FileUtil.copyFile this (jget file) (jio (AbFile.createAbFilePathAndName (jio (AbPath.toString newDirectoryAbPath)) (jio (AbFile.getName ((jget file)))))))
                else if (jio (AbFile.isDirectory ((jget file)))) then do
                    Control.Monad.void (FileUtil.copyDirectory this (jget file) (jio (AbFile.createAbFileFromAbPath newDirectoryAbPath)))
                else do
                    javaThrow ((JavaException "Exception" "File Copy Error"))
        pure ()


-- throws Exception
copy_overload2 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> IO (Bool)
copy_overload2 object_ a1 a2 = jmethod object_ "copy_overload2" (\() -> (copy_overload2_impl (javaCast object_ :: FileUtil))) () a1 a2

copy_overload2_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> IO (Bool)
copy_overload2_super object_ a1 a2 = (copy_overload2_impl (javaCast object_ :: FileUtil)) a1 a2

copy_overload2_impl :: FileUtil -> AbPath.AbPath -> AbPath.AbPath -> IO (Bool)
copy_overload2_impl this fromAbPath to = do
        let cOPY = "copy"
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILEERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Error Copying fromAbPath: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString fromAbPath)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString to)))
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) cOPY e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Copying AbPaths from: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString fromAbPath)))
                Control.Monad.void (StringMaker.append stringBuffer " to: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString to)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) cOPY)
            when (fromAbPath == javaNull) $ do
                javaThrow ((JavaException "Exception" "Cannot Copy From A Null Location"))
            when (to == javaNull) $ do
                javaThrow ((JavaException "Exception" "Cannot Copy To A Null Location"))
            fromLocationFile <- (AbFile.createAbFileFromAbPath fromAbPath)
            toLocationFile <- (AbFile.createAbFileFromAbPath to)
            if (jio (AbFile.isFile fromLocationFile)) then do
                if (jio (AbFile.isDirectory toLocationFile)) then do
                    file <- (AbFile.createAbFileWithChild toLocationFile (jio (AbFile.getName fromLocationFile)))
                    Control.Monad.void (FileUtil.copyFile this fromLocationFile file)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "Copied file=")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getName fromLocationFile)))
                        Control.Monad.void (StringMaker.append stringBuffer " from: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath fromLocationFile)))
                        Control.Monad.void (StringMaker.append stringBuffer " to: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath toLocationFile)))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) cOPY)
                else do
                    Control.Monad.void (FileUtil.copyFile this fromLocationFile toLocationFile)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "Copied file with new name ")
                        Control.Monad.void (StringMaker.append stringBuffer " from: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath fromLocationFile)))
                        Control.Monad.void (StringMaker.append stringBuffer " to: ")
                        Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath toLocationFile)))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) (jio (FileUtil.getInstance)) cOPY)
            else when ((jio (AbFile.isDirectory fromLocationFile)) && (jio (AbFile.isDirectory toLocationFile))) $ do
                if (((jio (AbPath.toFileSystemString fromAbPath)) Prelude.!! ((Prelude.length (jio (AbPath.toFileSystemString fromAbPath))) - 1)) == (jget ((jget (java.io).file)).separatorChar)) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Copying subdirectories" (jio (FileUtil.getInstance)) cOPY)
                    fileArray <- (FileWrapperUtil.wrapFiles (jio (AbFile.listFiles fromLocationFile)))
                    forM_ [0 .. (jlength fileArray) - 1] $ \index -> javaIteration (pure ()) $ do
                        let file = (jindex fileArray (index))
                        if (jio (AbFile.isFile file)) then do
                            aFile <- (AbFile.createAbFileWithChild toLocationFile (jio (AbFile.getName file)))
                            Control.Monad.void (FileUtil.copyFile this file aFile)
                        else if (jio (AbFile.isDirectory file)) then do
                            Control.Monad.void (FileUtil.copyDirectory this file toLocationFile)
                        else do
                            javaThrow ((JavaException "Exception" "File Copy Error"))
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Copied subdirectories" (jio (FileUtil.getInstance)) cOPY)
                else do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Copyinhg directory" (jio (FileUtil.getInstance)) cOPY)
                    Control.Monad.void (FileUtil.copyDirectory this fromLocationFile toLocationFile)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jget (this).logConfigTypeFactory)).fILE))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Copied directory" (jio (FileUtil.getInstance)) cOPY)
            pure (True)


shouldSkip :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> JavaArray (String) -> IO (Bool)
shouldSkip object_ a1 a2 = jmethod object_ "shouldSkip" (\() -> (shouldSkip_impl (javaCast object_ :: FileUtil))) () a1 a2

shouldSkip_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> JavaArray (String) -> IO (Bool)
shouldSkip_super object_ a1 a2 = (shouldSkip_impl (javaCast object_ :: FileUtil)) a1 a2

shouldSkip_impl :: FileUtil -> AbFile.AbFile -> JavaArray (String) -> IO (Bool)
shouldSkip_impl this file skipFiles = do
    javaCatchReturn $ do
        let size = (jlength skipFiles)
        skipFile <- newIORef ("")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset skipFile ((jindex skipFiles (index)))
            when ((Prelude.fromEnum (Prelude.compare (jio (AbFile.getPath file)) (jget skipFile)) - 1) == 0) $ do
                javaReturn (True)
        pure (False)


-- throws Exception
write_overload3 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
write_overload3 object_ a1 a2 = jmethod object_ "write_overload3" (\() -> (write_overload3_impl (javaCast object_ :: FileUtil))) () a1 a2

write_overload3_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
write_overload3_super object_ a1 a2 = (write_overload3_impl (javaCast object_ :: FileUtil)) a1 a2

write_overload3_impl :: FileUtil -> String -> String -> IO (())
write_overload3_impl this filePath string = do
        dataOutputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget dataOutputStream)))
            ) $ do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).wRITE_LABEL)))) filePath))) (jget (this).dATA_LABEL)))) string))))) this (jget (this).wRITE_METHOD))
            fileInputStreamFactory <- (FileStreamFactory.getInstance)
            fileOutputStream <- (fmap (\value_ -> javaCast value_ :: OutputStream.OutputStream) (FileStreamFactory.getFileOutputStreamInstance fileInputStreamFactory (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) filePath))
            assignedValue <- (AbDataOutputStream.new_1 fileOutputStream)
            jset dataOutputStream (assignedValue)
            Control.Monad.void (AbDataOutputStream.write ((jget dataOutputStream)) (jgetBytes string) 0 (Prelude.length string))
            Control.Monad.void (AbDataOutputStream.flush ((jget dataOutputStream)))
        pure ()


loadFileAsList :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList object_ a1 a2 a3 = jmethod object_ "loadFileAsList" (\() -> (loadFileAsList_impl (javaCast object_ :: FileUtil))) () a1 a2 a3

loadFileAsList_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList_super object_ a1 a2 a3 = (loadFileAsList_impl (javaCast object_ :: FileUtil)) a1 a2 a3

loadFileAsList_impl :: FileUtil -> AbFile.AbFile -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList_impl this file max byteArray1 = do
        (FileUtil2.loadFileAsList ((jio (FileUtil2.getInstance))) file max byteArray1)


