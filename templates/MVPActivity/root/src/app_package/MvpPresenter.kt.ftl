package ${escapeKotlinIdentifiers(packageName)}.presenters

import com.arellomobile.mvp.InjectViewState
import ${applicationPackage}.BaseApplication
import ${applicationPackage}.ui.base.presenters.BasePresenter
import ${escapeKotlinIdentifiers(packageName)}.views.${viewState}

<#if includeCI>
import javax.inject.Inject
import ${escapeKotlinIdentifiers(packageName)}.interactors.${interactor}
</#if>

@InjectViewState
class ${presenter} : BasePresenter<${viewState}>() {

<#if includeCI>
    @Inject
    lateinit var interactor: ${interactor}

    init {
        BaseApplication.get${subcomponent}().inject(this)
    }

    override fun onDestroy() {
        super.onDestroy()
        BaseApplication.remove${subcomponent}()
    }

</#if>
}
