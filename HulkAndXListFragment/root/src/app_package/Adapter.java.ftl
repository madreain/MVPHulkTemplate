package ${moduleName};


import com.madreain.hulk.adapter.BaseAdapter;
import com.madreain.hulk.view.baseviewholder.HulkViewHolder;
import com.madreain.hulk.mvp.IView;

import ${packageName}.R;


import java.util.ArrayList;

import javax.inject.Inject;

/**
 * @author madreain
 * @date 2019/2/20.
 * module：
 * description：
 */
public class ${fragmentClass}Adapter<V extends IView> extends BaseAdapter<${javaBeanName},${fragmentClass}Fragment> {

    @Inject
    public ${fragmentClass}Adapter() {
        super(R.layout.item_${layoutName}, new ArrayList<${javaBeanName}>());
    }

    @Override
    protected void convert(HulkViewHolder helper, ${javaBeanName} data) {
        helper.setText(R.id.tv, "测试");
    }
}
