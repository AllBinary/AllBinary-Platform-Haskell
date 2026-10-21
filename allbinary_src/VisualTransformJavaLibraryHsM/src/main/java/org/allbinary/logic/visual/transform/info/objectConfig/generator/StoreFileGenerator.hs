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
-- package org.allbinary.logic.visual.transform.info.objectConfig.generator
module StoreFileGenerator (module StoreFileGenerator, module TransformInfoObjectConfigGenerator) where

import TransformInfoObjectConfigGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, logUtil, commonStrings, output, fileAbPath, file)
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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified InputStream -- java.io.InputStream
import qualified HashMap -- java.util.HashMap
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoHttpStoreInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TransformInfoObjectConfigGenerator

data StoreFileGenerator = StoreFileGenerator
    { header_ :: JavaHeader
    , base :: TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , output :: IORef (String)
    , fileAbPath :: IORef (AbPath.AbPath)
    , file :: IORef (AbFile.AbFile)
    }

instance JavaNull StoreFileGenerator where
    javaNull = javaNullRecord "StoreFileGenerator"

instance JavaEquals StoreFileGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFileGenerator where
    (==) = jrecordEquals

instance JavaObjectClass StoreFileGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFileGenerator
newRecord_ = do
    base <- TransformInfoObjectConfigGenerator.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    output <- newIORef ""
    fileAbPath <- newIORef javaNull
    file <- newIORef javaNull
    let this = StoreFileGenerator header_ base logUtil commonStrings output fileAbPath file
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: StoreFileGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.output (javaNull)
    jset this.fileAbPath (javaNull)
    jset this.file (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO StoreFileGenerator
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: StoreFileGenerator -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        TransformInfoObjectConfigGenerator.init_ this.base
        initFields_ this
        let httpTransformInfoInterface = (javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        weblisketSession <- (WeblisketSession.new_2 (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
        stringBuffer <- newIORef =<< (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (URLGLOBALS.getWebappPath)))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (WeblisketSession.getStoreName weblisketSession)))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        abPath <- newIORef =<< (AbPath.new_2 (jio (StringMaker.toString ((jget stringBuffer)))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        fileName <- newIORef ((javaCast (jio (TransformInfoHttpInterface.get ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (jget ((jio (InputOutputTypeData.getInstance))).fILE))) :: String))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil (jget fileName))) $ do
            let transformInfoHttpStoreInterface = (javaCast transformInfoInterface :: TransformInfoHttpStoreInterface.TransformInfoHttpStoreInterface)
            assignedValue <- (TransformInfoInterface.substring ((jio (TransformInfoInterface.getName transformInfoInterface))) ((jio (TransformInfoHttpStoreInterface.length ((jio (TransformInfoHttpStoreInterface.getStoreName transformInfoHttpStoreInterface))))) + 1))
            jset fileName (assignedValue)
            outputMappingHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            Control.Monad.void (HashMap.put outputMappingHashMap (jget ((jio (TransformInfosData.getInstance))).pREVIEW) "Preview")
            Control.Monad.void (HashMap.put outputMappingHashMap (jget ((jio (TransformInfosData.getInstance))).sMALL_PREVIEW) "SmallPreview")
            Control.Monad.void (HashMap.put outputMappingHashMap (jget ((jio (CommonSeps.getInstance))).sPACE) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            replace <- (Replace.new_1 outputMappingHashMap)
            assignedValue <- (Replace.all replace (jget fileName))
            jset fileName (assignedValue)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil (jget fileName))) $ do
            javaThrow ((JavaException "Exception" "TransformInfoObjectConfigGenerator FileName Not Specified"))
        tempOutput <- newIORef ((javaCast (jio (TransformInfoHttpInterface.get ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (jget ((jio (InputOutputTypeData.getInstance))).nAME))) :: String))
        when (jio (StringValidationUtil.isEmpty stringValidationUtil (jget tempOutput))) $ do
            jset tempOutput ((jget ((jio (InputOutputTypeData.getInstance))).dEFAULT))
        jset (this).output ((jget tempOutput))
        when (jio (StringValidationUtil.isEmpty stringValidationUtil (jget (this).output))) $ do
            javaThrow ((JavaException "Exception" "TransformInfoObjectConfigGenerator Output=extension Not Specified"))
        assignedValue <- (StringMaker.new_)
        jset stringBuffer (assignedValue)
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget fileName))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget (this).output))
        assignedValue <- (AbPath.new_2 (jio (AbPath.toString ((jget abPath)))) (jio (StringMaker.toString ((jget stringBuffer)))))
        jset abPath (assignedValue)
        jset (this).fileAbPath ((jget abPath))
        assignedValue <- (AbFile.createAbFileFromAbPath (jget (this).fileAbPath))
        jset (this).file (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("File: " ++ (jio (AbPath.toString ((jget (this).fileAbPath))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: StoreFileGenerator))) () a1

process_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process_super object_ a1 = (process_impl (javaCast object_ :: StoreFileGenerator)) a1

process_impl :: StoreFileGenerator -> String -> IO (String)
process_impl this input = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing" this (jget ((jget (this).commonStrings)).pROCESS))
        when (Prelude.not (jio (AbFile.exists ((jget (this).file))))) $ do
            Control.Monad.void (AbFile.createNewFile ((jget (this).file)))
        if (jio (AbFile.exists ((jget (this).file)))) then do
            inputStream <- (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (ByteArrayInputStream.new_1 (jgetBytes input)))
            Control.Monad.void (FileUtil.write ((jio (FileUtil.getInstance))) inputStream (jget (this).file))
        else do
            javaThrow ((JavaException "Exception" ("Could Not Create: " ++ (jio (AbPath.toString ((jget (this).fileAbPath)))))))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processed" this (jget ((jget (this).commonStrings)).pROCESS))
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


