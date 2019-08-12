package ${moduleName};

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;

import com.alibaba.android.arouter.facade.annotation.Route;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.madreain.hulk.ui.BaseListFragment;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;

import ${packageName}.R;
import ${packageName}.consts.ARouterUri;

import butterknife.BindView;

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */
@Route(path = ARouterUri.${fragmentClass}Fragment)
public class ${fragmentClass}Fragment extends BaseListFragment<${fragmentClass}Presenter,${fragmentClass}Adapter<${fragmentClass}Fragment>,${javaBeanName}> implements ${fragmentClass}Contract.View{

    @BindView(R.id.smartRefreshLayout)
    SmartRefreshLayout smartRefreshLayout;
    @BindView(R.id.recyclerView)
    RecyclerView recyclerView;

    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }


    @Override
    public void _init(View view, Bundle savedInstanceState) {
        presenter.onStart();
    }

    @Override
     public void loadPageListData(int pageNo) {
         //presenter.loadPageListData(pageNo);
     }

     @Override
     public SmartRefreshLayout getSmartRefreshLayout() {
         return smartRefreshLayout;
     }


     @Override
     public RecyclerView getRecyclerView() {
         return recyclerView;
     }

     @Override
     public RecyclerView.LayoutManager getLayoutManager() {
         return new LinearLayoutManager(getContext());
     }

     @Override
     public View getReplaceView() {
         return smartRefreshLayout;
     }

}
