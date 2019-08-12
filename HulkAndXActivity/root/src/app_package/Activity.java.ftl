package ${moduleName};

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;

import com.alibaba.android.arouter.facade.annotation.Route;
import com.madreain.hulk.ui.BaseActivity;
import ${packageName}.R;
import ${packageName}.consts.ARouterUri;

import butterknife.BindView;

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */
@Route(path = ARouterUri.${activityClass}Activity)
public class ${activityClass}Activity extends BaseActivity<${activityClass}Presenter> implements ${activityClass}Contract.View{

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    @BindView(R.id.${layoutName})
    LinearLayout prelativeLayout;

    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }


    @Override
    public void init(Bundle savedInstanceState) {
        setSupportActionBarWithBack(toolbar);
        toolbar.setTitle("标题");
        //初始化
        presenter.onStart();
    }

    @Override
    public View getReplaceView() {
        return prelativeLayout;
    }
}
