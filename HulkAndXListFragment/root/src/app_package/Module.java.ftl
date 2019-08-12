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
public class ${fragmentClass}Module {

    @Provides
    ${fragmentClass}Contract.View getView(${fragmentClass}Fragment view) {
        return view;
    }


}
