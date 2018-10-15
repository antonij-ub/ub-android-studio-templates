package ${escapeKotlinIdentifiers(packageName)}.activities

import android.content.Context
import android.content.Intent
import android.os.Bundle
import ${applicationPackage}.R
import ${applicationPackage}.ui.base.activities.BaseActivity

<#if includeMVP>
import com.arellomobile.mvp.presenter.InjectPresenter
import ${escapeKotlinIdentifiers(packageName)}.presenters.${presenter} 
import ${escapeKotlinIdentifiers(packageName)}.views.${viewState} 
</#if>

class ${activity} : BaseActivity()<#if includeMVP>, ${viewState}</#if> {

<#if includeMVP>
    @InjectPresenter
    lateinit var presenter: ${presenter} 
</#if>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(<#if includeLayout>R.layout.${layout}</#if><#if !includeLayout>/*Set up your layout file*/</#if>)
    }

    companion object {

    	@JvmStatic
    	fun newInstance(context: Context): Intent {
    		val activity = Intent(context, ${activity}::class.java)
    		return activity
    	}
    }
}
