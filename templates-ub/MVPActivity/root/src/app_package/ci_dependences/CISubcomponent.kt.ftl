package ${applicationPackage}.di.components

import ${applicationPackage}.di.modules.${module}
import ${applicationPackage}.di.scopes.${scope}
import ${escapeKotlinIdentifiers(packageName)}.presenters.${presenter}
import dagger.Subcomponent

@${scope}
@Subcomponent(modules = [${module}::class])
interface ${subcomponent} {
    fun inject(presenter: ${presenter})
}