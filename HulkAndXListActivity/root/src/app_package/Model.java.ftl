package ${moduleName};

import ${packageName}.module.api.ApiService;
import com.madreain.hulk.mvp.BaseRes;
import com.madreain.hulk.mvp.BaseModel;

import java.util.List;

import javax.inject.Inject;

import io.reactivex.Flowable;

/**
 * @author madreain
 * @date 2019/2/20.
 * module：
 * description：
 */
public class ${activityClass}Model extends BaseModel<ApiService> implements ${activityClass}Contract.Model {

    @Inject
    public ${activityClass}Model() {
        super();
    }

    @Override
    public Flowable<BaseRes<List<${javaBeanName}>>> loadListDatas(int pageNo) {
       return null;//接口调用 apiService.xxx
    }
}
