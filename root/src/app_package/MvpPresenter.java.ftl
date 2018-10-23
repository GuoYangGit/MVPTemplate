package ${presenterPackageName};

import ${contractPackageName}.${pageName}Contract;
import com.fqhy.cfb.app.base.MvpPresenter;
import javax.inject.Inject;
<#if needActivity && needFragment>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
<#elseif needActivity>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
<#elseif needFragment>
import com.fuqin.android.mastermvp.di.scope.FragmentScope;
</#if>

/**
 * 一键化构建mvp模版生成工具类
 * ${pageName}Presenter
 */

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Presenter extends MvpPresenter<${pageName}Contract.Model,${pageName}Contract.View>{
	
	@Inject
    public ${pageName}Presenter(${pageName}Contract.Model model, ${pageName}Contract.View view) {
        super(model, view);
    }
}
