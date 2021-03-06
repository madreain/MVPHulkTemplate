<?xml version="1.0"?>
<recipe>

<#if generateLayout>
    <instantiate from="root/src/app_package/Layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>
    <instantiate from="root/src/app_package/Item_Layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/item_${layoutName}.xml" />
    <instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Activity.java" />
    <instantiate from="root/src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Contract.java" />
    <instantiate from="root/src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Model.java" />
    <instantiate from="root/src/app_package/Module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Module.java" />
    <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Presenter.java" />
    <instantiate from="root/src/app_package/Adapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Adapter.java" />
    <instantiate from="root/src/app_package/JavaBean.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${javaBeanName}.java" />
    <merge from="root/src/app_package/AndroidManifest.xml.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/item_${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Module.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Contract.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Model.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Presenter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}ListRes.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Adapter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${activityClass}/${activityClass}Activity.java" />

</recipe>
