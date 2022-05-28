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

/**
 *  Listener for speech recognition events, used with RecognitionService.
 *  This gives you both the final recognition results, as well as various
 *  intermediate events that can be used to show visual feedback to the user.
 *  {@hide}
 */
 
 /**
 * 合成引擎结果回调接口
 */
oneway interface SynthesizerListener {
/**
*TTS播放进度通知，pos为进度值
*/
     void onProgressCallBack(in int pos);
     /**
     * 开始播放TTS结果音频通知
     */
     void onPlayBeginCallBack();
     /**
     * TTS结果音频播放完成回调，error为播放过程错误号
     */
     void onPlayCompletedCallBack(in int error);
     /**
     * TTS结果音频播放被打断（播放中调用stopSpeak）
     */
     void onInterruptedCallback();
     /**
     * TTS引擎初始化完毕
     */
     void onInit();
}
