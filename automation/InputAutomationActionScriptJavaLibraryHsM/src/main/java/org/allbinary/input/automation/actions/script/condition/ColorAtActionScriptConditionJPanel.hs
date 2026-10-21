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
-- package org.allbinary.input.automation.actions.script.condition
module ColorAtActionScriptConditionJPanel (module ColorAtActionScriptConditionJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, update, update_super, update_impl, getColorAtXJTextField, getColorAtXJTextField_super, getColorAtXJTextField_impl, setColorAtXJTextField, setColorAtXJTextField_super, setColorAtXJTextField_impl, getColorAtYJTextField, getColorAtYJTextField_super, getColorAtYJTextField_impl, setColorAtYJTextField, setColorAtYJTextField_super, setColorAtYJTextField_impl, getMaxBlueJTextField, getMaxBlueJTextField_super, getMaxBlueJTextField_impl, setMaxBlueJTextField, setMaxBlueJTextField_super, setMaxBlueJTextField_impl, getMaxGreenJTextField, getMaxGreenJTextField_super, getMaxGreenJTextField_impl, setMaxGreenJTextField, setMaxGreenJTextField_super, setMaxGreenJTextField_impl, getMaxRedJTextField, getMaxRedJTextField_super, getMaxRedJTextField_impl, setMaxRedJTextField, setMaxRedJTextField_super, setMaxRedJTextField_impl, getMinBlueJTextField, getMinBlueJTextField_super, getMinBlueJTextField_impl, setMinBlueJTextField, setMinBlueJTextField_super, setMinBlueJTextField_impl, getMinGreenJTextField, getMinGreenJTextField_super, getMinGreenJTextField_impl, setMinGreenJTextField, setMinGreenJTextField_super, setMinGreenJTextField_impl, getMinRedJTextField, getMinRedJTextField_super, getMinRedJTextField_impl, setMinRedJTextField, setMinRedJTextField_super, setMinRedJTextField_impl, getYJLabel, getYJLabel_super, getYJLabel_impl, setYJLabel, setYJLabel_super, setYJLabel_impl, getColorAtActionJDialog, getColorAtActionJDialog_super, getColorAtActionJDialog_impl, setColorAtActionJDialog, setColorAtActionJDialog_super, setColorAtActionJDialog_impl, initComponents, initComponents_super, initComponents_impl, okJButtonActionPerformed, okJButtonActionPerformed_super, okJButtonActionPerformed_impl, colorAtActionJButtonActionPerformed, colorAtActionJButtonActionPerformed_super, colorAtActionJButtonActionPerformed_impl, logUtil, commonStrings, colorAtActionScriptConditionInterface, blueJLabel, colorAtActionJButton, colorAtActionJDialog, colorAtXJTextField, colorAtYJTextField, colorRangeJLabel, greenJLabel, jLabel1, locationJLabel, maxBlueJTextField, maxGreenJTextField, maxJLabel, maxRedJTextField, minBlueJTextField, minGreenJTextField, minJLabel, minRedJTextField, okJButton, redJLabel, titleJLabel, xJLabel, yJLabel)
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
import qualified ColorAtActionScriptConditionInterface -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified ColorRangeInterface -- org.allbinary.media.image.analysis.ColorRangeInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JPanel

