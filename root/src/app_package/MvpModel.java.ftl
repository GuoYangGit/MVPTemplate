package ${modelPackageName};

import ${contractPackageName}.${pageName}Contract;
import com.fqhy.cfb.app.base.MvpModel;
<#if needActivity && needFragment>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
<#elseif needActivity>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
<#elseif needFragment>
import com.fuqin.android.mastermvp.di.scope.FragmentScope;
</#if>
import javax.inject.Inject;

/**
 * 一键化构建mvp模版生成工具类
 * ${pageName}Model
 */

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Model extends MvpModel implements ${pageName}Contract.Model{
    @Inject
    public ${pageName}Model() {
    }
}