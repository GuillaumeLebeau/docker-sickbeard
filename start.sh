#! /bin/sh

cd /sickbeard
if [ -f /volumes/config/config.ini ]
then
	rm -rf /sickbeard/config.ini
	rm -rf /sickbeard/sickbeard.db
#	rm -rf /sickbeard/autoprocesstv/autoProcessTV.cfg
else
	mv -f /sickbeard/config.ini /volumes/config/config.ini
	mv -f /sickbeard/sickbeard.db /volumes/config/sickbeard.db
#	mv -f /sickbeard/autoprocesstv/autoProcessTV.cfg /volumes/config/autoProcessTV.cfg
fi
ln -sf /volumes/config/config.ini /sickbeard/
ln -sf /volumes/config/sickbeard.db /sickbeard/sickbeard.db
#ln -sf /volumess/config/autoProcessTV.cfg sickbeard/autoprocesstv/autoProcessTV.cfg

exec /usr/bin/python SickBeard.py
