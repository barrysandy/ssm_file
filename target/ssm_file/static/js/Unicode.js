/*!
 * jQuery 字符串转unicode码
 * version: 1.0-2017.04.06
 */
function toUnicode(str) {
	var temp,
	i = 0,
	r = '',
	len = str.length;
	for (; i < len; i++) {
		temp = str.charCodeAt(i).toString(16);
	while ( temp.length < 4 )
		temp = '0' + temp;
		r += '\\u' + temp;
	};
	return r;
}
