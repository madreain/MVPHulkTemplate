<?xml version="1.0"?>
<recipe>

<#if generateLayout>
    <instantiate from="root/src/app_package/Layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Fragment.java" />
    <instantiate from="root/src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Contract.java" />
    <instantiate from="root/src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Model.java" />
    <instantiate from="root/src/app_package/Module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Module.java" />
    <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Presenter.java" />
    <instantiate from="root/src/app_package/JavaBean.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${javaBeanName}.java" />

    <open file="${escapeXmlAttribute(resOut)}/layout/item_${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Module.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Contract.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Model.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Presenter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${fragmentClass}/${fragmentClass}Fragment.java" />

</recipe>
