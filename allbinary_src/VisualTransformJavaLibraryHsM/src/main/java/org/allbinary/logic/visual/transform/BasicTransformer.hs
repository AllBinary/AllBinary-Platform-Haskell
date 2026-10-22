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
-- package org.allbinary.logic.visual.transform
module BasicTransformer (module BasicTransformer, module AbTransformer) where

import AbTransformer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setEncryptedTemplateFileAsInputStream, setEncryptedTemplateFileAsInputStream_super, setEncryptedTemplateFileAsInputStream_impl, setEncryptedTemplateAsInputStream, setEncryptedTemplateAsInputStream_super, setEncryptedTemplateAsInputStream_impl, setTemplateAsInputStream, setTemplateAsInputStream_super, setTemplateAsInputStream_impl, logUtil, streamUtil, abeClientInformation)
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
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified InputStream -- java.io.InputStream
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified BasicUriResolver -- org.allbinary.data.tree.dom.BasicUriResolver
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbCrypt -- org.allbinary.logic.control.crypt.jcehelper.AbCrypt
import qualified KeySpecFactory -- org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified PathUtil -- org.allbinary.logic.io.path.PathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbKeys -- org.allbinary.logic.system.security.AbKeys
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoTemplateData -- org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData
import qualified AbTransformer

data BasicTransformer = BasicTransformer
    { header_ :: JavaHeader
    , base :: AbTransformer.AbTransformer
    , logUtil :: IORef (LogUtil.LogUtil)
    , streamUtil :: IORef (StreamUtil.StreamUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    }

instance JavaNull BasicTransformer where
    javaNull = javaNullRecord "BasicTransformer"

instance JavaEquals BasicTransformer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTransformer where
    (==) = jrecordEquals

instance JavaObjectClass BasicTransformer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicTransformer
newRecord_ = do
    base <- AbTransformer.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    streamUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    let this = BasicTransformer header_ base logUtil streamUtil abeClientInformation
    jregisterLevel header_ this
    jregisterMethod header_ "setEncryptedTemplateFileAsInputStream" (\() -> setEncryptedTemplateFileAsInputStream_impl this)
    jregisterMethod header_ "setEncryptedTemplateAsInputStream" (\() -> setEncryptedTemplateAsInputStream_impl this)
    jregisterMethod header_ "setTemplateAsInputStream" (\() -> setTemplateAsInputStream_impl this)
    pure this

initFields_ :: BasicTransformer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.streamUtil =<< (StreamUtil.getInstance)
    jset this.abeClientInformation (javaNull)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO BasicTransformer
new_2 abeClientInformation transformInfoInterface = do
    this <- newRecord_
    init_2 this abeClientInformation transformInfoInterface
    pure this

init_2 :: BasicTransformer -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_2 this abeClientInformation transformInfoInterface = do
        AbTransformer.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).abeClientInformation (abeClientInformation)
        Control.Monad.void (BasicTransformer.setTemplateAsInputStream this)
        pure ()


-- throws Exception
setEncryptedTemplateFileAsInputStream :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (())
setEncryptedTemplateFileAsInputStream object_ a1 = jmethod object_ "setEncryptedTemplateFileAsInputStream" (\() -> (setEncryptedTemplateFileAsInputStream_impl (javaCast object_ :: BasicTransformer))) () a1

setEncryptedTemplateFileAsInputStream_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (())
setEncryptedTemplateFileAsInputStream_super object_ a1 = (setEncryptedTemplateFileAsInputStream_impl (javaCast object_ :: BasicTransformer)) a1

