
	var gMap = new Object();
	var gMapOptions = new Object();
	gMap.reasons=[];
	gMap.reasons['ErrorMessage']           = 'Google Maps API не может обнаружить данное местоположение.';
	if (typeof google != 'undefined') {		// i.e. GoogleMaps code has loaded OK
		gMap.types=[-1,google.maps.MapTypeId.ROADMAP, google.maps.MapTypeId.SATELLITE, google.maps.MapTypeId.HYBRID, google.maps.MapTypeId.TERRAIN];

//		gMap.reasons[G_GEO_MISSING_ADDRESS]    = 'Отсутствие адреса: Адрес отсутствует или имеет неправильные значения координат.';
		gMap.reasons[google.maps.GeocoderStatus.ZERO_RESULTS]    = 'Неизвестный адрес: Для данного адреса нет соответствующего географического местоположения.';
//		gMap.reasons[G_GEO_UNAVAILABLE_ADDRESS]= 'Недоступный адрес: Координаты для данного адреса не могут быть возвращены из-за юридических проблем.';
		gMap.reasons[google.maps.GeocoderStatus.INVALID_REQUEST]            = 'Неправильный ключ: API ключ ошибочный, или не соответстует домену, который их выдает.';
		gMap.reasons[google.maps.GeocoderStatus.OVER_QUERY_LIMIT]   = 'Слишком много запросов: Дневная квота по запросу координат превышена.';
		gMap.reasons[google.maps.GeocoderStatus.REQUEST_DENIED]       = 'Ошибка сервера: Запрос на координаты не может быть обработан.';
	} else {
		alert('Failed to load Google Maps API - check Internet connection !!');
	}
	gMap.typeDefault=1;
