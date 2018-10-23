package ${ativityPackageName};

import com.fqhy.cfb.R;
import com.fqhy.cfb.app.base.MvpActivity;
import ${componentPackageName}.Dagger${pageName}Component;
import ${modulePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.fuqin.android.mastermvp.di.component.AppComponent;

/**
 * 一键化构建mvp模版生成工具类
 * ${pageName}Activity
 */
public class ${pageName}Activity extends MvpActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void initContentView() {

    }

    @Override
    public void initLoadData() {

    }

    @Override
    public boolean refreshLayout(SmartRefreshLayout refreshLayout) {
        return super.refreshLayout(refreshLayout);
    }

    @Override
    public void setupActivityComponent(AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${pageName}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }
}


