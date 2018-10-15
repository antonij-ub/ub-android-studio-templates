<?xml version="1.0"?>
<globals>
    <#include "root://activities/common/common_globals.xml.ftl" />
    <#assign useSupport=appCompat>
    <global id="useSupport" type="boolean" value="${useSupport?string}" />
    <global id="SupportPackage" value="${useSupport?string('.support.v4','')}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="rootPackage" value="app/src/main/java/${slashedPackageName(applicationPackage)}" />

    <global id="activity" value="${underscoreToCamelCase(classToResource(moduleName))}Activity" />

    <global id="layout" value="activity_${classToResource(moduleName)}" />

    <global id="presenter" value="${underscoreToCamelCase(classToResource(moduleName))}Presenter" />
    <global id="viewState" value="${underscoreToCamelCase(classToResource(moduleName))}ViewState" />

    <global id="interactor" value="${underscoreToCamelCase(classToResource(moduleName))}Interactor" />
    <global id="repository" value="${underscoreToCamelCase(classToResource(moduleName))}Repository" />
    <global id="testRepository" value="Test${underscoreToCamelCase(classToResource(moduleName))}Repository" />
    <global id="interfaceRepository" value="I${underscoreToCamelCase(classToResource(moduleName))}Repository" />
    
    <global id="module" value="${underscoreToCamelCase(classToResource(moduleName))}Module" />
    <global id="subcomponent" value="${underscoreToCamelCase(classToResource(moduleName))}Subcomponent" />
    <global id="scope" value="${underscoreToCamelCase(classToResource(moduleName))}Scope" />
</globals>
