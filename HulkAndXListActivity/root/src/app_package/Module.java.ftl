package ${moduleName};

import dagger.Module;
import dagger.Provides;

/**
 * @author madreain
 * @date 2019/2/20.
 * module：
 * description：
 */

@Module
public class ${activityClass}Module {

    @Provides
    ${activityClass}Contract.View getView(${activityClass}Activity view) {
        return view;
    }


}
