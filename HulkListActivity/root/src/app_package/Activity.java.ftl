package ${moduleName};

import android.os.Bundle;
import android.view.View;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.LinearLayoutManager;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.madreain.hulk.ui.BaseListActivity;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;

import ${packageName}.R;

import butterknife.BindView;

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */
public class ${activityClass}Activity extends BaseListActivity<${activityClass}Presenter,${activityClass}Adapter<${activityClass}Activity>,${javaBeanName}> implements ${activityClass}Contract.View{

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    @BindView(R.id.smartRefreshLayout)
    SmartRefreshLayout smartRefreshLayout;
    @BindView(R.id.recyclerView)
    RecyclerView recyclerView;

    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }


    @Override
    public void _init(Bundle savedInstanceState) {
        setSupportActionBarWithBack(toolbar);
        toolbar.setTitle("标题");
        presenter.onStart();
    }

    @Override
     public void loadPageListData(int pageNo) {
         presenter.loadPageListData(pageNo);
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
         return new LinearLayoutManager(this);
     }

     @Override
     public View getReplaceView() {
         return smartRefreshLayout;
     }

}