data ColorAtActionScriptConditionJPanel = ColorAtActionScriptConditionJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , colorAtActionScriptConditionInterface :: IORef (ColorAtActionScriptConditionInterface.ColorAtActionScriptConditionInterface)
    , blueJLabel :: IORef (JLabel.JLabel)
    , colorAtActionJButton :: IORef (JButton.JButton)
    , colorAtActionJDialog :: IORef (JDialog.JDialog)
    , colorAtXJTextField :: IORef (JTextField.JTextField)
    , colorAtYJTextField :: IORef (JTextField.JTextField)
    , colorRangeJLabel :: IORef (JLabel.JLabel)
    , greenJLabel :: IORef (JLabel.JLabel)
    , jLabel1 :: IORef (JLabel.JLabel)
    , locationJLabel :: IORef (JLabel.JLabel)
    , maxBlueJTextField :: IORef (JTextField.JTextField)
    , maxGreenJTextField :: IORef (JTextField.JTextField)
    , maxJLabel :: IORef (JLabel.JLabel)
    , maxRedJTextField :: IORef (JTextField.JTextField)
    , minBlueJTextField :: IORef (JTextField.JTextField)
    , minGreenJTextField :: IORef (JTextField.JTextField)
    , minJLabel :: IORef (JLabel.JLabel)
    , minRedJTextField :: IORef (JTextField.JTextField)
    , okJButton :: IORef (JButton.JButton)
    , redJLabel :: IORef (JLabel.JLabel)
    , titleJLabel :: IORef (JLabel.JLabel)
    , xJLabel :: IORef (JLabel.JLabel)
    , yJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull ColorAtActionScriptConditionJPanel where
    javaNull = javaNullRecord "ColorAtActionScriptConditionJPanel"

instance JavaEquals ColorAtActionScriptConditionJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorAtActionScriptConditionJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ColorAtActionScriptConditionJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorAtActionScriptConditionJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    colorAtActionScriptConditionInterface <- newIORef javaNull
    blueJLabel <- newIORef javaNull
    colorAtActionJButton <- newIORef javaNull
    colorAtActionJDialog <- newIORef javaNull
    colorAtXJTextField <- newIORef javaNull
    colorAtYJTextField <- newIORef javaNull
    colorRangeJLabel <- newIORef javaNull
    greenJLabel <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    locationJLabel <- newIORef javaNull
    maxBlueJTextField <- newIORef javaNull
    maxGreenJTextField <- newIORef javaNull
    maxJLabel <- newIORef javaNull
    maxRedJTextField <- newIORef javaNull
    minBlueJTextField <- newIORef javaNull
    minGreenJTextField <- newIORef javaNull
    minJLabel <- newIORef javaNull
    minRedJTextField <- newIORef javaNull
    okJButton <- newIORef javaNull
    redJLabel <- newIORef javaNull
    titleJLabel <- newIORef javaNull
    xJLabel <- newIORef javaNull
    yJLabel <- newIORef javaNull
    let this = ColorAtActionScriptConditionJPanel header_ base logUtil commonStrings colorAtActionScriptConditionInterface blueJLabel colorAtActionJButton colorAtActionJDialog colorAtXJTextField colorAtYJTextField colorRangeJLabel greenJLabel jLabel1 locationJLabel maxBlueJTextField maxGreenJTextField maxJLabel maxRedJTextField minBlueJTextField minGreenJTextField minJLabel minRedJTextField okJButton redJLabel titleJLabel xJLabel yJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getColorAtXJTextField" (\() -> getColorAtXJTextField_impl this)
    jregisterMethod header_ "setColorAtXJTextField" (\() -> setColorAtXJTextField_impl this)
    jregisterMethod header_ "getColorAtYJTextField" (\() -> getColorAtYJTextField_impl this)
    jregisterMethod header_ "setColorAtYJTextField" (\() -> setColorAtYJTextField_impl this)
    jregisterMethod header_ "getMaxBlueJTextField" (\() -> getMaxBlueJTextField_impl this)
    jregisterMethod header_ "setMaxBlueJTextField" (\() -> setMaxBlueJTextField_impl this)
    jregisterMethod header_ "getMaxGreenJTextField" (\() -> getMaxGreenJTextField_impl this)
    jregisterMethod header_ "setMaxGreenJTextField" (\() -> setMaxGreenJTextField_impl this)
    jregisterMethod header_ "getMaxRedJTextField" (\() -> getMaxRedJTextField_impl this)
    jregisterMethod header_ "setMaxRedJTextField" (\() -> setMaxRedJTextField_impl this)
    jregisterMethod header_ "getMinBlueJTextField" (\() -> getMinBlueJTextField_impl this)
    jregisterMethod header_ "setMinBlueJTextField" (\() -> setMinBlueJTextField_impl this)
    jregisterMethod header_ "getMinGreenJTextField" (\() -> getMinGreenJTextField_impl this)
    jregisterMethod header_ "setMinGreenJTextField" (\() -> setMinGreenJTextField_impl this)
    jregisterMethod header_ "getMinRedJTextField" (\() -> getMinRedJTextField_impl this)
    jregisterMethod header_ "setMinRedJTextField" (\() -> setMinRedJTextField_impl this)
    jregisterMethod header_ "getYJLabel" (\() -> getYJLabel_impl this)
    jregisterMethod header_ "setYJLabel" (\() -> setYJLabel_impl this)
    jregisterMethod header_ "getColorAtActionJDialog" (\() -> getColorAtActionJDialog_impl this)
    jregisterMethod header_ "setColorAtActionJDialog" (\() -> setColorAtActionJDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "okJButtonActionPerformed" (\() -> okJButtonActionPerformed_impl this)
    jregisterMethod header_ "colorAtActionJButtonActionPerformed" (\() -> colorAtActionJButtonActionPerformed_impl this)
    pure this

initFields_ :: ColorAtActionScriptConditionJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.colorAtActionScriptConditionInterface (javaNull)
    jset this.blueJLabel (javaNull)
    jset this.colorAtActionJButton (javaNull)
    jset this.colorAtActionJDialog (javaNull)
    jset this.colorAtXJTextField (javaNull)
    jset this.colorAtYJTextField (javaNull)
    jset this.colorRangeJLabel (javaNull)
    jset this.greenJLabel (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.locationJLabel (javaNull)
    jset this.maxBlueJTextField (javaNull)
    jset this.maxGreenJTextField (javaNull)
    jset this.maxJLabel (javaNull)
    jset this.maxRedJTextField (javaNull)
    jset this.minBlueJTextField (javaNull)
    jset this.minGreenJTextField (javaNull)
    jset this.minJLabel (javaNull)
    jset this.minRedJTextField (javaNull)
    jset this.okJButton (javaNull)
    jset this.redJLabel (javaNull)
    jset this.titleJLabel (javaNull)
    jset this.xJLabel (javaNull)
    jset this.yJLabel (javaNull)
    pure ()

new_1 :: ColorAtActionScriptConditionInterface.ColorAtActionScriptConditionInterface -> IO ColorAtActionScriptConditionJPanel
new_1 colorAtActionScriptConditionInterface = do
    this <- newRecord_
    init_1 this colorAtActionScriptConditionInterface
    pure this

init_1 :: ColorAtActionScriptConditionJPanel -> ColorAtActionScriptConditionInterface.ColorAtActionScriptConditionInterface -> IO ()
init_1 this colorAtActionScriptConditionInterface = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (ColorAtActionScriptConditionJPanel.initComponents this)
        jset (this).colorAtActionScriptConditionInterface (colorAtActionScriptConditionInterface)
        Control.Monad.void (ColorAtActionScriptConditionJPanel.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

set_impl :: ColorAtActionScriptConditionJPanel -> IO (())
set_impl this = do
        colorRangeInterface <- (ColorAtActionScriptConditionInterface.getColorRangeInterface ((jget (this).colorAtActionScriptConditionInterface)))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getMinRedJTextField this))) (javaToString (jio (ColorRangeInterface.getMinRed colorRangeInterface))))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getMaxRedJTextField this))) (javaToString (jio (ColorRangeInterface.getMaxRed colorRangeInterface))))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getMinGreenJTextField this))) (javaToString (jio (ColorRangeInterface.getMinGreen colorRangeInterface))))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getMaxGreenJTextField this))) (javaToString (jio (ColorRangeInterface.getMaxGreen colorRangeInterface))))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getMinBlueJTextField this))) (javaToString (jio (ColorRangeInterface.getMinBlue colorRangeInterface))))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getMaxBlueJTextField this))) (javaToString (jio (ColorRangeInterface.getMaxBlue colorRangeInterface))))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getColorAtXJTextField this))) (javaToString (jget ((jio (ColorAtActionScriptConditionInterface.getPoint ((jget (this).colorAtActionScriptConditionInterface))))).x)))
        Control.Monad.void (JTextField.setText ((jio (ColorAtActionScriptConditionJPanel.getColorAtYJTextField this))) (javaToString (jget ((jio (ColorAtActionScriptConditionInterface.getPoint ((jget (this).colorAtActionScriptConditionInterface))))).y)))
        Control.Monad.void (ColorAtActionScriptConditionInterface.log ((jget (this).colorAtActionScriptConditionInterface)))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

