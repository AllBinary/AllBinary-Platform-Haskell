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
-- package org.allbinary.logic.communication.smtp
module Email where

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
import qualified EmailData -- same package or java.lang
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified PrintStream -- java.io.PrintStream
import qualified HashMap -- java.util.HashMap
import qualified Properties -- java.util.Properties
import qualified Address -- javax.mail.Address
import qualified Authenticator -- javax.mail.Authenticator
import qualified Message -- javax.mail.Message
import qualified MessagingException -- javax.mail.MessagingException
import qualified Session -- javax.mail.Session
import qualified InternetAddress -- javax.mail.internet.InternetAddress
import qualified InternetHeaders -- javax.mail.internet.InternetHeaders
import qualified MimeBodyPart -- javax.mail.internet.MimeBodyPart
import qualified MimeMessage -- javax.mail.internet.MimeMessage
import qualified MimeMultipart -- javax.mail.internet.MimeMultipart
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified EmailInterface

-- implements EmailInterface
data Email = Email
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , msg :: IORef (MimeMessage.MimeMessage)
    , properties :: IORef (Properties.Properties)
    , bs :: IORef (ByteArrayOutputStream.ByteArrayOutputStream)
    , isDebug :: IORef (Bool)
    }

instance JavaNull Email where
    javaNull = javaNullRecord "Email"

instance JavaEquals Email where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Email where
    (==) = jrecordEquals

instance JavaObjectClass Email where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

dEBUG = "mail.debug"

sMTP_HOST = "mail.smtp.host"

sMTP_PORT = "mail.smtp.port"

sMTP_USER = "mail.smtp.user"

sMTP_RETURN_ADDRESS = "mail.from"

sMTP_LOCAL_HOST = "mail.smtp.localhost"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Email
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    msg <- newIORef javaNull
    properties <- newIORef javaNull
    bs <- newIORef javaNull
    isDebug <- newIORef False
    let this = Email header_ logUtil commonStrings msg properties bs isDebug
    jregisterLevel header_ this
    EmailInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getMimeMessage" (\() -> getMimeMessage_impl this)
    jregisterMethod header_ "getDebugInfo" (\() -> getDebugInfo_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    pure this

initFields_ :: Email -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.msg (javaNull)
    jset this.properties (javaNull)
    jset this.bs (javaNull)
    jset this.isDebug (False)
    pure ()

new_7 :: String -> String -> String -> String -> String -> String -> String -> IO Email
new_7 from to subject server textBody htmlAttachment contentBase = do
    this <- newRecord_
    init_7 this from to subject server textBody htmlAttachment contentBase
    pure this

init_7 :: Email -> String -> String -> String -> String -> String -> String -> String -> IO ()
init_7 this from to subject server textBody htmlAttachment contentBase = do
        initFields_ this
        jset (this).isDebug (False)
        Control.Monad.void (Email.init this from to subject server textBody htmlAttachment contentBase)
        pure ()

new_8 :: String -> String -> String -> String -> String -> String -> String -> Bool -> IO Email
new_8 from to subject server textBody htmlAttachment contentBase isDebug = do
    this <- newRecord_
    init_8 this from to subject server textBody htmlAttachment contentBase isDebug
    pure this

init_8 :: Email -> String -> String -> String -> String -> String -> String -> String -> Bool -> IO ()
init_8 this from to subject server textBody htmlAttachment contentBase isDebug = do
        initFields_ this
        jset (this).isDebug (isDebug)
        Control.Monad.void (Email.init this from to subject server textBody htmlAttachment contentBase)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> String -> String -> String -> String -> String -> String -> String -> IO (())
init object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Email))) () a1 a2 a3 a4 a5 a6 a7

init_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> String -> String -> String -> String -> IO (())
init_super object_ a1 a2 a3 a4 a5 a6 a7 = (init_impl (javaCast object_ :: Email)) a1 a2 a3 a4 a5 a6 a7

