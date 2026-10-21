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
-- package admin.taghelpers
module MultipartRequestParamForwardHelper where

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
import qualified InventoryItemViewParentTagHelper -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified RequestMapInterface -- org.allbinary.logic.communication.http.request.RequestMapInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified HelperTag -- tags.HelperTag

data MultipartRequestParamForwardHelper = MultipartRequestParamForwardHelper
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , pageContext :: IORef (PageContext.PageContext)
    , requestMapInterface :: IORef (RequestMapInterface.RequestMapInterface)
    , page :: IORef (String)
    , command :: IORef (String)
    , paramVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull MultipartRequestParamForwardHelper where
    javaNull = javaNullRecord "MultipartRequestParamForwardHelper"

instance JavaEquals MultipartRequestParamForwardHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipartRequestParamForwardHelper where
    (==) = jrecordEquals

instance JavaObjectClass MultipartRequestParamForwardHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MultipartRequestParamForwardHelper
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    pageContext <- newIORef javaNull
    requestMapInterface <- newIORef javaNull
    page <- newIORef ""
    command <- newIORef ""
    paramVector <- newIORef javaNull
    let this = MultipartRequestParamForwardHelper header_ logUtil pageContext requestMapInterface page command paramVector
    jregisterLevel header_ this
    jregisterMethod header_ "forward" (\() -> forward_impl this)
    jregisterMethod header_ "getParams" (\() -> getParams_impl this)
    jregisterMethod header_ "shouldForward" (\() -> shouldForward_impl this)
    pure this

initFields_ :: MultipartRequestParamForwardHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.pageContext (javaNull)
    jset this.requestMapInterface (javaNull)
    jset this.page (javaNull)
    jset this.command (javaNull)
    jset this.paramVector (javaNull)
    pure ()

new_5 :: HelperTag.HelperTag -> String -> String -> BasicArrayList.BasicArrayList -> PageContext.PageContext -> IO MultipartRequestParamForwardHelper
new_5 parentHelperTag page command paramVector pageContext = do
    this <- newRecord_
    init_5 this parentHelperTag page command paramVector pageContext
    pure this

init_5 :: MultipartRequestParamForwardHelper -> HelperTag.HelperTag -> String -> String -> BasicArrayList.BasicArrayList -> PageContext.PageContext -> IO ()
init_5 this parentHelperTag page command paramVector pageContext = do
        initFields_ this
        jset (this).pageContext (pageContext)
        jset (this).page (page)
        jset (this).command (command)
        jset (this).paramVector (paramVector)
        assignedValue <- (InventoryItemViewParentTagHelper.getRequestMapInterface ((jio (InventoryItemViewParentTagHelper.getInstance))) parentHelperTag)
        jset (this).requestMapInterface (assignedValue)
        pure ()


-- throws Exception
forward :: (JavaObjectClass this_) => this_ -> IO (())
forward object_ = jmethod object_ "forward" (\() -> (forward_impl (javaCast object_ :: MultipartRequestParamForwardHelper))) ()

forward_super :: (JavaObjectClass this_) => this_ -> IO (())
forward_super object_ = (forward_impl (javaCast object_ :: MultipartRequestParamForwardHelper))

forward_impl :: MultipartRequestParamForwardHelper -> IO (())
forward_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "forward()" e)
            ) $ do
            when (jio (MultipartRequestParamForwardHelper.shouldForward this)) $ do
                params <- (MultipartRequestParamForwardHelper.getParams this)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).page))
                Control.Monad.void (StringMaker.append stringBuffer params)
                Control.Monad.void (PageContext.forward ((jget (this).pageContext)) (jio (StringMaker.toString stringBuffer)))
        pure ()


getParams :: (JavaObjectClass this_) => this_ -> IO (String)
getParams object_ = jmethod object_ "getParams" (\() -> (getParams_impl (javaCast object_ :: MultipartRequestParamForwardHelper))) ()

getParams_super :: (JavaObjectClass this_) => this_ -> IO (String)
getParams_super object_ = (getParams_impl (javaCast object_ :: MultipartRequestParamForwardHelper))

getParams_impl :: MultipartRequestParamForwardHelper -> IO (String)
getParams_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        let aMP = (jget (commonSeps).aMPERSAND)
        let qUESTION = (jget (commonSeps).qUESTION)
        let eQUALS = (jget (commonSeps).eQUALS)
        hashMap <- (RequestMapInterface.getRequestHashMap ((jget (this).requestMapInterface)))
        stringBuffer <- (StringMaker.new_)
        size <- (BasicArrayList.size ((jget (this).paramVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let key = (javaCast (jio (BasicArrayList.get ((jget (this).paramVector)) index)) :: String)
            let value = (javaCast (jio (HashMap.get hashMap key)) :: String)
            if (index /= 0) then do
                Control.Monad.void (StringMaker.append stringBuffer aMP)
            else do
                Control.Monad.void (StringMaker.append stringBuffer qUESTION)
            Control.Monad.void (StringMaker.append stringBuffer key)
            Control.Monad.void (StringMaker.append stringBuffer eQUALS)
            Control.Monad.void (StringMaker.append stringBuffer value)
        (StringMaker.toString stringBuffer)


shouldForward :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldForward object_ = jmethod object_ "shouldForward" (\() -> (shouldForward_impl (javaCast object_ :: MultipartRequestParamForwardHelper))) ()

shouldForward_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldForward_super object_ = (shouldForward_impl (javaCast object_ :: MultipartRequestParamForwardHelper))

shouldForward_impl :: MultipartRequestParamForwardHelper -> IO (Bool)
shouldForward_impl this = do
    javaCatchReturn $ do
        hashMap <- (RequestMapInterface.getRequestHashMap ((jget (this).requestMapInterface)))
        let requestCommand = (javaCast (jio (HashMap.get hashMap (GLOBALS2.aDMINCOMMAND))) :: String)
        when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).command))) || (((Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) requestCommand))) && ((Prelude.fromEnum (Prelude.compare (jget (this).command) requestCommand) - 1) == 0)))) $ do
            javaReturn (True)
        pure (False)


