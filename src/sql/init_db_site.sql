
-- override site properties
REPLACE INTO core_datastore VALUES ('portal.site.site_property.name', 'Homeless Shelters of Baltimore');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.author', 'City of Baltimore');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.locale.default', 'en');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.copyright', 'Copyright &copyright; City of Baltimore');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.description', '<description>');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.meta.keywords', '<keywords>');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.email', 'lutece-dev@paris.fr');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.noreply_email', 'no-reply@paris.fr');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.home_url', 'jsp/site/Portal.jsp?page=shelters');
REPLACE INTO core_datastore VALUES ('portal.site.site_property.back_images', '\'images/admin/skin/bg_images1.jpg\',  \'images/admin/skin/bg_images2.jpg\' , \'images/admin/skin/bg_images3.jpg\'');

-- override plugin status
REPLACE INTO core_datastore VALUES ('core.plugins.status.html.installed' ,'truel' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.html.pool' ,'portal' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.shelters.installed' ,'true' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.shelters.pool' ,'portal' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.systeminfo.installed' ,'true' );
REPLACE INTO core_datastore VALUES ('core.plugins.status.rest.installed' ,'true' );


 
