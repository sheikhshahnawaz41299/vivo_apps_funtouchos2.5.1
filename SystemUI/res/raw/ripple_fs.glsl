varying vec2 varTex0;

vec2 addDrop(vec4 d, vec2 pos) {
	vec2 ret = vec2(0.0, 0.0);
	vec2 delta = d.xy - pos;
	float dist = length(delta);
	if (dist < d.w*0.75) {
		float amp = d.z * dist;
		amp /= d.w * d.w;
		amp*=sin(d.w-dist)*exp(0.02*(dist-d.w));
		ret = delta * amp;
		ret*=0.75;
	}
	if(dist <6.0){
	  ret *=0.01;
	  }
	return ret;
}

void main() {
	vec2 pos = ATTRIB_position.xy;
	gl_Position = vec4(pos.x, pos.y, 0.0, 1.0);
	varTex0 = vec2((pos.x + 1.0), (-pos.y + 1.0));
		varTex0.xy *= vec2(0.5, 0.5);
		varTex0.x += UNI_Offset.x * 0.5;
		pos.x += UNI_Offset.x * 2.0;
	pos.xy += vec2(1.0, 1.0);
	pos.xy *= vec2(25.0, 42.0);
	varTex0.xy += addDrop(UNI_Drop01, pos);
	varTex0.xy += addDrop(UNI_Drop02, pos);
	varTex0.xy += addDrop(UNI_Drop03, pos);
	varTex0.xy += addDrop(UNI_Drop04, pos);
	varTex0.xy += addDrop(UNI_Drop05, pos);
	varTex0.xy += addDrop(UNI_Drop06, pos);
	varTex0.xy += addDrop(UNI_Drop07, pos);
	varTex0.xy += addDrop(UNI_Drop08, pos);
	varTex0.xy += addDrop(UNI_Drop09, pos);
	varTex0.xy += addDrop(UNI_Drop10, pos);
	varTex0.xy += addDrop(UNI_Drop11, pos);
	varTex0.xy += addDrop(UNI_Drop12, pos);
	varTex0.xy += addDrop(UNI_Drop13, pos);
	varTex0.xy += addDrop(UNI_Drop14, pos);
	varTex0.xy += addDrop(UNI_Drop15, pos);
}