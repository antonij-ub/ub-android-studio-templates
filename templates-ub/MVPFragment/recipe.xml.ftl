<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>

    <!-- Include Activity file -->
    <instantiate from="src/app_package/MvpFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragments/${fragment}.kt" />

    <!-- Will open Activity file if true-->
    <#if openFragmentClass>
        <open file="${escapeXmlAttribute(srcOut)}/fragments/${fragment}.kt" />
    </#if>

    <!-- Include Layout file for Activity -->
    <#if includeLayout>
        <instantiate from="res/layout/fragment_layout.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${layout}.xml" />

        <#if openLayout>
            <open file="${escapeXmlAttribute(resOut)}/layout/${layout}.xml" />
        </#if>
    </#if>

    <!-- Include MVP files -->
    <#if includeMVP>
        <instantiate from="src/app_package/MvpPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenters/${presenter}.kt" />
        <instantiate from="src/app_package/MvpView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/views/${viewState}.kt" />

        <!-- Will open MVP files if true-->
        <#if openMVP>
            <open file="${escapeXmlAttribute(srcOut)}/presenters/${presenter}.kt" />
            <open file="${escapeXmlAttribute(srcOut)}/views/${viewState}.kt" />
        </#if>
    </#if>

    <!-- Include CI files -->
    <#if includeCI>
        <!-- Include CI dependences -->
        <instantiate from="src/app_package/ci_dependences/CIModule.kt.ftl"
                   to="${escapeXmlAttribute(rootPackage)}/di/modules/${module}.kt" />
        <instantiate from="src/app_package/ci_dependences/CIScope.kt.ftl"
                   to="${escapeXmlAttribute(rootPackage)}/di/scopes/${scope}.kt" />
        <instantiate from="src/app_package/ci_dependences/CISubcomponent.kt.ftl"
                   to="${escapeXmlAttribute(rootPackage)}/di/components/${subcomponent}.kt" />

        <!-- Will open DI files if true-->
        <#if openDI>
            <open file="${escapeXmlAttribute(rootPackage)}/di/modules/${module}.kt" />
            <open file="${escapeXmlAttribute(rootPackage)}/di/scopes/${scope}.kt" />
            <open file="${escapeXmlAttribute(rootPackage)}/di/components/${subcomponent}.kt" />
        </#if>

        <!-- Include CI files -->
        <instantiate from="src/app_package/Interactor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/interactors/${interactor}.kt" />
        <instantiate from="src/app_package/IRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/repositories/${interfaceRepository}.kt" />
        <instantiate from="src/app_package/Repository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/repositories/${repository}.kt" />
        <instantiate from="src/app_package/TestRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/repositories/${testRepository}.kt" />

        <!-- Will open CI files if true-->
        <#if openCI>
            <open file="${escapeXmlAttribute(srcOut)}/interactors/${interactor}.kt" />
            <open file="${escapeXmlAttribute(srcOut)}/repositories/${interfaceRepository}.kt" />
            <open file="${escapeXmlAttribute(srcOut)}/repositories/${repository}.kt" />
            <open file="${escapeXmlAttribute(srcOut)}/repositories/${testRepository}.kt" />
        </#if>
    </#if>

</recipe>