update_impl :: ColorAtActionScriptConditionJPanel -> IO (())
update_impl this = do
        colorRangeInterface <- (ColorAtActionScriptConditionInterface.getColorRangeInterface ((jget (this).colorAtActionScriptConditionInterface)))
        Control.Monad.void (ColorRangeInterface.setMinRed colorRangeInterface (javaToString (jio (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getMinRedJTextField this)))))))
        Control.Monad.void (ColorRangeInterface.setMaxRed colorRangeInterface (javaToString (jio (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getMaxRedJTextField this)))))))
        Control.Monad.void (ColorRangeInterface.setMinGreen colorRangeInterface (javaToString (jio (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getMinGreenJTextField this)))))))
        Control.Monad.void (ColorRangeInterface.setMaxGreen colorRangeInterface (javaToString (jio (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getMaxGreenJTextField this)))))))
        Control.Monad.void (ColorRangeInterface.setMinBlue colorRangeInterface (javaToString (jio (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getMinBlueJTextField this)))))))
        Control.Monad.void (ColorRangeInterface.setMaxBlue colorRangeInterface (javaToString (jio (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getMaxBlueJTextField this)))))))
        xString <- (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getColorAtXJTextField this))))
        when ((Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) xString))) && (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) xString))) $ do
            jset ((jio (ColorAtActionScriptConditionInterface.getPoint ((jget (this).colorAtActionScriptConditionInterface))))).x ((Prelude.read xString))
        yString <- (JTextField.getText ((jio (ColorAtActionScriptConditionJPanel.getColorAtYJTextField this))))
        when ((Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) yString))) && (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) yString))) $ do
            jset ((jio (ColorAtActionScriptConditionInterface.getPoint ((jget (this).colorAtActionScriptConditionInterface))))).y ((Prelude.read xString))
        Control.Monad.void (ColorAtActionScriptConditionInterface.log ((jget (this).colorAtActionScriptConditionInterface)))
        pure ()


getColorAtXJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getColorAtXJTextField object_ = jmethod object_ "getColorAtXJTextField" (\() -> (getColorAtXJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getColorAtXJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getColorAtXJTextField_super object_ = (getColorAtXJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getColorAtXJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getColorAtXJTextField_impl this = do
        pure ((jget (this).colorAtXJTextField))


setColorAtXJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setColorAtXJTextField object_ a1 = jmethod object_ "setColorAtXJTextField" (\() -> (setColorAtXJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setColorAtXJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setColorAtXJTextField_super object_ a1 = (setColorAtXJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setColorAtXJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setColorAtXJTextField_impl this colorAtXJTextField = do
        jset (this).colorAtXJTextField (colorAtXJTextField)
        pure ()


getColorAtYJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getColorAtYJTextField object_ = jmethod object_ "getColorAtYJTextField" (\() -> (getColorAtYJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getColorAtYJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getColorAtYJTextField_super object_ = (getColorAtYJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getColorAtYJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getColorAtYJTextField_impl this = do
        pure ((jget (this).colorAtYJTextField))


setColorAtYJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setColorAtYJTextField object_ a1 = jmethod object_ "setColorAtYJTextField" (\() -> (setColorAtYJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setColorAtYJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setColorAtYJTextField_super object_ a1 = (setColorAtYJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setColorAtYJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setColorAtYJTextField_impl this colorAtYJTextField = do
        jset (this).colorAtYJTextField (colorAtYJTextField)
        pure ()


getMaxBlueJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxBlueJTextField object_ = jmethod object_ "getMaxBlueJTextField" (\() -> (getMaxBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getMaxBlueJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxBlueJTextField_super object_ = (getMaxBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getMaxBlueJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getMaxBlueJTextField_impl this = do
        pure ((jget (this).maxBlueJTextField))


setMaxBlueJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxBlueJTextField object_ a1 = jmethod object_ "setMaxBlueJTextField" (\() -> (setMaxBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setMaxBlueJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxBlueJTextField_super object_ a1 = (setMaxBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setMaxBlueJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setMaxBlueJTextField_impl this maxBlueJTextField = do
        jset (this).maxBlueJTextField (maxBlueJTextField)
        pure ()


getMaxGreenJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxGreenJTextField object_ = jmethod object_ "getMaxGreenJTextField" (\() -> (getMaxGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getMaxGreenJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxGreenJTextField_super object_ = (getMaxGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getMaxGreenJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getMaxGreenJTextField_impl this = do
        pure ((jget (this).maxGreenJTextField))


setMaxGreenJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxGreenJTextField object_ a1 = jmethod object_ "setMaxGreenJTextField" (\() -> (setMaxGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setMaxGreenJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxGreenJTextField_super object_ a1 = (setMaxGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setMaxGreenJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setMaxGreenJTextField_impl this maxGreenJTextField = do
        jset (this).maxGreenJTextField (maxGreenJTextField)
        pure ()


getMaxRedJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxRedJTextField object_ = jmethod object_ "getMaxRedJTextField" (\() -> (getMaxRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getMaxRedJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMaxRedJTextField_super object_ = (getMaxRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getMaxRedJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getMaxRedJTextField_impl this = do
        pure ((jget (this).maxRedJTextField))


setMaxRedJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxRedJTextField object_ a1 = jmethod object_ "setMaxRedJTextField" (\() -> (setMaxRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setMaxRedJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMaxRedJTextField_super object_ a1 = (setMaxRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setMaxRedJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setMaxRedJTextField_impl this maxRedJTextField = do
        jset (this).maxRedJTextField (maxRedJTextField)
        pure ()


getMinBlueJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinBlueJTextField object_ = jmethod object_ "getMinBlueJTextField" (\() -> (getMinBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getMinBlueJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinBlueJTextField_super object_ = (getMinBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getMinBlueJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getMinBlueJTextField_impl this = do
        pure ((jget (this).minBlueJTextField))


setMinBlueJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinBlueJTextField object_ a1 = jmethod object_ "setMinBlueJTextField" (\() -> (setMinBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setMinBlueJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinBlueJTextField_super object_ a1 = (setMinBlueJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setMinBlueJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setMinBlueJTextField_impl this minBlueJTextField = do
        jset (this).minBlueJTextField (minBlueJTextField)
        pure ()


getMinGreenJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinGreenJTextField object_ = jmethod object_ "getMinGreenJTextField" (\() -> (getMinGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getMinGreenJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinGreenJTextField_super object_ = (getMinGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getMinGreenJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getMinGreenJTextField_impl this = do
        pure ((jget (this).minGreenJTextField))


setMinGreenJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinGreenJTextField object_ a1 = jmethod object_ "setMinGreenJTextField" (\() -> (setMinGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setMinGreenJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinGreenJTextField_super object_ a1 = (setMinGreenJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setMinGreenJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setMinGreenJTextField_impl this minGreenJTextField = do
        jset (this).minGreenJTextField (minGreenJTextField)
        pure ()


getMinRedJTextField :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinRedJTextField object_ = jmethod object_ "getMinRedJTextField" (\() -> (getMinRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getMinRedJTextField_super :: (JavaObjectClass this_) => this_ -> IO (JTextField.JTextField)
getMinRedJTextField_super object_ = (getMinRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getMinRedJTextField_impl :: ColorAtActionScriptConditionJPanel -> IO (JTextField.JTextField)
getMinRedJTextField_impl this = do
        pure ((jget (this).minRedJTextField))


setMinRedJTextField :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinRedJTextField object_ a1 = jmethod object_ "setMinRedJTextField" (\() -> (setMinRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setMinRedJTextField_super :: (JavaObjectClass this_) => this_ -> JTextField.JTextField -> IO (())
setMinRedJTextField_super object_ a1 = (setMinRedJTextField_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setMinRedJTextField_impl :: ColorAtActionScriptConditionJPanel -> JTextField.JTextField -> IO (())
setMinRedJTextField_impl this minRedJTextField = do
        jset (this).minRedJTextField (minRedJTextField)
        pure ()


getYJLabel :: (JavaObjectClass this_) => this_ -> IO (JLabel.JLabel)
getYJLabel object_ = jmethod object_ "getYJLabel" (\() -> (getYJLabel_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getYJLabel_super :: (JavaObjectClass this_) => this_ -> IO (JLabel.JLabel)
getYJLabel_super object_ = (getYJLabel_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getYJLabel_impl :: ColorAtActionScriptConditionJPanel -> IO (JLabel.JLabel)
getYJLabel_impl this = do
        pure ((jget (this).yJLabel))


setYJLabel :: (JavaObjectClass this_) => this_ -> JLabel.JLabel -> IO (())
setYJLabel object_ a1 = jmethod object_ "setYJLabel" (\() -> (setYJLabel_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setYJLabel_super :: (JavaObjectClass this_) => this_ -> JLabel.JLabel -> IO (())
setYJLabel_super object_ a1 = (setYJLabel_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setYJLabel_impl :: ColorAtActionScriptConditionJPanel -> JLabel.JLabel -> IO (())
setYJLabel_impl this yJLabel = do
        jset (this).yJLabel (yJLabel)
        pure ()


getColorAtActionJDialog :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getColorAtActionJDialog object_ = jmethod object_ "getColorAtActionJDialog" (\() -> (getColorAtActionJDialog_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

getColorAtActionJDialog_super :: (JavaObjectClass this_) => this_ -> IO (JDialog.JDialog)
getColorAtActionJDialog_super object_ = (getColorAtActionJDialog_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

getColorAtActionJDialog_impl :: ColorAtActionScriptConditionJPanel -> IO (JDialog.JDialog)
getColorAtActionJDialog_impl this = do
        pure ((jget (this).colorAtActionJDialog))


setColorAtActionJDialog :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setColorAtActionJDialog object_ a1 = jmethod object_ "setColorAtActionJDialog" (\() -> (setColorAtActionJDialog_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

setColorAtActionJDialog_super :: (JavaObjectClass this_) => this_ -> JDialog.JDialog -> IO (())
setColorAtActionJDialog_super object_ a1 = (setColorAtActionJDialog_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

setColorAtActionJDialog_impl :: ColorAtActionScriptConditionJPanel -> JDialog.JDialog -> IO (())
setColorAtActionJDialog_impl this colorAtActionJDialog = do
        jset (this).colorAtActionJDialog (colorAtActionJDialog)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))

initComponents_impl :: ColorAtActionScriptConditionJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).colorAtActionJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).titleJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).locationJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).colorAtXJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).xJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).yJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).colorAtYJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).colorRangeJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).redJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).minJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).maxJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).greenJLabel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).blueJLabel (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxRedJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxGreenJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minBlueJTextField (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).maxBlueJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).okJButton (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).minGreenJTextField (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).colorAtActionJButton (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).colorAtActionJDialog)) (jio (Dimension.new_2 350 250)))
        Control.Monad.void (JLabel.setText ((jget (this).titleJLabel)) "              Color At Action Options            ")
        Control.Monad.void (JLabel.setText ((jget (this).locationJLabel)) "Location:")
        Control.Monad.void (JLabel.setText ((jget (this).xJLabel)) "X:")
        Control.Monad.void (JLabel.setText ((jget (this).yJLabel)) "Y:")
        Control.Monad.void (JLabel.setText ((jget (this).colorRangeJLabel)) "Color Range")
        Control.Monad.void (JLabel.setText ((jget (this).redJLabel)) "Red:")
        Control.Monad.void (JLabel.setText ((jget (this).minJLabel)) "Minimum")
        Control.Monad.void (JLabel.setText ((jget (this).maxJLabel)) "Maximum")
        Control.Monad.void (JLabel.setText ((jget (this).greenJLabel)) "Green:")
        Control.Monad.void (JLabel.setText ((jget (this).blueJLabel)) "Blue:")
        Control.Monad.void (JButton.setText ((jget (this).okJButton)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).okJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        colorAtActionJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).colorAtActionJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).colorAtActionJDialog))))) colorAtActionJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup colorAtActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout)))))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.okJButton)))) (jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) False))) (jio (GroupLayout.addGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.blueJLabel)))) (jget this.greenJLabel)))) (jget this.redJLabel)))) (jget this.colorRangeJLabel)))))) 29 29 29))))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) (jget this.locationJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.xJLabel)))) 18 18 18))))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.minBlueJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 40 (Prelude.maxBound :: Int16)))) (jget this.minGreenJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 40 (Prelude.maxBound :: Int16)))) (jget this.minJLabel) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.minRedJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 40 (Prelude.maxBound :: Int16)))) (jget this.colorAtXJTextField) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 40 (Prelude.maxBound :: Int16)))))) 16 16 16))))))) 6 6 6))) (jget this.yJLabel)))) 24 24 24))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.maxJLabel) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) 1 1 1))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) False))) (jget this.maxBlueJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.maxRedJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 43 (Prelude.maxBound :: Int16)))) (jget this.maxGreenJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 43 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))) (jget this.colorAtYJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 44 (Prelude.maxBound :: Int16)))))) 22 22 22))))) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) (jget this.titleJLabel)))) 33 33 33)))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup colorAtActionJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout)))))) (jget this.titleJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) 15 15 15))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.xJLabel)))) (jget this.locationJLabel)))) (jget this.colorAtXJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.yJLabel)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.minJLabel)))) (jget this.colorRangeJLabel)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.minRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.redJLabel)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.greenJLabel)))) (jget this.minGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup colorAtActionJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.blueJLabel)))) (jget this.minBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 17 (Prelude.maxBound :: Int16)))) (jget this.okJButton)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup colorAtActionJDialogLayout))) 14 14 14))) (jget this.colorAtYJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.maxJLabel)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.maxRedJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.maxGreenJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.maxBlueJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))))))))
        Control.Monad.void (JPanel.setPreferredSize this (jio (Dimension.new_2 100 0)))
        Control.Monad.void (JButton.setText ((jget (this).colorAtActionJButton)) "Edit")
        Control.Monad.void (JButton.addActionListener ((jget (this).colorAtActionJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Color At:")
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.jLabel1)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 15 (Prelude.maxBound :: Int16)))) (jget this.colorAtActionJButton))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.jLabel1)))) (jget this.colorAtActionJButton))))))
        pure ()


okJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed object_ a1 = jmethod object_ "okJButtonActionPerformed" (\() -> (okJButtonActionPerformed_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

okJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_super object_ a1 = (okJButtonActionPerformed_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

okJButtonActionPerformed_impl :: ColorAtActionScriptConditionJPanel -> ActionEvent.ActionEvent -> IO (())
okJButtonActionPerformed_impl this evt = do
        Control.Monad.void (ColorAtActionScriptConditionJPanel.update this)
        Control.Monad.void (JDialog.setVisible ((jio (ColorAtActionScriptConditionJPanel.getColorAtActionJDialog this))) False)
        pure ()


colorAtActionJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
colorAtActionJButtonActionPerformed object_ a1 = jmethod object_ "colorAtActionJButtonActionPerformed" (\() -> (colorAtActionJButtonActionPerformed_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel))) () a1

colorAtActionJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
colorAtActionJButtonActionPerformed_super object_ a1 = (colorAtActionJButtonActionPerformed_impl (javaCast object_ :: ColorAtActionScriptConditionJPanel)) a1

colorAtActionJButtonActionPerformed_impl :: ColorAtActionScriptConditionJPanel -> ActionEvent.ActionEvent -> IO (())
colorAtActionJButtonActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible ((jio (ColorAtActionScriptConditionJPanel.getColorAtActionJDialog this))) True)
        pure ()


