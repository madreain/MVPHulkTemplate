package ${moduleName};

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;

import com.madreain.hulk.ui.BaseFragment;
import ${packageName}.R;

import butterknife.BindView;

/**
 * @author madreain
 * @date
 * module：
 * description：
 */
public class ${fragmentClass}Fragment extends BaseFragment<${fragmentClass}Presenter> implements ${fragmentClass}Contract.View{

    @BindView(R.id.${layoutName})
    RelativeLayout prelativeLayout;

    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }


    @Override
    public void init(View view, Bundle savedInstanceState) {
        //初始化
        presenter.onStart();
    }

    @Override
    public View getReplaceView() {
        return prelativeLayout;
    }
}
