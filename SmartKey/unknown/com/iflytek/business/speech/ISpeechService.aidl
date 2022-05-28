/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.iflytek.business.speech;

import android.os.Bundle;
import android.content.Intent;
import com.iflytek.business.speech.RecognitionListener; 
import com.iflytek.business.speech.SynthesizerListener;
import com.iflytek.business.speech.VerifierListener;
/**
* A Service interface to speech recognition. Call startListening when
* you want to begin capturing audio; RecognitionService will automatically
* determine when the user has finished speaking, stream the audio to the
* recognition servers, and notify you when results are ready. In most of the cases, 
* this class should not be used directly, instead use {@link SpeechRecognizer} for
* accessing recognition service. 
* {@hide}
*/
interface ISpeechService {
    /**
     * Starts listening for speech. Please note that the recognition service supports
     * one listener only, therefore, if this function is called from two different threads,
     * only the latest one will get the notifications
     *
     * @param recognizerIntent the intent from which the invocation occurred. Additionally,
     *        this intent can contain extra parameters to manipulate the behavior of the recognition
     *        client. For more information see {@link RecognizerIntent}.
     * @param listener to receive callbacks, note that this must be non-null
     */
     
    /**
     * setup service.
     * 
     */
    void initService(in Intent params);
  
    /**
     * Text to speech.
     * 
     */
    void speak(in String text, in Intent params);
    
    /**
     * TTS is speaking.
     */
    boolean isSpeaking();
    /**
     * Stop TTS speak.
     */
    int stopSpeak();

	/**
	* start recognize with intent input
	*/
	void startRecognize(in Intent i);
	
	/**
	* end of recognize
	*/
	void endRecognize();
	
	/**
	* stop recognizing
	*/
	void stopRecognize();

	/**
	* init synthesizer engine
	* listener, synthesizer listener
	* packageName, client package name
	* resFile, if use Aisound engine, this argument could be used to specify resource file
	*/
	void initSynthesizerEngine(SynthesizerListener listener, in Intent intent);
	
	/**
	* init recognition engine
	* listener, recognition listener
	*/
	void initRecognitionEngine(RecognitionListener listener, in Intent intent);
	/**
	* init SpeakerVerifier engine
	* listener, verifier listener
	*/
	
	void initSpeakerVerifier(VerifierListener listener, in Intent intent);
	
	
	/**
	* start ivp with intent input
	*/
	void startIvp(in Intent i);
	/**
	* stop ivp
	*/
	void stopIvp();
	/**
	* end of Ivp
	*/
	void endIvp();
	/**
	* update lexicon
	*/
	void updateLexicon(in Intent intent);
	
	
	/**
	* text search
	*/
	void searchText(in Intent intent);
	
	/**
	* get all user name
	*/
	String[] getAllUser();
	/**
	* delete user by special name
	*/
	boolean delUserByName(in String[] names);
	/**
	* start ivw enroll with intent input
	*/
	void startEnroll(in Intent i);
	/**
	* merge resource or delete resource
	*/
	boolean updateWakeRes(in Intent intent);
	/**
	* query Wake Resource
	*/
	String[] queryWakeRe(in Intent intent);
}
