﻿&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если НЕ РольДоступна("Админ") Тогда
		Элементы.ДатаФактическогоВыполнения.Доступность = Ложь;
	КонецЕсли;
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьТекущегоПользователя()
	Возврат РаботаСПользователями.ПолучитьТекущегоПользователя();
КонецФункции

&НаКлиенте
Процедура ПередВыполнением(Отказ)
	Объект.ДатаФактическогоВыполнения = ТекущаяДата();
	Объект.ФактическийИсполнитель = ПолучитьТекущегоПользователя();
КонецПроцедуры