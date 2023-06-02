#!/bin/bash
# Parameter contains planet name on russian language
c=-1
case $1 in
	"Меркурий") c=0 ;;
	"Венера") c=0 ;;
	"Земля") c=8301 ;;
	"Марс") c=2 ;;
	"Юпитер") c=95 ;;
	"Сатурн") c=83 ;;
	"Уран") c=27 ;;
	"Нептун") c=14 ;;
	*) c=-1 ;;
esac
if [[ "$c" == -1 ]]; then
	echo "Планеты $1 не существует"
else
  echo "Количество спутников: $c"
fi