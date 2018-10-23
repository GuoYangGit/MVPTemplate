package ${modulePackageName};

import ${contractPackageName}.${pageName}Contract;
import ${modelPackageName}.${pageName}Model;
<#if needActivity && needFragment>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
<#elseif needActivity>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
<#elseif needFragment>
import com.fuqin.android.mastermvp.di.scope.FragmentScope;
</#if>

import dagger.Module;
import dagger.Provides;

/**
 * 一键化构建mvp模版生成工具类
 * ${pageName}Module
 */

@Module
public class ${pageName}Module {

    private ${pageName}Contract.View mView;

    public ${pageName}Module(${pageName}Contract.View view) {
        mView = view;
    }

    <#if needActivity && needFragment>
    @ActivityScope
    <#elseif needActivity>
    @ActivityScope
    <#elseif needFragment>
    @FragmentScope
    </#if>
    @Provides
    public ${pageName}Contract.View provideView() {
        return mView;
    }

    <#if needActivity && needFragment>
    @ActivityScope
    <#elseif needActivity>
    @ActivityScope
    <#elseif needFragment>
    @FragmentScope
    </#if>
    @Provides
    public ${pageName}Contract.Model provideModel(${pageName}Model model) {
        return model;
    }
}