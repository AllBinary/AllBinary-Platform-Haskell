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
-- package views.admin.user
module EditValidationUserView (module EditValidationUserView, module UserView) where

import UserView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil, userName)
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
import qualified UserInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified UserName -- org.allbinary.business.user.username.UserName
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified UserView

-- implements ValidationComponentInterface
data EditValidationUserView = EditValidationUserView
    { header_ :: JavaHeader
    , base :: UserView.UserView
    , logUtil :: IORef (LogUtil.LogUtil)
    , userName :: IORef (String)
    }

instance JavaNull EditValidationUserView where
    javaNull = javaNullRecord "EditValidationUserView"

instance JavaEquals EditValidationUserView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EditValidationUserView where
    (==) = jrecordEquals

instance JavaObjectClass EditValidationUserView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EditValidationUserView
newRecord_ = do
    base <- UserView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    userName <- newIORef ""
    let this = EditValidationUserView header_ base logUtil userName
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: EditValidationUserView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userName (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO EditValidationUserView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: EditValidationUserView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        UserView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let httpServletRequest = (javaCast (jio (PageContext.getRequest ((jio (UserView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest)
        hashMap <- (RequestParams.toHashMap ((jio (RequestParams.new_1 httpServletRequest))))
        assignedValue <- (UserName.get ((jio (UserName.new_1 hashMap))))
        jset (this).userName (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: EditValidationUserView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: EditValidationUserView))

isValid_impl :: EditValidationUserView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            if ((jio (UserName.isValid ((jio (UserName.getInstance))) (jget (this).userName))) == True) then do
                assignedValue <- (UserEntity.getUser ((jio (UserEntityFactory.getInstance))) (jget (this).userName))
                jset (this).base.user (assignedValue)
                when ((jget (this).base.user) == javaNull) $ do
                    javaReturn (False)
            else do
                javaReturn (False)
            (UserInterface.isValid ((jget (this).base.user)))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: EditValidationUserView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: EditValidationUserView))

validationInfo_impl :: EditValidationUserView -> IO (String)
validationInfo_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            if ((jio (UserName.isValid ((jio (UserName.getInstance))) (jget (this).userName))) == True) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "User Name is valid" this "validationInfo()")
                assignedValue <- (UserEntity.getUser ((jio (UserEntityFactory.getInstance))) (jget (this).userName))
                jset (this).base.user (assignedValue)
                when ((jget (this).base.user) == javaNull) $ do
                    Control.Monad.void (StringMaker.append stringBuffer "User does not exist.<br />")
                    javaReturn =<< (StringMaker.toString stringBuffer)
            else do
                Control.Monad.void (StringMaker.append stringBuffer "User Name is not valid.<br />")
                javaReturn =<< (StringMaker.toString stringBuffer)
            when ((jio (UserInterface.isValid ((jget (this).base.user)))) == False) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "User exists but is invalid - Probably manually modified" this "validationInfo()")
                Control.Monad.void (StringMaker.append stringBuffer "User data is not valid - Please call administrator.<br />")
                Control.Monad.void (StringMaker.append stringBuffer (jio (UserInterface.validationInfo ((jget (this).base.user)))))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: EditValidationUserView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: EditValidationUserView))

toValidationInfoDoc_impl :: EditValidationUserView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: EditValidationUserView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: EditValidationUserView)) a1

toValidationInfoNode_impl :: EditValidationUserView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