init_impl :: Email -> String -> String -> String -> String -> String -> String -> String -> IO (())
init_impl this from to subject server textBody htmlAttachment contentBase = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "emailConstructor" e)
            javaThrow (e)
            ) $ do
            stringValidationUtil <- (StringValidationUtil.getInstance)
            let mimeBodyParts = (jnewArray ((if (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil htmlAttachment))) then 2 else 1)) javaNull)
            assignedValue <- (MimeBodyPart.new_)
            jsetIndex mimeBodyParts (0) (assignedValue)
            Control.Monad.void (setText ((jindex mimeBodyParts (0))) textBody)
            when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil htmlAttachment))) $ do
                internetHeaders <- (InternetHeaders.new_)
                Control.Monad.void (InternetHeaders.addHeader internetHeaders "Content-Type" "text/html")
                when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil contentBase))) $ do
                    Control.Monad.void (InternetHeaders.addHeader internetHeaders "Content-Base" contentBase)
                assignedValue <- (MimeBodyPart.new_2 internetHeaders (jgetBytes htmlAttachment))
                jsetIndex mimeBodyParts (1) (assignedValue)
            Control.Monad.void (Email.init this server (javaCast javaNull :: Authenticator.Authenticator) (jarrayFromList [(jio (InternetAddress.new_1 from))]) (jarrayFromList [(jio (InternetAddress.new_1 to))]) (javaCast javaNull :: JavaArray (InternetAddress.InternetAddress)) (javaCast javaNull :: JavaArray (InternetAddress.InternetAddress)) subject mimeBodyParts)
        pure ()


-- throws MessagingException
-- Java overload of init with a different parameter count: give it a different name
init :: (JavaObjectClass this_) => this_ -> String -> Authenticator.Authenticator -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> String -> JavaArray (MimeBodyPart.MimeBodyPart) -> IO (())
init object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Email))) () a1 a2 a3 a4 a5 a6 a7 a8

init_super :: (JavaObjectClass this_) => this_ -> String -> Authenticator.Authenticator -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> String -> JavaArray (MimeBodyPart.MimeBodyPart) -> IO (())
init_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (init_impl (javaCast object_ :: Email)) a1 a2 a3 a4 a5 a6 a7 a8

init_impl :: Email -> String -> Authenticator.Authenticator -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> JavaArray (InternetAddress.InternetAddress) -> String -> JavaArray (MimeBodyPart.MimeBodyPart) -> IO (())
init_impl this server authenticator addresses_from addresses_to addresses_cc addresses_bcc subject mimeBodyParts = do
        assignedValue <- (Properties.new_)
        jset (this).properties (assignedValue)
        Control.Monad.void (Properties.put ((jget (this).properties)) (Email.sMTP_HOST) server)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Continuing on Exception: Unable to get HostName" this "init()" e)
            Control.Monad.void (Properties.put ((jget (this).properties)) (Email.sMTP_LOCAL_HOST) "FakeHostName")
            ) $ do
            let hostName = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
            when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) hostName)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Unable to get HostName so using fake" this "init()")
                Control.Monad.void (Properties.put ((jget (this).properties)) (Email.sMTP_LOCAL_HOST) "FakeHostName")
        when (jget (this).isDebug) $ do
            Control.Monad.void (Properties.put ((jget (this).properties)) (Email.dEBUG) "true")
        session <- (Session.getInstance (jget (this).properties) authenticator)
        when (jget (this).isDebug) $ do
            Control.Monad.void (Session.setDebug session True)
            assignedValue <- (ByteArrayOutputStream.new_)
            jset (this).bs (assignedValue)
            printStream <- (PrintStream.new_1 (jget (this).bs))
            Control.Monad.void (Session.setDebugOut session printStream)
        assignedValue <- (MimeMessage.new_1 session)
        jset (this).msg (assignedValue)
        Control.Monad.void (MimeMessage.addFrom ((jget (this).msg)) addresses_from)
        Control.Monad.void (MimeMessage.setRecipients ((jget (this).msg)) (jget (Message.recipientType).tO) addresses_to)
        Control.Monad.void (MimeMessage.setRecipients ((jget (this).msg)) (jget (Message.recipientType).cC) addresses_cc)
        Control.Monad.void (MimeMessage.setRecipients ((jget (this).msg)) (jget (Message.recipientType).bCC) addresses_bcc)
        Control.Monad.void (MimeMessage.setSubject ((jget (this).msg)) subject)
        mimeMultipart <- (MimeMultipart.new_)
        forM_ [0 .. (jlength mimeBodyParts) - 1] $ \i -> javaIteration (pure ()) $ do
            Control.Monad.void (MimeMultipart.addBodyPart mimeMultipart (jindex mimeBodyParts (i)))
        Control.Monad.void (MimeMessage.setContent ((jget (this).msg)) mimeMultipart)
        pure ()


getMimeMessage :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage object_ = jmethod object_ "getMimeMessage" (\() -> (getMimeMessage_impl (javaCast object_ :: Email))) ()

