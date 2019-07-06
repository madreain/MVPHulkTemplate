package ${moduleName};

import com.madreain.hulk.mvp.BaseRes;
import com.madreain.hulk.mvp.IModel;
import com.madreain.hulk.mvp.IListView;


import java.util.List;

import io.reactivex.Flowable;

/**
 * @author madreain
 * @date 2019/2/20.
 * module：
 * description：
 */
public interface ${fragmentClass}Contract {
    interface View extends IListView<${javaBeanName}> {
    }

    interface Model extends IModel {
        Flowable<BaseRes<List<${javaBeanName}>>> loadListDatas(int pageNo);
    }
}
