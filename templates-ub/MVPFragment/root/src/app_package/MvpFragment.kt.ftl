package ${escapeKotlinIdentifiers(packageName)}.activities

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R
import ${applicationPackage}.ui.base.fragments.BaseFragment

<#if includeMVP>
import com.arellomobile.mvp.presenter.InjectPresenter
import ${escapeKotlinIdentifiers(packageName)}.presenters.${presenter} 
import ${escapeKotlinIdentifiers(packageName)}.views.${viewState} 
</#if>

class ${fragment} : BaseFragment()<#if includeMVP>, ${viewState}</#if> {

<#if includeMVP>
    @InjectPresenter
    lateinit var presenter: ${presenter} 
</#if>

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = inflater.inflate(R.layout.${layout}, container, false)
        return view
    }

    companion object {

    	@JvmStatic
        fun newInstance(): ${fragment} {
            val fragment = ${fragment}()
            val args = Bundle()
            fragment.arguments = args
            return fragment
        }
    }
}