getMimeMessage_super :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage_super object_ = (getMimeMessage_impl (javaCast object_ :: Email))

getMimeMessage_impl :: Email -> IO (MimeMessage.MimeMessage)
getMimeMessage_impl this = do
        pure ((jget (this).msg))


getDebugInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo object_ = jmethod object_ "getDebugInfo" (\() -> (getDebugInfo_impl (javaCast object_ :: Email))) ()

getDebugInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo_super object_ = (getDebugInfo_impl (javaCast object_ :: Email))

getDebugInfo_impl :: Email -> IO (String)
getDebugInfo_impl this = do
    javaCatchReturn $ do
        if (jget (this).isDebug) then do
            javaReturn (("More Logging Before This To Standard Out: " ++ javaToString (jio (jnewString (jio (ByteArrayOutputStream.toString ((jget (this).bs))))))))
        else do
            javaReturn ("Debugging Is Off")


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: Email))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: Email))

log_impl :: Email -> IO (String)
log_impl this = do
        pure (("\nHashMap: " ++ (jio (HashMap.toString ((jio (Email.toHashMap this)))))))


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: Email))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: Email))

toHashMap_impl :: Email -> IO (HashMap.HashMap)
toHashMap_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "toHashMap()" e)
            javaThrow (e)
            ) $ do
            hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            Control.Monad.void (HashMap.put hashMap (EmailData.sERVER) (javaCast (jio (Properties.get ((jget (this).properties)) (Email.sMTP_HOST))) :: String))
            addresses <- newIORef =<< (MimeMessage.getFrom ((jget (this).msg)))
            when ((jget addresses) /= javaNull) $ do
                forM_ [0 .. (jlength (jget addresses)) - 1] $ \index -> javaIteration (pure ()) $ do
                    Control.Monad.void (HashMap.put hashMap (EmailData.fROM) (jio (toString ((jindex ((jget addresses)) (index))))))
            assignedValue <- (MimeMessage.getRecipients ((jget (this).msg)) (jget (Message.recipientType).tO))
            jset addresses (assignedValue)
            when ((jget addresses) /= javaNull) $ do
                forM_ [0 .. (jlength (jget addresses)) - 1] $ \index -> javaIteration (pure ()) $ do
                    Control.Monad.void (HashMap.put hashMap (EmailData.tO) (jio (toString ((jindex ((jget addresses)) (index))))))
            assignedValue <- (MimeMessage.getRecipients ((jget (this).msg)) (jget (Message.recipientType).cC))
            jset addresses (assignedValue)
            when ((jget addresses) /= javaNull) $ do
                forM_ [0 .. (jlength (jget addresses)) - 1] $ \index -> javaIteration (pure ()) $ do
                    Control.Monad.void (HashMap.put hashMap (EmailData.cC) (jio (toString ((jindex ((jget addresses)) (index))))))
            assignedValue <- (MimeMessage.getRecipients ((jget (this).msg)) (jget (Message.recipientType).bCC))
            jset addresses (assignedValue)
            when ((jget addresses) /= javaNull) $ do
                forM_ [0 .. (jlength (jget addresses)) - 1] $ \index -> javaIteration (pure ()) $ do
                    Control.Monad.void (HashMap.put hashMap (EmailData.bCC) (jio (toString ((jindex ((jget addresses)) (index))))))
            Control.Monad.void (HashMap.put hashMap (EmailData.sUBJECT) (jio (MimeMessage.getSubject ((jget (this).msg)))))
            let mimeMultipart = (javaCast (jio (MimeMessage.getContent ((jget this.msg)))) :: MimeMultipart.MimeMultipart)
            when (mimeMultipart /= javaNull) $ do
                forM_ [0 .. (jio (MimeMultipart.getCount mimeMultipart)) - 1] $ \index -> javaIteration (pure ()) $ do
                    let content = (javaCast (jio (MimeMultipart.getContent ((jio (MimeMultipart.getBodyPart mimeMultipart index))))) :: String)
                    Control.Monad.void (HashMap.put hashMap (EmailData.cONTENT) content)
            pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: Email))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: Email)) a1

toXmlNode_impl :: Email -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNameValueNodes document (EmailData.nAME) (jio (Email.toHashMap this)))
        pure (node)


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: Email))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: Email))

toXmlDoc_impl :: Email -> IO (Document.Document)
toXmlDoc_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))


