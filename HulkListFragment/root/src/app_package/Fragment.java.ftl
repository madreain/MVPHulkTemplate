package ${moduleName};

import android.os.Bundle;
import android.view.View;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.LinearLayoutManager;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.madreain.hulk.ui.BaseListFragment;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;

import ${packageName}.R;

import butterknife.BindView;

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */
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