setEncryptedTemplateFileAsInputStream_impl :: BasicTransformer -> AbFile.AbFile -> IO (())
setEncryptedTemplateFileAsInputStream_impl this file = do
        outputStream <- newIORef (javaNull)
        inputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget outputStream)))
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget inputStream)))
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Failed to get Encrypted File: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
                Control.Monad.void (StringMaker.append stringBuffer " \nName:")
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getName file)))
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "setEncryptedTemplateFileAsInputStream()" e)
            javaThrow (e)
            ) $ do
            assignedValue <- (ByteArrayOutputStream.new_)
            jset outputStream (assignedValue)
            assignedValue <- (AbFileInputStream.new_1 file)
            jset inputStream (assignedValue)
            jset outputStream ((javaCast (jio (StreamUtil.get ((jget (this).streamUtil)) (javaCast (jget inputStream)) (javaCast (jget outputStream)) (jnewArray (16384) 0))) :: ByteArrayOutputStream.ByteArrayOutputStream))
            abCrypt <- (AbCrypt.new_2 (KeySpecFactory.dESEDE) (jio (AbKeys.getKey ((jio (AbKeys.getInstance))) (jget (this).abeClientInformation) (jio (AbFile.getAbsolutePath file)))))
            decrypted <- (AbCrypt.decrypt abCrypt (jio (ByteArrayOutputStream.toByteArray ((jget outputStream)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Decrypted Template: \n" ++ javaToString (jio (jnewString decrypted))) this "setEncryptedTemplateFileAsInputStream(file)")
            Control.Monad.void (AbTransformer.setInputStream this (javaCast (jio (ByteArrayInputStream.new_1 decrypted)) :: InputStream.InputStream))
            Control.Monad.void (AbTransformer.setURIResolver this (javaCast (jio (BasicUriResolver.new_1 (jget ((jio (TransformInfoTemplateData.getInstance))).eNCRYPTED_EXTENSION))) :: URIResolver.URIResolver))
        pure ()


-- throws Exception
setEncryptedTemplateAsInputStream :: (JavaObjectClass this_) => this_ -> IO (())
setEncryptedTemplateAsInputStream object_ = jmethod object_ "setEncryptedTemplateAsInputStream" (\() -> (setEncryptedTemplateAsInputStream_impl (javaCast object_ :: BasicTransformer))) ()

setEncryptedTemplateAsInputStream_super :: (JavaObjectClass this_) => this_ -> IO (())
setEncryptedTemplateAsInputStream_super object_ = (setEncryptedTemplateAsInputStream_impl (javaCast object_ :: BasicTransformer))

setEncryptedTemplateAsInputStream_impl :: BasicTransformer -> IO (())
setEncryptedTemplateAsInputStream_impl this = do
        outputStream <- newIORef (javaNull)
        inputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget outputStream)))
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget inputStream)))
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Failed to set with template: " ++ javaToString (jio (TransformInfoInterface.getTemplateFilePath ((jio (AbTransformer.getTransformInfoInterface this)))))) this "setEncryptedTemplateFileAsInputStream()" e)
            javaThrow (e)
            ) $ do
            assignedValue <- (ByteArrayOutputStream.new_)
            jset outputStream (assignedValue)
            assignedValue <- (ByteArrayInputStream.new_1 (jio (TransformInfoInterface.getBytes ((jio (TransformInfoInterface.getTemplate ((jio (AbTransformer.getTransformInfoInterface this)))))))))
            jset inputStream (assignedValue)
            jset outputStream ((javaCast (jio (StreamUtil.get ((jget (this).streamUtil)) (javaCast (jget inputStream)) (javaCast (jget outputStream)) (jnewArray (16384) 0))) :: ByteArrayOutputStream.ByteArrayOutputStream))
            abCrypt <- (AbCrypt.new_2 (KeySpecFactory.dESEDE) (jio (AbKeys.getKey ((jio (AbKeys.getInstance))) (jget (this).abeClientInformation) (jio (TransformInfoInterface.getName ((jio (AbTransformer.getTransformInfoInterface this))))))))
            decrypted <- (AbCrypt.decrypt abCrypt (jio (ByteArrayOutputStream.toByteArray ((jget outputStream)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Decrypted Template: \n" ++ (jio (toString decrypted))) this "setEncryptedTemplateAsInputStream()")
            Control.Monad.void (AbTransformer.setInputStream this (javaCast (jio (ByteArrayInputStream.new_1 decrypted)) :: InputStream.InputStream))
            Control.Monad.void (AbTransformer.setURIResolver this (javaCast (jio (BasicUriResolver.new_1 (jget ((jio (TransformInfoTemplateData.getInstance))).eNCRYPTED_EXTENSION))) :: URIResolver.URIResolver))
        pure ()


-- throws Exception
setTemplateAsInputStream :: (JavaObjectClass this_) => this_ -> IO (())
setTemplateAsInputStream object_ = jmethod object_ "setTemplateAsInputStream" (\() -> (setTemplateAsInputStream_impl (javaCast object_ :: BasicTransformer))) ()

setTemplateAsInputStream_super :: (JavaObjectClass this_) => this_ -> IO (())
setTemplateAsInputStream_super object_ = (setTemplateAsInputStream_impl (javaCast object_ :: BasicTransformer))

setTemplateAsInputStream_impl :: BasicTransformer -> IO (())
setTemplateAsInputStream_impl this = do
    javaCatchReturn $ do
        inputStream <- newIORef (javaNull)
        outputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget outputStream)))
            Control.Monad.void (StreamUtil.close ((jget (this).streamUtil)) (javaCast (jget inputStream)))
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to get Template Data" this "setTemplateAsInputStream()" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformInfoInterface.log ((jio (AbTransformer.getTransformInfoInterface this))))) this "setTemplateAsInputStream()")
            transformInfoTemplateData <- (TransformInfoTemplateData.getInstance)
            pathUtil <- (PathUtil.getInstance)
            if ((jio (TransformInfoInterface.getTemplateFilePath ((jio (AbTransformer.getTransformInfoInterface this))))) /= javaNull) then do
                extension <- (PathUtil.getExtensionWithAbPath pathUtil (jio (TransformInfoInterface.getTemplateFilePath ((jio (AbTransformer.getTransformInfoInterface this))))))
                filePath <- (PathUtil.getWithoutExtensionWithAbPath pathUtil (jio (TransformInfoInterface.getTemplateFilePath ((jio (AbTransformer.getTransformInfoInterface this))))))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformInfoInterface.log ((jio (AbTransformer.getTransformInfoInterface this))))) this "setTemplateAsInputStream()")
                if ((Prelude.fromEnum (Prelude.compare extension (jget (transformInfoTemplateData).uNCRYPTED_EXTENSION)) - 1) == 0) then do
                    stringBuffer <- newIORef =<< (StringMaker.new_)
                    Control.Monad.void (StringMaker.append ((jget stringBuffer)) filePath)
                    Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
                    Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget (transformInfoTemplateData).eNCRYPTED_EXTENSION))
                    encFile <- (AbFile.createAbFile (jio (StringMaker.toString ((jget stringBuffer)))))
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformInfoInterface.log ((jio (AbTransformer.getTransformInfoInterface this))))) this "setTemplateAsInputStream()")
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                        assignedValue <- (StringMaker.new_)
                        jset stringBuffer (assignedValue)
                        Control.Monad.void (StringMaker.append ((jget stringBuffer)) "Encrypted Template File isFile=")
                        Control.Monad.void (StringMaker.appendboolean ((jget stringBuffer)) (jio (AbFile.isFile encFile)))
                        Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nEncTemplateFilePath: ")
                        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (AbFile.getPath encFile)))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jget stringBuffer)))) this "setTemplateAsInputStream()")
                    if (jio (AbFile.isFile encFile)) then do
                        Control.Monad.void (BasicTransformer.setEncryptedTemplateFileAsInputStream this encFile)
                        javaReturn (())
                    else do
                        file <- (AbFile.createAbFileFromAbPath (jio (TransformInfoInterface.getTemplateFilePath ((jio (AbTransformer.getTransformInfoInterface this))))))
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformInfoInterface.log ((jio (AbTransformer.getTransformInfoInterface this))))) this "setTemplateAsInputStream()")
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Template File isFile=" ++ javaToString (jio (AbFile.isFile file))) this "setTemplateAsInputStream()")
                        when (jio (AbFile.isFile file)) $ do
                            assignedValue <- (AbFileInputStream.new_1 file)
                            jset inputStream (assignedValue)
                            assignedValue <- (ByteArrayOutputStream.new_)
                            jset outputStream (assignedValue)
                            jset outputStream ((javaCast (jio (StreamUtil.get ((jget (this).streamUtil)) (javaCast (jget inputStream)) (javaCast (jget outputStream)) (jnewArray (16384) 0))) :: ByteArrayOutputStream.ByteArrayOutputStream))
                            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Template: " ++ (jio (ByteArrayOutputStream.toString ((jget outputStream))))) this "getTemplateAsInputStream()")
                            Control.Monad.void (AbTransformer.setInputStream this (javaCast (jio (ByteArrayInputStream.new_1 (jio (ByteArrayOutputStream.toByteArray ((jget outputStream)))))) :: InputStream.InputStream))
                            Control.Monad.void (AbTransformer.setURIResolver this (javaCast (jio (BasicUriResolver.new_1 (jget (transformInfoTemplateData).uNCRYPTED_EXTENSION))) :: URIResolver.URIResolver))
                            javaReturn (())
                else if ((Prelude.fromEnum (Prelude.compare extension (jget (transformInfoTemplateData).eNCRYPTED_EXTENSION)) - 1) == 0) then do
                    stringBuffer <- newIORef =<< (StringMaker.new_)
                    Control.Monad.void (StringMaker.append ((jget stringBuffer)) filePath)
                    Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
                    Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget (transformInfoTemplateData).eNCRYPTED_EXTENSION))
                    file <- (AbFile.createAbFile (jio (StringMaker.toString ((jget stringBuffer)))))
                    when (jio (AbFile.isFile file)) $ do
                        Control.Monad.void (BasicTransformer.setEncryptedTemplateFileAsInputStream this file)
                else do
                    javaThrow ((JavaException "Exception" ("View Template File Type Is Not Recognized: " ++ javaToString (jio (TransformInfoInterface.getTemplateFilePath ((jio (AbTransformer.getTransformInfoInterface this))))))))
            else do
                Control.Monad.void (BasicTransformer.setEncryptedTemplateAsInputStream this)
        javaThrow ((JavaException "Exception" "Error setTemplateAsInputStream()"))
    pure ()


