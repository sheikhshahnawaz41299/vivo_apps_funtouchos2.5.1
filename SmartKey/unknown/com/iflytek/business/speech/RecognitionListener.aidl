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
import com.iflytek.business.speech.RecognizerResult;

/**
 *  Listener for speech recognition events, used with RecognitionService.
 *  This gives you both the final recognition results, as well as various
 *  intermediate events that can be used to show visual feedback to the user.
 *  {@hide}
 */
 
 /**
 * 识别引擎结果回调接口
 */
oneway interface RecognitionListener {
	/**
 	* 语法操作结果。更新词典调用会触发此回调。<p>
 	* @param type 引擎类型<br/>
 	* -SpeechIntent.ENGINE_LOCAL（本地）。<br/>
 	* -SpeechIntent.ENGINE_WEB（在线）。<br/>
 	* @param lexiconname 词典名称 <br/>
 	* @param errorCode：错误码,具体参考SpeechError。
 	* 
	 */
	void onGrammarResult(int type, String lexiconname, int errorCode);
	/**
	 * 识别引擎初始化完毕。
	 */
	void onInit();
	/**
 	* 开始录音。<p>
 	* 1、录音启动后调用此接口，表示用户可以进行音频输入，未调用此接口情况下，用户输入的音频数据无效，不会被服务端接收。
 	*/
	void onRecordStart();
	/**
	 * 检测到语音前端点(引擎检测到用户已经开始说话了)。
	 */
	void onSpeechStart();
	/**
	 * 检测到语音后端点(引擎检测到用户已经说完了)。
 	*/
	void onSpeechEnd();
	/**
 	* 停止录音。<p>
 	* 当用户一定时间内不说话，默认为用户已经不需要再录入语音，会自动调用此回调函数，并停止当前录音。(默认值为2s)。<br/>
 	* 或者在外部调用了endRecognize()接口时会触发。<br/>
 	*/
	void onRecordEnd();
	/**
 	* 返回当前输入语音的音量。value为音量大小描述（取值范围为0~29，值越大语音能量越大）
 	*/
	void onVolumeGet(int value);
	/**
 	* 当识别过程出错，触发此回调<p>
 	* @param error 错误码，具体可以查阅SpeechError
 	*/
	void onError(int error);
	/**
 	* 当识别结果产生，触发此回调<p>
 	* @param result 识别结果，格式参考RecognizerResult说明
 	*/
	void onResult(in RecognizerResult result);
	/**
	 * 当识别场景为听写的时候，触发此回调。<br/>
	 * 当用户每说完一小段文本后，立即返回对应的转写结果。<p>
	 * @param result 听写结果，格式参考RecognizerResult说明
	 */
    void onPartialResult(in RecognizerResult result);
    /**
	 * 识别结束回调。<p>
	 * @param Intent 回调结果，包含部分会话过程的信息。<br/>
	 * 			1. SpeechIntent.UPLOAD_FLOW	上行流量；<br/>
	 * 			返回单次会话所用上行流量。<br/>
	 * 			2. SpeechIntent.DOWDLOAD_FLOW	下行流量；<br/>
	 * 			返回单次会话所有下行流量。<br/>
 	* 
 	*/
    void onEnd(in Intent intent);
}
