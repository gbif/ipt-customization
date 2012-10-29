# backup files of new IPT installation
cp -i ../webapps/ipt/WEB-INF/pages/inc/footer.ftl ../ipt-customization/backup-default/
cp -i ../webapps/ipt/WEB-INF/pages/inc/header_setup.ftl ../ipt-customization/backup-default/
cp -i ../webapps/ipt/WEB-INF/pages/inc/header.ftl ../ipt-customization/backup-default/
cp -i ../webapps/ipt/WEB-INF/pages/inc/menu.ftl ../ipt-customization/backup-default/
cp -i ../webapps/ipt/styles/main.css ../ipt-customization/backup-default/

# apply customization
cp footer.ftl ../webapps/ipt/WEB-INF/pages/inc/
cp header_setup.ftl ../webapps/ipt/WEB-INF/pages/inc/
cp header.ftl ../webapps/ipt/WEB-INF/pages/inc/
cp menu.ftl ../webapps/ipt/WEB-INF/pages/inc/
cp main.css ../webapps/ipt/styles/
cp custom.js ../webapps/ipt/js/