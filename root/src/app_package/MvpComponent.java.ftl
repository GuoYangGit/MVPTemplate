package ${componentPackageName};

import ${modulePackageName}.${pageName}Module;
import com.fuqin.android.mastermvp.di.component.AppComponent;
<#if needActivity && needFragment>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
import ${ativityPackageName}.${pageName}Activity;
import ${fragmentPackageName}.${pageName}Fragment;
<#elseif needActivity>
import com.fuqin.android.mastermvp.di.scope.ActivityScope;
import ${ativityPackageName}.${pageName}Activity;
<#elseif needFragment>
import com.fuqin.android.mastermvp.di.scope.FragmentScope;
import ${fragmentPackageName}.${pageName}Fragment;
</#if>

import dagger.Component;

/**
 * 一键化构建mvp模版生成工具类
 * ${pageName}Component
 */
 
<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
@Component(modules = ${pageName}Module.class, dependencies = AppComponent.class)
public interface ${pageName}Component {
    <#if needActivity && needFragment>
    void inject(${pageName}Activity activity);
    void inject(${pageName}Fragment fragment);
  <#elseif needActivity || needFragment>
    void inject(<#if needFragment>${pageName}Fragment fragment<#else>${pageName}Activity activity</#if>);
  </#if>
}