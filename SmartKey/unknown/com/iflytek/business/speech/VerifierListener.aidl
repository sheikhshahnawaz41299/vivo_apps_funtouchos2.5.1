package com.iflytek.business.speech;

import com.iflytek.business.speech.VerifierResult;
 
/**
 * 声纹引擎回调接口
 */
oneway interface VerifierListener {
	/**
	 * 声纹错误回调。	
	 * @param errorCode
	 */
	void onInit(int errorCode);
    	/**
	 * 录音音量回调。
	 * <p>
	 * @param volume 录音音量
	 */
	void onVolumeChanged(in int volume);

	/**
	 * 录音启动回调。
	 * <p>
	 * 说明：<br>
	 * 1、录音启动后调用此接口，表示用户可以进行音频输入，未调用此接口情况下，用户输入的音频数据无效，不会被服务端接收。
	 */
	void onBeginOfSpeech();

	/**
	 * 录音自动停止回调。
	 * <p>
	 * 说明：<br>
	 * 1、 SpeechVerify内集成了端点检测功能，当用户一定时间内不说话，默认为用户已经不需要再录入语音，
	 * 会自动调用此回调函数，并停止当前录音。(默认值为2s)。<br>
	 * 2、 目前版本的端点检测是由服务端完成，会有一定延迟，建议由用户手动控制。
	 */
	void onEndOfSpeech();

	/**
	 * 声纹注册结果回调。
	 * <p>
	 * 说明：<br>
	 * 1、 声纹注册时才会调用此接口，用来提示用户当前已经进行第几次密码输入，声纹确认和鉴别并不会调用此接口。<br>
	 * 2、此接口中回调信息，开发者只需要关注VerifyResult.suc和VerifyResult.rgn信息。
	 * 
	 * @param result
	 *            声纹注册的本次录音校验结果
	 */
	void onRegister(in VerifierResult result);

	/**
	 * 声纹服务结果回调。
	 * <p>
	 * 说明：<br>
	 * 1、本次会话完成，训练、确认或鉴别的结果请参考VerifyResult说明。
	 * 
	 * @param result
	 *            声纹服务的返回结果,发生错误时返回null
	 * @param error
	 *            请求成功返回null，否则返回错误对象，请参考SpeechError说明
	 */
	void onEnd(in VerifierResult result,in int error);

	/**
	 * 取消声纹。
	 * <p>
	 * 说明：<br>
	 * 1、取消本次声纹操作回调，表示会话结束。
	 */
	void onCancel();
	
	/**
	 * 声纹错误回调。	
	 * @param errorCode
	 */
	void onError(int errorCode);
}
